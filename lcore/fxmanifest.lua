fx_version 'cerulean'
games { 'gta5' }

author "Hugo 'LH_Lawliet' Rustenholz"
description 'A ressource that make everything that I need'
version '0.0.1'

lua54 'yes'

dependency "yarn"

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
    'debug/shared.lua',
    'utils/shared.lua',
    'config/label.lua',
}

client_scripts {
    'config/client.lua',
    'config/vehicleList.lua',

    'utils/client.lua',
    
    'anticheat/client.lua',

    'ui/menu.lua',
    'ui/blip.lua',
    'ui/notification.lua',

    'debug/client.lua',

    'ped/client.lua',

    'player/client.lua',
    'spawn/client.lua',
    'weather/client.lua',
    'vehicle/client.lua',

    'map/ipl.lua',
}

server_scripts {
    'config/server.lua',

    'crypto/bcrypt.js',
    'crypto/connector.lua',

    'database/mysql.js',
    'database/connector.lua',
    'utils/server.lua',
    'anticheat/server.lua',

    'debug/server.lua',

    'weather/server.lua',

    'player/server.lua',
    'player/connection.lua',
}


