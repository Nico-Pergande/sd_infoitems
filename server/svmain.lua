ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


ESX.RegisterUsableItem('stgb', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  TriggerClientEvent('infoitem:open', source, "Strafgesetzbuch", 'stgb')
end)
