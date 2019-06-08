-- :: REE Emotes - Globals
--  : Allows players to play and stop emotes
--

REEData = nil

-- load REE instance data
Citizen.CreateThread(function()
    TriggerEvent("ree:getInstance", function(_REE) REEData = _REE.Data end)
    while REEData == nil do Citizen.Wait(50) end
end)
