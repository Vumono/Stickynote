ESX.RegisterUsableItem('stickynote', function(source, item)
	local xPlayer = ESX.GetPlayerFromId(source)		
	local itemData = exports.ox_inventory:Search(source, 'slots', item)
	for _, v in pairs(itemData) do
		if v.metadata ~= nil then 
			TriggerClientEvent('stickynotepad:client:showUI', source, v.metadata, v.slot)
		else
			TriggerClientEvent('stickynotepad:client:showUI', source, 'Type Here...', v.slot)
		end
	end
end)

RegisterServerEvent("jake:server:stickychange")
AddEventHandler("jake:server:stickychange", function(text, slot)
	local xPlayer = ESX.GetPlayerFromId(source)
	local stickynote = exports.ox_inventory:GetSlot(source, slot)
	
	if exports.ox_inventory:RemoveItem(source, 'stickynote', 1, {}, slot) then
		local info = {}
		info.text = text
		exports.ox_inventory.AddItem(source, 'stickynote', 1, info, slot)
	end
end)
