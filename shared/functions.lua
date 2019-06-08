-- :: REE Emotes
--  : Shared functions for the plugin
--

-- resolving the user alias to a native emote name
function GetEmoteAlias(alias) return EmoteAliases[alias] end

-- look up an emote by its alias or raw REE constants
function FindEmoteByNameOrAlias(userEmote)
    local emote = GetEmoteAlias(userEmote)
    local foundEmote

    for key, _ in pairs(REE.Data.Emotes) do
        if foundEmote ~= nil then break end
        if emote == key or userEmote == key then foundEmote = key end
    end

    return foundEmote
end
