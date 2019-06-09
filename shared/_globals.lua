-- :: REE Emotes - Globals
--  : Allows players to play and stop emotes
--

REE = nil

-- load REE instance data
TriggerEvent("ree:getInstance", function(_REE) REE = _REE end)
while REE == nil do Citizen.Wait(25) end
