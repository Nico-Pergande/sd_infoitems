# sd_infoitems
---

# Description
With sd_infoitems you can improve the RP on your server. Whether instructions, laws or event information. 
Just create a nice Google Docs document, export it as PDF and create an item. 
Now you can use such things directly ingame and save possible metagaming through sources like Discord or forums.

---

# How to use
1. Create item in your DB
INSERT INTO `items` (name, label, `limit`) VALUES
	('itemname', 'itemlabel', 1);

2. RegisterUsableItem
ESX.RegisterUsableItem('itemname', function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  TriggerClientEvent('infoitem:open', source, "Itemlabel", 'pdfname')
end)

‼️ The pdf file have to be in "sd_infoitems/ui/data" ‼️

---

# Credits
Thanks to my team.

---

# About
Here you can find my discord: https://discord.gg/Vk7rfHXyrd
Twitch: https://twitch.tv/np_dev