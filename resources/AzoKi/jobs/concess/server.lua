ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

TriggerEvent('esx_phone:registerNumber', 'carshop', 'alerte carshop', true, true)

TriggerEvent('esx_society:registerSociety', 'carshop', 'Concessionnaire', 'society_carshop', 'society_carshop', 'society_carshop', {type = 'public'})


ESX.RegisterServerCallback('dok_concess:recuperercategorievehicule', function(source, cb)
    local catevehi = {}

    MySQL.Async.fetchAll('SELECT * FROM vehicle_categories', {}, function(result)
        for i = 1, #result, 1 do
            table.insert(catevehi, {
                name = result[i].name,
                label = result[i].label
            })
        end

        cb(catevehi)
    end)
end)

ESX.RegisterServerCallback('dok_concess:recupererlistevehicule', function(source, cb, categorievehi)
    local catevehi = categorievehi
    local listevehi = {}

    MySQL.Async.fetchAll('SELECT * FROM vehicles WHERE category = @category', {
        ['@category'] = catevehi
    }, function(result)
        for i = 1, #result, 1 do
            table.insert(listevehi, {
                name = result[i].name,
                model = result[i].model,
                price = result[i].price
            })
        end

        cb(listevehi)
    end)
end)

ESX.RegisterServerCallback('dok_concess:verifierplaquedispo', function (source, cb, plate)
    MySQL.Async.fetchAll('SELECT 1 FROM owned_vehicles WHERE plate = @plate', {
        ['@plate'] = plate
    }, function (result)
        cb(result[1] ~= nil)
    end)
end)

RegisterServerEvent('dok_concess:vendrevoiturejoueur')
AddEventHandler('dok_concess:vendrevoiturejoueur', function (playerId, vehicleProps, prix, nom)
    local xPlayer = ESX.GetPlayerFromId(playerId) 
	local levendeur = ESX.GetPlayerFromId(source)
    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_carshop', function (account)
            account.removeMoney(prix)
    end)
    MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle) VALUES (@owner, @plate, @vehicle)',
    {
        ['@owner']   = xPlayer.identifier,
        ['@plate']   = vehicleProps.plate,
        ['@vehicle'] = json.encode(vehicleProps)
    }, function (rowsChanged)
    TriggerClientEvent('esx:showNotification', xPlayer.source, "Tu as reçu la voiture ~p~"..nom.."~s~ immatriculé ~p~"..vehicleProps.plate.." pour ~p~" ..prix.. "$")
    end)
end)

RegisterServerEvent('shop:vehicule')
AddEventHandler('shop:vehicule', function(vehicleProps, prix, nom)
    local xPlayer = ESX.GetPlayerFromId(source)

    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_carshop', function (account)
        account.removeMoney(prix)
end)
    MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle) VALUES (@owner, @plate, @vehicle)', {
        ['@owner']   = xPlayer.identifier,
        ['@plate']   = vehicleProps.plate,
        ['@vehicle'] = json.encode(vehicleProps)
    }, function(rowsChange)
        TriggerClientEvent('esx:showNotification', xPlayer, "Tu as reçu la voiture ~p~"..json.encode(vehicleProps).."~s~ immatriculé ~p~"..vehicleProps.plate.." pour ~p~" ..prix.. "$")
    end)
end)

ESX.RegisterServerCallback('dok_concess:verifsousconcess', function(source, cb, prixvoiture)
    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_carshop', function (account)
        if account.money >= prixvoiture then
            cb(true)
        else
            cb(false)
        end
    end)
end)

RegisterServerEvent('dConcess:Ouvert')
AddEventHandler('dConcess:Ouvert', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers	= ESX.GetPlayers()
    if xPlayer.job.name == 'carshop' then
        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Sunrise Auto', 'Publicité', 'Le Concessionnaire Automobile est désormais ~p~ouvert~s~ !', 'CHAR_FCONCESS', 8)
        end
    end
end)

RegisterServerEvent('dConcess:Fermer')
AddEventHandler('dConcess:Fermer', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers	= ESX.GetPlayers()
    if xPlayer.job.name == 'carshop' then
        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Sunrise Auto', 'Publicité', 'Le Concessionnaire Automobile est désormais ~p~fermé~s~ !', 'CHAR_FCONCESS', 8)
        end
    end
end)

RegisterServerEvent('dConcess:Recrutement')
AddEventHandler('dConcess:Recrutement', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers	= ESX.GetPlayers()
    if xPlayer.job.name == 'carshop' then
        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], 'Sunrise Auto', 'Publicité', 'Le Concessionnaire Automobile ~p~recrute~s~ !', 'CHAR_FCONCESS', 8)
        end
    end
end)
