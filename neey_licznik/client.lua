function round(num, dec)
    local mult = 10^(dec or 0)
    return math.floor(num * mult + 0.5) / mult
end

Citizen.CreateThread(function()
	while true do
		local Ped = GetPlayerPed(-1)

		if(IsPedInAnyVehicle(Ped)) then
			local vehicle = GetVehiclePedIsIn(Ped, false)
			local playerCar = GetVehiclePedIsIn(playerPed, false)
			if vehicle then
				local speed = (GetEntitySpeed(vehicle))
				local speed_show = math.ceil(speed * 3.6)
				local rpm_show = GetVehicleCurrentRpm(vehicle)
				if rpm_show > 0.99 then
					rpm_show = rpm_show*100
					rpm_show = rpm_show+math.random(-2,2)
					rpm_show = rpm_show/100
				end
				if rpm_show < 0.25 then
					rpm_show = rpm_show*100
					rpm_show = rpm_show+math.random(-1,1)
					rpm_show = rpm_show/100
				end

				if IsVehicleEngineOn(vehicle) then
					if rpm_show*10000 > 1000 then
						rpm_show = (rpm_show*10000)-1000
					end
				end

				rpm_bar = rpm_show/51.5

				if (IsPedInAnyVehicle(Ped)) then
					SendNUIMessage({
						typeSH = 'ui',
						status = true,
						type = 'speedometer_send',
						speed = speed_show,
						rpm = round(rpm_show, 0),
						rpmBar = round(rpm_bar, 1),
						dirtext = direction,
					})
				else
					SendNUIMessage({action = "toggle", show = false})
				end

			else
				SendNUIMessage({
					typeSH = 'ui',
					status = false
				})
			end
		else
			SendNUIMessage({
				typeSH = 'ui',
				status = false
			})
		end

		Citizen.Wait(200)
	end
end) 

RegisterNetEvent('gg_cluster:toggleHud')
AddEventHandler('gg_cluster:toggleHud', function(toggle)
	hudShow = toggle
	if toggle then
		forceDisable = false
	else
		forceDisable = true
	end
end)