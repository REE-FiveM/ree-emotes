-- :: REE Emotes - Commands
--  : Player commands that players can use to control emotes
--

-- /e :: play an emote
RegisterCommand('e', function(_, argList)
    local emote = GetEmoteAlias(argList[1])
    if REEData.Emotes[emote] ~= nil then
        TriggerEvent("ree-emotes:play", emote)
    else
        TriggerEvent("chatMessage", "~r~Unrecognized emote: " .. emote or "(not provided)")
    end
end)

-- /e! :: play an emote immediately
RegisterCommand('e!', function(_, argList)
    local emote = GetEmoteAlias(argList[1])
    if REEData.Emotes[emote] ~= nil then
        TriggerEvent("ree-emotes:playNow", emote)
    else
        TriggerEvent("chatMessage", "~r~Unrecognized emote:" .. emote or "(not provided)")
    end
end)

-- /ce :: cancel emote
RegisterCommand('ce', function() TriggerEvent("ree-emotes:stop") end)

-- /ce! :: cancel emote immediately
RegisterCommand('ce!', function() TriggerEvent("ree-emotes:stopNow") end)
