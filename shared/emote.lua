-- :: REE Emotes
--  : Constructs the plugin Emote table

Emote = { }

function Emote.RemoveWeapon(ped) REE.Lib.Entity.PedRemoveHeldWeapon(ped) end

function Emote.Play(emoteName, now)
    local ped   = GetPlayerPed(PlayerId())
    local emote = FindEmoteByNameOrAlias(emoteName)

    -- remove their weapon and stop previous animation
    REE.Lib.Anim.PedStopEmote(ped, now)
    Emote.RemoveWeapon(ped)

    -- start the scenario
    REE.Lib.Anim.PedPlayEmote(ped, emote, now)
end

function Emote.Stop(ped) REE.Lib.Anim.PedStopEmote(ped) end

function Emote.StopNow(ped) REE.Lib.Anim.PedStopEmote(ped, true) end

function Emote.PlayNow(emoteName) Emote.Play(emoteName, true) end
