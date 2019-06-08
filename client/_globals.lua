-- :: REE Emotes - Globals
--  : Allows players to play and stop emotes
--

--
-- load REE instance data
--
REE = nil
Citizen.CreateThread(function()
    TriggerEvent("ree:getInstance", function(_REE) REE = _REE end)

    while REE == nil do
        Citizen.Wait(50)
    end
end)


--
-- construct Emote
--
Emote = { isPlaying = false }

function Emote.RemoveWeapon(ped)
    if IsPedArmed(ped, 7) then
        -- If the player is holding weapon, remove it
        SetCurrentPedWeapon(ped, GetHashKey('WEAPON_UNARMED'), true)
    end
end

function Emote.Stop(ped)
    ClearPedTasks(ped)
end

function Emote.StopNow(ped)
    ClearPedTasksImmediately(ped)
end

function Emote.Play(emoteName, now)
    local ped = GetPlayerPed(PlayerId())

    if Emote.isPlaying == true then
        if now then
            Emote.StopNow(ped)
        else
            Emote.Stop(ped)
        end
    end

    -- make sure to remove their weapon
    Emote.RemoveWeapon(ped)
    Emote.isPlaying = true

    -- start the scenario
    TaskStartScenarioInPlace(ped, REE.Data.Emotes[emoteName], 0, true)
end

function Emote.PlayNow(emoteName)
    Emote.Play(emoteName, true)
end
