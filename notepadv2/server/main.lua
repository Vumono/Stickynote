ESX.RegisterUsableItem('stickynote', function(source, item)
	local xPlayer = ESX.GetPlayerFromId(source)		
	local itemData = exports.ox_inventory:Search(source, 'slots', 'stickynote')
	for _, v in pairs(itemData) do
		if v.metadata ~= nil then 
			TriggerClientEvent('stickynotepad:client:showUI', source, v.metadata.description, v.slot)
		else
			TriggerClientEvent('stickynotepad:client:showUI', source, 'Type Here...', v.slot)
		end
	end
end)

RegisterServerEvent("jake:server:stickychange")
AddEventHandler("jake:server:stickychange", function(text, slot)
	local xPlayer = ESX.GetPlayerFromId(source)
	local stickynote = exports.ox_inventory:Search(xPlayer.source, 'slots', 'stickynote')
	for k, v in pairs(stickynote) do
		stickynote = v
	end
	stickynote.metadata.description = text
	exports.ox_inventory:SetMetadata(xPlayer.source, stickynote.slot, stickynote.metadata)
end)

