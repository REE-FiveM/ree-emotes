-- :: REE Emotes
--  : Server script for the plugin
--

-- print loading messages
Citizen.CreateThread(function()
    function logMsg(msg) Citizen.Trace("[ree-emotes] " .. msg .. "\n") end
    function tableSize(table)
        local n = 0
        for _, _ in pairs(table) do n = n + 1 end
        return n
    end

    logMsg("Starting plugin...")

    -- wait for REE instance to load
    while REE == nil do Citizen.Wait(25) end

    -- count the emotes and aliases
    local emoteCount = tableSize(REE.Data.Emotes)
    local aliasCount = tableSize(EmoteAliases)

    -- notify we're done
    logMsg("Plugin is ready (" .. emoteCount .. " emotes and " .. aliasCount .. " aliases available!)")
    Citizen.Wait(1)
end)
