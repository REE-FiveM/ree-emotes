resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'
description 'REE Emotes'
version '0.1.0'

client_scripts {
    'shared/_globals.lua',
    'shared/aliases.lua',
    'shared/emote.lua',

    'client/events.lua',
    'client/commands.lua',
}

server_scripts {
    'shared/_globals.lua',
    'shared/aliases.lua',
    'shared/emote.lua',

    'server/emotes.lua',
}

dependencies {
    'ree-core',
}

