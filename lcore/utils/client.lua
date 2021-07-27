function utils:registerControlKey(action, description, defaultKey, callback)
    RegisterKeyMapping(action, description, 'keyboard', defaultKey)
	RegisterCommand(action, function()
		callback()
    end, false)
end
