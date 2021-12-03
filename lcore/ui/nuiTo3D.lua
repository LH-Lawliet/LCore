nuiTo3D = {
    current = {}
}


local function DegToRad(deg)
    return deg * math.pi / 180.0;
end

local function AddVector3(vector1, vector2)
    return vector3(vector1.x + vector2.x, vector1.y + vector2.y, vector1.z + vector2.z);
end

local function SubVector3(vector1, vector2)
    return vector3(vector1.x - vector2.x, vector1.y - vector2.y, vector1.z - vector2.z);
end

local function MulVector3(vector1, value)
    return vector3(vector1.x * value, vector1.y * value, vector1.z * value);
end



local function RotationToDirection(rotation)
    z = DegToRad(rotation.z);
    x = DegToRad(rotation.x);
    num = math.abs(math.cos(x));
    return vector3(-math.sin(z) * num, math.cos(z) * num, math.sin(x))
end


local function ProcessCoordinates(x, y)
    local screenX,screenY= GetScreenActiveResolution();

    local relativeX = (1 - ((x / screenX) * 1.0) * 2);
    local relativeY = (1 - ((y / screenY) * 1.0) * 2);

    if (relativeX > 0.0) then
        relativeX = -relativeX;
    else
        relativeX = math.abs(relativeX);
    end

    if (relativeY > 0.0) then
        relativeY = -relativeY;
    else
        relativeY = math.abs(relativeY);
    end

    return  vector2(relativeX, relativeY);
end



local function WorldToScreen(coords)
    local retval, world3dToScreen2dX,world3dToScreen2dY = GetScreenCoordFromWorldCoord(coords.x, coords.y, coords.z);
    local result =  vector2(world3dToScreen2dX, world3dToScreen2dY);

    if (result.x == -1 and result.y == -1) then
        return false;
    end

    return vector3((result.x - 0.5) * 2, (result.y - 0.5) * 2, 0);
end



local function ScreenToWorld(cursor)
    local relative = ProcessCoordinates(cursor.x, cursor.y);

    local vector1 = MulVector3(nuiTo3D.current.camera.forward, 10.0)
    local vector2 = AddVector3(nuiTo3D.current.camera.coords, vector1)
    local vector3 = AddVector3(vector2,nuiTo3D.current.camera.rightRoll)
    local point3D = AddVector3(vector3,nuiTo3D.current.camera.upRoll);



    local point2D = WorldToScreen(point3D);
    if (point2D == false) then
        return AddVector3(nuiTo3D.current.camera.coords, MulVector3(nuiTo3D.current.camera.forward, 10.0))
    end

    local point3DZero = AddVector3(nuiTo3D.current.camera.coords, MulVector3(nuiTo3D.current.camera.forward, 10.0));
    local point2DZero = WorldToScreen(point3DZero);


    if (point2DZero == false) then
        return AddVector3(nuiTo3D.current.camera.coords, MulVector3(nuiTo3D.current.camera.forward, 10.0));
    end

    local eps = 0.001;
    if (math.abs(point2D.x - point2DZero.x) < eps or math.abs(point2D.y - point2DZero.y) < eps) then
        return AddVector3(nuiTo3D.current.camera.coords, MulVector3(nuiTo3D.current.camera.forward, 10.0));
    end

    local scaleX = (relative.x - point2DZero.x) / (point2D.x - point2DZero.x);
    local scaleY = (relative.y - point2DZero.y) / (point2D.y - point2DZero.y);
    local point3Dret = AddVector3(
        AddVector3(
            AddVector3(nuiTo3D.current.camera.coords, MulVector3(nuiTo3D.current.camera.forward, 10.0)),
            MulVector3(nuiTo3D.current.camera.rightRoll, scaleX)
        ),
        MulVector3(nuiTo3D.current.camera.upRoll, scaleY));

    return point3Dret;
end




local function Screen2dToWorld3d(cursor, flag)
    local target = ScreenToWorld(cursor);
    local dir = SubVector3(target, nuiTo3D.current.camera.coords);
    local from = AddVector3(nuiTo3D.current.camera.coords, MulVector3(dir, 0.0));
    local to = AddVector3(nuiTo3D.current.camera.coords, MulVector3(dir, 300));

    local rayHandle = StartShapeTestRay(from.x, from.y, from.z, to.x, to.y, to.z, flag, -1, 0);
    local a,b,c,d,e,f,g = GetRaycastResult(rayHandle);
    return {coords = c, entity = e};
end



local function GetCameraProperty()
    local rotationUp = AddVector3(nuiTo3D.current.camera.rotation, vector3(10, 0, 0));
    local rotationDown = AddVector3(nuiTo3D.current.camera.rotation, vector3(-10, 0, 0));
    local rotationLeft = AddVector3(nuiTo3D.current.camera.rotation, vector3(0, 0, -10));
    local rotationRight = AddVector3(nuiTo3D.current.camera.rotation, vector3(0, 0, 10));

    local cameraRight = SubVector3(RotationToDirection(rotationRight), RotationToDirection(rotationLeft));
    local cameraUp = SubVector3(RotationToDirection(rotationUp), RotationToDirection(rotationDown));
    local rollRad = -DegToRad(nuiTo3D.current.camera.rotation.y);

    nuiTo3D.current.camera.rightRoll = SubVector3(MulVector3(cameraRight, math.cos(rollRad)), MulVector3(cameraUp, math.sin(rollRad)));
    nuiTo3D.current.camera.upRoll = AddVector3(MulVector3(cameraRight, math.sin(rollRad)), MulVector3(cameraUp, math.cos(rollRad)));
end




function nuiTo3D:StartNuiTo3D(type)
    if nuiTo3D.current == {} or true then
        PlaySound(-1, 'FocusIn', 'HintCamSounds', 0, 0, 1)
        nuiTo3D.current.camera = {}
        nuiTo3D.current.camera.initCoords = GetGameplayCamCoords()
        nuiTo3D.current.camera.rotation = GetGameplayCamRot_2(0)
        nuiTo3D.current.camera.fov = GetGameplayCamFov()
        nuiTo3D.current.camera.forward = RotationToDirection(nuiTo3D.current.camera.rotation);

        nuiTo3D.current.camera.id = CreateCam('DEFAULT_SCRIPTED_CAMERA', 1);

        local pedCoords = GetEntityCoords(myPed:GetPlayerPed(), false)
        nuiTo3D.current.camera.offsetCoords = {
            x = nuiTo3D.current.camera.initCoords.x-pedCoords.x,
            y = nuiTo3D.current.camera.initCoords.y-pedCoords.y,
            z = nuiTo3D.current.camera.initCoords.z-pedCoords.z
        }

        nuiTo3D.current.camera.coords = {
            x = nuiTo3D.current.camera.offsetCoords.x+pedCoords.x,
            y = nuiTo3D.current.camera.offsetCoords.y+pedCoords.y,
            z = nuiTo3D.current.camera.offsetCoords.z+pedCoords.z
        }

        SetCamCoord(nuiTo3D.current.camera.id, nuiTo3D.current.camera.coords.x, nuiTo3D.current.camera.coords.y, nuiTo3D.current.camera.coords.z)
        SetCamFov(nuiTo3D.current.camera.id, nuiTo3D.current.camera.fov)
        SetCamRot(nuiTo3D.current.camera.id, nuiTo3D.current.camera.rotation.x, nuiTo3D.current.camera.rotation.y, nuiTo3D.current.camera.rotation.z, 2)
        RenderScriptCams(1, 0, 0, 1, 1)
        GetCameraProperty()

        local ped = myPed.ped

        while nuiTo3D.current ~= {} and nuiTo3D.current.camera ~= {} do
            SetMouseCursorActiveThisFrame()
            utils:disableSpecificControls("mouse")

            --DisableAllControlActions(0)
            if (nuiTo3D.current.camera.id) then

                local pedCoords = GetEntityCoords(myPed:GetPlayerPed(), false)

                nuiTo3D.current.camera.coords = {
                    x = nuiTo3D.current.camera.offsetCoords.x+pedCoords.x,
                    y = nuiTo3D.current.camera.offsetCoords.y+pedCoords.y,
                    z = nuiTo3D.current.camera.offsetCoords.z+pedCoords.z
                }
                SetCamCoord(nuiTo3D.current.camera.id, nuiTo3D.current.camera.coords.x, nuiTo3D.current.camera.coords.y, nuiTo3D.current.camera.coords.z)


                local x,y = GetNuiCursorPosition()
                cursor =  vector2(x,y)
                local result = Screen2dToWorld3d(cursor, -1)
                if (result.entity ~= 0 and (not type or (GetEntityType(entity) == type))) then
                    SetEntityAlpha(result.entity, 51, false)
                    if IsDisabledControlJustReleased(2, 24) or IsControlJustReleased(2, 24) then -- attack
                        self:StopNuiTo3D()
                        PlaySound(-1, 'FocusOut', 'HintCamSounds', 0, 0, 1);           
                        ResetEntityAlpha(result.entity)
                        return result.coords,result.entity
                    end
                    Wait(0)
                    ResetEntityAlpha(result.entity)
                end
                if IsDisabledControlJustReleased(2, 25) or IsControlJustReleased(2, 25) then -- aim
                    self:StopNuiTo3D()
                    PlaySound(-1, 'FocusOut', 'HintCamSounds', 0, 0, 1);
                    return false
                end
                if result.entity == 0 then
                    Wait(0)
                end
            else
                Wait(0)
            end
        end
    end
    return false
end


function nuiTo3D:StopNuiTo3D()
    DestroyCam(nuiTo3D.current.camera.id, false);
    nuiTo3D.current = {};

    RenderScriptCams(0, 0, 1, 1, 1);

    DisplayRadar(true);
    --PlaySound(-1, 'FocusOut', 'HintCamSounds', 0, 0, 1);
end