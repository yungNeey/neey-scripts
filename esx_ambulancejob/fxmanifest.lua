fx_version 'bodacious'
lua54 'yes'
game 'gta5'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'client/main.lua',
}

dependencies {
	'es_extended',
	'esx_vehicleshop'
}

exports {
	'getDeathStatus',
	'OpenMobileAmbulanceActionsMenu'
}