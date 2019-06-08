-- :: REE Emotes - Events
--  : These are registered events that can be used by other plugins
--

AddEventHandler("ree-emotes:getInstance",
                function(cb) cb(Emotes) end)

AddEventHandler("ree-emotes:removeWeapon",
                function() Emote.RemoveWeapon(GetPlayerPed(PlayerId())) end)

AddEventHandler("ree-emotes:stop",
                function() Emote.Stop(GetPlayerPed(PlayerId())) end)

AddEventHandler("ree-emotes:stopNow",
                function() Emote.StopNow(GetPlayerPed(PlayerId())) end)

AddEventHandler("ree-emotes:play",
                function(emoteName) Emote.Play(emoteName) end)

AddEventHandler("ree-emotes:playNow",
                function(emoteName) Emote.Play(emoteName) end)

