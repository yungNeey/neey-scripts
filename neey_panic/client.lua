

local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

ESX                           = nil
local PlayerData                = {}
local blip = nil
local wysz = false
local wtrc = false
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	Citizen.Wait(5000)
	PlayerData = ESX.GetPlayerData()
end)
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
	
	Citizen.Wait(5000)

end)

checktest = false
RegisterNetEvent("pb_check_test")
AddEventHandler("pb_check_test", function(check)
	checktest = check
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
	
		if IsControlJustPressed(1, Keys['G']) and IsControlPressed(1, Keys['LEFTSHIFT']) then
			
			if ESX.GetPlayerData().job.name == 'police' then
			local ko = GetEntityCoords(PlayerPedId(), true)
					if wtrc == false then
						if not(IsPedInAnyVehicle(PlayerPedId(), false)) then
							TriggerServerEvent('3dme:shareDisplayDo','U??ywa dziwnego przycisku na radiu')
						end
						TriggerServerEvent('panicbutton:on', ko)
						Citizen.Wait(500)
						print(checktest)
						if checktest then
							
							wtrc = true
						TriggerEvent('koniec:pb')
						end
					else
						ESX.ShowNotification('~r~Odczekaj zanim znowu u??yjesz panic buttona')
					end
	end
end
end
end)
RegisterNetEvent('koniec:pb')
AddEventHandler('koniec:pb', function()
Citizen.Wait(120000)
wtrc = false
end)
RegisterNetEvent('panicbutton:on')
AddEventHandler('panicbutton:on', function(kz)
	SendNUIMessage({transactionType60 = 'playSound60'})
	Citizen.Wait(3500)
	SendNUIMessage({transactionType60 = 'playSound60'})
			blip = AddBlipForCoord(kz)
			SetBlipSprite(blip, 480)
			SetBlipScale(blip, 1.0)
			SetBlipColour(blip, 1)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("PANIC BUTTON")
			EndTextCommandSetBlipName(blip)
			SetBlipRoute(blip, true)
			wysz = true
			Citizen.Wait(30000)
			RemoveBlip(blip)
			wysz = false

end)


-- WYSZ
local UI = { 

	x =  0.000 ,	-- Base Screen Coords 	+ 	 x
	y = -0.001 ,	-- Base Screen Coords 	+ 	-y

}
