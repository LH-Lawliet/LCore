fx_version 'cerulean'
games { 'gta5' }

author "Hugo 'LH_Lawliet' Rustenholz"
description 'A ressource that make everything that I need'
version '0.0.1'

lua54 'yes'


-- specify the root page, relative to the resource
ui_page 'ui/react/build/index.html'

-- every client-side file still needs to be added to the resource packfile!
files {
    'ui/react/build/**/**/*',
    'ui/react/build/**/*',
    'ui/react/build/*'
}

shared_scripts {
    'config/shared.lua',
    'utils/shared.lua',
    'debug/shared.lua',
}

client_scripts {
    'config/client.lua',
    'config/label.lua',

    'utils/client.lua',

    'ui/menu.lua',
    'ui/notification.lua',

    'debug/client.lua',

    'vehicle/client.lua',

    'player/client.lua',
    'spawn/client.lua'
}

server_scripts {
    'debug/server.lua',

    'player/server.lua',
}


