fx_version 'adamant'

game 'gta5'
name 'f4LqNotify'
author 'f4Lq'
description 'Notification'
version '1.3'

ui_page 'html/ui.html'

client_scripts {
	'client.lua',
}

server_scripts {
	'server.lua',
}

files {
	'html/*.*'
}

export 'Alert'