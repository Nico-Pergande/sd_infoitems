fx_version 'cerulean'
games { 'gta5' }

author 'nico-pergande.dev'
description ''
version '0.0.1'

client_scripts {
  'config.lua',
  'client/clmain.lua'
}

server_scripts {
  '@async/async.lua',
  "@mysql-async/lib/MySQL.lua",
  'config.lua',
  'server/svmain.lua'
}

ui_page "ui/index.html"

files {
    'ui/index.html',
    'ui/index.js',
    'ui/index.css',
    'ui/data/*.pdf',
}
