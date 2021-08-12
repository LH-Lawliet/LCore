blipHandler = {}
blipHandler.__index = blipHandler

function blipHandler:create(data)
    local blip = {}
    setmetatable(blip, blipHandler)
    if not data.pos then
        debug:print("could'nt add a blip without coords")
        return false
    end

    blip.pos = data.pos
    blip.sprite = data.sprite or 1 -- see https://docs.fivem.net/docs/game-references/blips/
    blip.color = data.color or 0 -- see https://docs.fivem.net/docs/game-references/blips/
    blip.alpha = data.alpha or 255
    blip.scale = data.scale or 1.0
    data.shortRange = not blip.longRange
    blip.bright = data.bright
    blip.display = data.display or 2 -- see https://docs.fivem.net/natives/?_0x9029B2F3DA924928
    blip.text = data.text
    blip.disabled = data.disabled
    if not blip.disabled then
        blip:show()
    end

    return blip
end


function blipHandler:show()
    self.id = AddBlipForCoord(self.pos.x, self.pos.y, self.pos.z)
    SetBlipSprite(self.id, self.sprite)
    SetBlipColour(self.id, self.color)
    SetBlipScale(self.id, self.scale)
    SetBlipAlpha(self.id, self.alpha)
    SetBlipAsShortRange(self.id, self.shortRange)
    SetBlipBright(self.id, self.bright)
    SetBlipDisplay(self.id, self.display)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(self.text)
    EndTextCommandSetBlipName(self.id)
end
