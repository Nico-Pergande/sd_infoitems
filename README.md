<h1 align="center">Hi 👋. Welcome to Squid-Development!</h1>
<h3 align="center">Today I present: sd_infoitems</h3>

<br>
<br>

# Description
With sd_infoitems you can improve the RP on your server. Whether instructions, laws or event information. Just create a nice Google Docs document, export it as PDF and create an item. Now you can use such things directly ingame and save possible metagaming through sources like Discord or forums.

---

# Installation
1. You have to create the item in your DB

```
INSERT INTO `items` (name, label, `limit`) VALUES ('itemname', 'Itemlabel', 1);
```

<br>

2. RegisterUsableItem

```
ESX.RegisterUsableItem('itemname', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  TriggerClientEvent('infoitem:open', source, "Itemlabel", 'filename')
end)
```

<br>

3. Ingame

After step 1 + 2 you restart your server, go ingame and use the previously set item.

<br>
<br>

‼️ The PDF File have to be in "sd_infoitems/ui/data" ‼️

---

# About
Here you can find my discord: https://discord.gg/Vk7rfHXyrd
Twitch: https://twitch.tv/np_dev