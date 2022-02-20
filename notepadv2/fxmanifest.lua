fx_version 'cerulean'
game 'gta5'

ui_page 'html/index.html'

files {
    'html/**'
}

shared_script '@es_extended/imports.lua'

client_scripts {
    'config.lua',
    'client/main.lua',
}

server_scripts {
    'config.lua',
    'server/main.lua',
}
