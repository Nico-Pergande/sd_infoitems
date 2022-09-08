
if Cfg.Framework == 'ESX' then

  ESX = nil
  TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

  ESX.RegisterUsableItem('stgb', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('infoitem:open', source, "Strafgesetzbuch", 'stgb')
  end)

elseif Cfg.Framework == 'qbCore' then

  local QBCore = exports['qb-core']:GetCoreObject()

  QBCore.Functions.CreateUseableItem('stgb', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent('infoitem:open', source, "Strafgesetzbuch", 'stgb')
  end)
end