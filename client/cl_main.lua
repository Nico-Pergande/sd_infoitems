RegisterNetEvent('infoitem:open')
AddEventHandler('infoitem:open', function(title, filename)
  SendNUIMessage({
     open = "true",
     title = title,
     filename = filename
  })
  SetNuiFocus(true, true)
end)

function closeUI()
  SendNUIMessage({
    open = "false",
  })
  SetNuiFocus(false, false)
end

RegisterNUICallback('close', function(data)
  closeUI()
end)
