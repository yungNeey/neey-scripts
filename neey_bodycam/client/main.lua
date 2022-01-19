

local PlayerData = {}
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent("bodycam:show")
AddEventHandler("bodycam:show", function()
	ESX.TriggerServerCallback('route68-bodycam:getPlayerName', function(result)
	SendNUIMessage({
		action = 'updatecam',
		name = result.name,
		date = result.date
	})
end)

end)

RegisterNetEvent("bodycam:close")
AddEventHandler("bodycam:close", function()
				SendNUIMessage({
					action = 'closecam'
				})
end)