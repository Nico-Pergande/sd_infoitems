<h1 align="center">Hi 👋. Welcome to Squid-Development!</h1>
<h3 align="center">Today I present: sd_infoitems</h3>

<br>
<br>

# Description
With sd_infoitems you can improve the RP on your server. Whether instructions, laws or event information. Just create a nice Google Docs document, export it as PDF and create an item. Now you can use such things directly ingame and save possible metagaming through sources like Discord or forums.

---

# Installation
1. You have to create the item in your DB if you use ESX

```sql
INSERT INTO `items` (name, label, `limit`) VALUES ('stgb', 'Strafgesetzbuch', 1);
```

If you use QBCore you have to create a new Item in your Core Resource ( Default: ``qb-core/shared/items.lua`` )

```lua
[‘stgb’] = {[‘name’] = ‘stgb’, [‘label’] = ‘Strafgesetzbuch’, [‘weight’] = 0, [‘type’] = ‘item’, [‘image’] = stgb.png’, [‘unique’] = false, [‘useable’] = true, [‘shouldClose’] = true, [‘combinable’] = nil, [‘description’] = ‘’},
```
<br>

2. RegisterUsableItem under ``server/sv_main.lua``

ESX example:
```lua
ESX.RegisterUsableItem('stgb', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  TriggerClientEvent('infoitem:open', source, "Strafgesetzbuch", 'stgb')
end)
```

QBCore example:
```lua
QBCore.Functions.CreateUseableItem('stgb', function(source, item)
  local Player = QBCore.Functions.GetPlayer(source)
  TriggerClientEvent('infoitem:open', source, "Strafgesetzbuch", 'stgb')
end)
```

<br>

3. Ingame

After step 1 + 2 you restart your server, go ingame and use the previously set item.

<br>
<br>

‼️ The PDF File have to be in ``sd_infoitems/ui/data`` ‼️

---

# About
Here you can find my discord: https://discord.gg/Vk7rfHXyrd
Twitch: https://twitch.tv/np_dev
