fx_version "adamant"

game "gta5"

loadscreen_manual_shutdown('yes')

shared_scripts {
    'init/shared/init.lua',
    'players/society/sh_*.lua',
    --"players/doorlock/config.lua",
    "players/skinchanger/config.lua",
    "players/blackmarket/shared/shared_blackmarket.lua",
    "players/radars/config.lua"
}

client_scripts {
    -- RAGEUI
    'RageUI/RMenu.lua',
    'RageUI/menu/RageUI.lua',
    'RageUI/menu/Menu.lua',
    'RageUI/menu/MenuController.lua',
    'RageUI/components/*.lua',
    'RageUI/menu/elements/*.lua',
    'RageUI/menu/items/*.lua',
    'RageUI/menu/panels/*.lua',
    'RageUI/menu/windows/*.lua',
    
	'RageUIv2/RMenu.lua',
    'RageUIv2/menu/RageUI.lua',
    'RageUIv2/menu/Menu.lua',
    'RageUIv2/menu/MenuController.lua',
    'RageUIv2/components/*.lua',
    'RageUIv2/menu/elements/*.lua',
    'RageUIv2/menu/items/*.lua',
    'RageUIv2/menu/panels/*.lua',
    'RageUIv2/menu/windows/*.lua',

    "system/spawnmanager/client/main.lua",
    "system/hardcap/client/main.lua",

    '@mFramework/locale.lua',
    "fr.lua",
    "init/client/*.lua",
    "blips.lua",
    "functions/client.lua",
    "esx/addons_gcphone/client/main.lua",
    "esx/service/client/main.lua",
    "esx/instance/client/main.lua",
    "esx/status/config.lua",
    "esx/status/client/*.lua",
    "esx/status/client/classes/*.lua",
    "markers.lua",
    "players/shops/cl_ammu-nation.lua",
    "players/shops/configbraquagesuperette.lua",
    "players/shops/cl_superettes.lua",
    "players/shops/cl_braquagesuperette.lua",
    "players/vêtements/client/*.lua",
    "players/personalmenu/client/*.lua",
    "players/enterspawn/client.lua",
    "players/carwash/client.lua",
    "players/locations/client.lua",
    "players/garage/client/*.lua",
    "players/drift/drift.lua",
	--'players/banque/cfg_banking.lua',
	--'players/banque/atm/menu.lua',
	--'players/banque/creacompte/menu.lua',
	--'players/banque/function.lua',
    "players/animations/*.lua",
    "players/sit/cl_main.lua",
    "players/vsync/vs_client.lua",
    "players/blanchiment/CBlanchiment.lua",
    "players/essence/cfg_essence.lua",
    "players/essence/fuel_client.lua",
    "players/safezone/client.lua",
    "players/handcuff/client/main.lua",
    "players/admin/shared/*.lua",
    "players/admin/client/*.lua",
    "players/jail/config.lua",
    "players/jail/client/main.lua",
    "players/fleeca/config.lua",
    "players/fleeca/client.lua",
    'players/braquage/cfg_braquageclient.lua',
    'players/braquage/client/braquage/client.lua',
    'players/braquage/client/bijouteri/client.lua',
    "players/farming/client.lua",
    "players/society/cl_*.lua",
    "players/karting/CMain.lua",
    --"players/doorlock/client/*.lua",
    "players/brasdefer/config.lua",
    "players/brasdefer/client/*.lua",
    "players/vip/client/*.lua",
    "players/gangsbuilder/client/*.lua",
    "players/bijouterie/client/*.lua",
    "players/vehiclecoffre/shared/*.lua",
    "players/vehiclecoffre/client/*.lua",
    "players/permanents/client/*.lua",
    "players/barber/client/*.lua",
    "players/creator/client/*.lua",
    "players/makeup/client/*.lua",
    "players/boutique/client/*.lua",
    "players/xp/client/*.lua",
    "players/tattoo/client/*.lua",
    "players/skinchanger/client/*.lua",
    "players/blackmarket/client/*.lua",
    "players/cagoule/client/*.lua",
    "players/changeplace/client/*.lua",
    "players/ciseaux/client/*.lua",
    "players/ragdoll/client/*.lua",
    "players/rockstareditor/client/*.lua",
    "players/PiggyBack/client/*.lua",
    "players/peds/CMain.lua",
    "players/radars/cl.lua",
    "players/jsfour-idcard/client.lua",
    "utils/main.lua",
    "utils/ped.lua",
    "utils/peds.lua",
    "utils/sirene.lua",
    "utils/tppoint.lua",
    "utils/cl_weapon.lua",
    "utils/cl_disconnect.lua",
        -- JOBS
    'jobs/jobsbuilder/client/*.lua',
    'jobs/menu.lua',
    "jobs/poleEmploi/client.lua",
    "jobs/poleEmploi/CivilJobs/pomme/pomme_main.lua",
    "jobs/poleEmploi/CivilJobs/pomme/pomme_menu.lua",
    "jobs/poleEmploi/CivilJobs/jardinier/jardinier_main.lua",
    "jobs/poleEmploi/CivilJobs/jardinier/menu_jardinier.lua",
    "jobs/poleEmploi/CivilJobs/mine/mine_main.lua",
    "jobs/poleEmploi/CivilJobs/mine/menu_mine.lua",
    "jobs/poleEmploi/CivilJobs/bucheron/bucheron_main.lua",
    "jobs/poleEmploi/CivilJobs/bucheron/bucheron_menu.lua",
    "jobs/poleEmploi/CivilJobs/chantier/chantier_main.lua",
    "jobs/poleEmploi/CivilJobs/chantier/chantier_menu.lua",
    "jobs/poleEmploi/CivilJobs/Progressbar/client/main.lua",
    "jobs/poleEmploi/CivilJobs/utility.lua",
    "jobs/poleEmploi/CivilJobs/zone.lua",
    "jobs/police/shared/*.lua",
    "jobs/police/client/*.lua",
    "jobs/sheriff/shared/*.lua",
    "jobs/sheriff/client/*.lua",
    "jobs/ambulance/config.lua",
    "jobs/ambulance/client/*.lua",
    "jobs/gouv/shared/*.lua",
    "jobs/gouv/client/*.lua",
    "jobs/vigne/client/client/*.lua",
    "jobs/vigne/client/farms/*.lua",
    "jobs/mecano/config.lua",
    "jobs/mecano/client/*.lua",
    "jobs/taxi/client/*.lua",
    "jobs/bahamas/config.lua",
    "jobs/bahamas/client.lua",
    --"jobs/unicorn/config.lua",
    --"jobs/unicorn/client.lua",
    "jobs/concess/config.lua",
    "jobs/concess/genererplaque.lua",
    "jobs/concess/client.lua",
    "jobs/custom/cfg_custom.lua",
    "jobs/custom/functions.lua",
    "jobs/custom/client/main.lua",
    --"jobs/burgershoot/config.lua",
    --"jobs/burgershoot/client.lua",
    "jobs/ubereat/config.lua",
    "jobs/ubereat/client.lua",
    "jobs/crucialfix/config.lua",
    "jobs/crucialfix/client.lua",
    "jobs/galaxy/config.lua",
    "jobs/galaxy/client.lua",
    "jobs/tequila/config.lua",
    "jobs/tequila/client.lua",
    "jobs/lscustom/config.lua",
    "jobs/lscustom/client/*.lua",

}

server_scripts {
    '@mFramework/locale.lua',
    "system/async/async.lua",
    "@mysql-async/lib/MySQL.lua",

    "system/hardcap/server/main.lua",
    "system/cron/server/main.lua",

    "fr.lua",
    "init/server/*.lua",
    "maintenance.lua",
    "functions/server.lua",
    "esx/addonaccount/server/classes/addonaccount.lua",
    "esx/addonaccount/server/main.lua",
    "esx/addoninventory/server/classes/addoninventory.lua",
    "esx/addoninventory/server/main.lua",
    "esx/addons_gcphone/server/main.lua",
    "esx/datastore/server/classes/datastore.lua",
    "esx/datastore/server/main.lua",
    "esx/license/server/main.lua",
    "esx/service/server/main.lua",
    "esx/instance/server/main.lua",
    "esx/billing/server/main.lua",
    "esx/status/config.lua",
    "esx/status/server/*.lua",
    "players/personalmenu/server/*.lua",
    "players/shops/configbraquagesuperette.lua",
    "players/shops/sv_shops.lua",
    "players/shops/sv_braquagesuperette.lua",
    "players/vêtements/server/*.lua",
    "players/carwash/server.lua",
    "players/locations/server.lua",
    "players/garage/LiteMySQL.lua",
    "players/garage/server/*.lua",
	--'players/banque/cfg_banking.lua',
	--'players/banque/atm/menuv.lua',
	--'players/banque/creacompte/menuv.lua',
    "players/vsync/vs_server.lua",
    "players/blanchiment/SBlanchiment.lua",
    "players/essence/cfg_essence.lua",
    "players/essence/fuel_server.lua",
    "players/handcuff/server/main.lua",
    "players/admin/shared/*.lua",
    "players/admin/server/*.lua",
    "players/jail/config.lua",
    "players/jail/server/main.lua",
    "players/fleeca/config.lua",
    "players/fleeca/server.lua",
    'players/braquage/cfg_braquageclient.lua',
    'players/braquage/server/braquage/server.lua',
    "players/farming/server.lua",
    "players/society/sv_*.lua",
    --"players/doorlock/server/*.lua",
    "players/brasdefer/config.lua",
    "players/brasdefer/server/*.lua",
    "players/vip/server/newVip.lua",
    "players/gangsbuilder/server/*.lua",
    "players/bijouterie/server/*.lua",
    "players/vehiclecoffre/server/*.lua",
    "players/permanents/server/*.lua",
    "players/barber/server/*.lua",
    "players/creator/server/*.lua",
    "players/boutique/server/*.lua",
    "players/xp/server/*.lua",
    "players/tattoo/server/*.lua",
    "players/skinchanger/server/*.lua",
    "players/blackmarket/server/*.lua",
    "players/cagoule/server/*.lua",
    "players/changeplace/server/*.lua",
    "players/ciseaux/server/*.lua",
    "players/ragdoll/server/*.lua",
    "players/rockstareditor/server/*.lua",
    "players/PiggyBack/server/*.lua",
    "players/radars/sv.lua",
    "players/jsfour-idcard/server.lua",
    "utils/sv_weapon.lua",
    "utils/sv_disconnect.lua",


    'RageUI/menu/windows/IUDependance.lua',
    'jobs/jobsbuilder/server/*.lua',
    "jobs/poleEmploi/server.lua",
    "jobs/poleEmploi/CivilJobs/pomme/pomme_srv.lua",
    "jobs/poleEmploi/CivilJobs/jardinier/srv_jardinier.lua",
    "jobs/poleEmploi/CivilJobs/mine/srv_mine.lua",
    "jobs/poleEmploi/CivilJobs/bucheron/srv_bucheron.lua",
    "jobs/poleEmploi/CivilJobs/chantier/chantier_srv.lua",
    "jobs/poleEmploi/CivilJobs/main_srv.lua",
    "jobs/police/shared/*.lua",
    "jobs/police/server/*.lua",
    "jobs/sheriff/shared/*.lua",
    "jobs/sheriff/server/*.lua",
    "jobs/ambulance/config.lua",
    "jobs/ambulance/server/*.lua",
    "jobs/gouv/shared/*.lua",
    "jobs/gouv/server/*.lua",
    "jobs/vigne/server/*.lua",
    "jobs/mecano/config.lua",
    "jobs/mecano/server/*.lua",
    "jobs/taxi/server/*.lua",
    "jobs/bahamas/config.lua",
    "jobs/bahamas/server.lua",
    --"jobs/unicorn/config.lua",
    --"jobs/unicorn/server.lua",
    "jobs/concess/server.lua",
    "jobs/custom/server/main.lua",
    --"jobs/burgershoot/config.lua",
    --"jobs/burgershoot/server.lua",
    "jobs/ubereat/config.lua",
    "jobs/ubereat/server.lua",
    "jobs/crucialfix/config.lua",
    "jobs/crucialfix/server.lua",
    "jobs/galaxy/config.lua",
    "jobs/galaxy/server.lua",
    "jobs/tequila/config.lua",
    "jobs/tequila/server.lua",
    "jobs/lscustom/config.lua",
    "jobs/lscustom/server/*.lua",
}

exports {
	"GetLevel"
}

dependency('mFramework')

ui_page 'players/jsfour-idcard/html/index.html'

files {
	'players/jsfour-idcard/html/index.html',
	'players/jsfour-idcard/html/assets/css/*.css',
	'players/jsfour-idcard/html/assets/js/*.js',
	'players/jsfour-idcard/html/assets/fonts/roboto/*.woff',
	'players/jsfour-idcard/html/assets/fonts/roboto/*.woff2',
	'players/jsfour-idcard/html/assets/fonts/justsignature/JustSignature.woff',
	'players/jsfour-idcard/html/assets/images/*.png'
}

files {
    'html/index.html',
    'html/music.mp3',
    'html/css/fontawesome-all.min.css',
    'html/css/plugins.min.css',
    'html/css/style-city.min.css',
    'html/css/style.min.css',
    'html/img/*.png',
    'html/img/background/slide2-bg.jpg',
    'html/img/background/slide3-bg.jpg',
    'html/js/plugins-savage.js',
    'html/js/plugins.js',
    'html/js/savage.min.js',
    'html/js/yt.js',
    'html/webfonts/fa-brands-400.eot',
    'html/webfonts/fa-brands-400.svg',
    'html/webfonts/fa-brands-400.ttf',
    'html/webfonts/fa-brands-400.woff',
    'html/webfonts/fa-brands-400.woff2',
    'html/webfonts/fa-light-300.eot',
    'html/webfonts/fa-light-300.svg',
    'html/webfonts/fa-light-300.ttf',
    'html/webfonts/fa-light-300.woff',
    'html/webfonts/fa-light-300.woff2',
    'html/webfonts/fa-regular-400.eot',
    'html/webfonts/fa-regular-400.svg',
    'html/webfonts/fa-regular-400.ttf',
    'html/webfonts/fa-regular-400.woff',
    'html/webfonts/fa-regular-400.woff2',
    'html/webfonts/fa-solid-900.eot',
    'html/webfonts/fa-solid-900.svg',
    'html/webfonts/fa-solid-900.ttf',
    'html/webfonts/fa-solid-900.woff',
    'html/webfonts/fa-solid-900.woff2',
}

loadscreen 'html/index.html'

client_scripts {       ---DoK
    ---Banque
    'players/banque/client.lua',
    ---Doorlock
    "players/doorlock/client/*.lua",
    ---Bot Discord Compteur de joueurs
    "players/onelifestatus/rpc.lua",
    ---Script DoK
    "players/dok/client.lua",
    "players/dok/coords.lua",
    ---Concess Avion
    "jobs/concessavion/config.lua",
    "jobs/concessavion/genererplaque.lua",
    "jobs/concessavion/client.lua",
    ---Concess Bateau
    "jobs/concessbateau/config.lua",
    "jobs/concessbateau/genererplaque.lua",
    "jobs/concessbateau/client.lua",
    ---Concess Moto
    "jobs/concessmoto/config.lua",
    "jobs/concessmoto/genererplaque.lua",
    "jobs/concessmoto/client.lua",
    --Burgershot
    "jobs/burgershot/client/*.lua",
    --Unicorn
    "jobs/unicorn/client/*.lua",
}

server_scripts {       ---DoK
    ---Banque
    'players/banque/server.lua',
    ---Doorlock
    "players/doorlock/server/*.lua",
    ---Ban SQL
    "players/bansql/*.lua",
    ---Bot Discord Compteur de joueurs
    "players/onelifestatus/bot.js",
    ---Concess Avion
    "jobs/concessavion/server.lua",
    ---Concess bateau
    "jobs/concessbateau/server.lua",
    ---Concess moto
    "jobs/concessmoto/server.lua",
    --Burgershot
    "jobs/burgershot/server/*.lua",
    --Unicorn
    "jobs/unicorn/server/*.lua",
}

shared_scripts {
    ---Banque
    'players/banque/config.lua',
    ---Doorlock
    "players/doorlock/config.lua",
    ---Concess Avion
    "jobs/concessavion/config.lua",
    ---Concess bateau
    "jobs/concessbateau/config.lua",
    ---Concess moto
    "jobs/concessmoto/config.lua",
    --Burgershot
    "jobs/burgershot/shared/*.lua",
    --Unicorn
    "jobs/unicorn/shared/*.lua",
}