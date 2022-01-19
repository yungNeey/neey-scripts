ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('route68-bodycam:getPlayerName', function(source, cb)
	local t = os.date("*t")

	if string.len(tostring(t.hour)) == 1 then
		t.hour = '0'..t.hour
	end

	if string.len(tostring(t.min)) == 1 then
		t.min = '0'..t.min
	end

	if string.len(tostring(t.sec)) == 1 then
		t.sec = '0'..t.sec
	end

	if string.len(tostring(t.day)) == 1 then
		t.day = '0'..t.day
	end

	if string.len(tostring(t.month)) == 1 then
		t.month = '0'..t.month
	end

	local currDate = (t.hour..'.'..t.min..'.'..t.sec..' / '..t.day..'.'..t.month..'.'..t.year)

	local data = {
		name = GetCharacterName(source),
		date = currDate
	}

	cb(data)
end)

function GetCharacterName(source)
	local result = MySQL.Sync.fetchAll('SELECT firstname, lastname FROM users WHERE identifier = @identifier', {
		['@identifier'] = GetPlayerIdentifiers(source)[1]
	})

	if result[1] and result[1].firstname and result[1].lastname then
		return ('%s %s'):format(result[1].firstname, result[1].lastname)
	else
		return GetPlayerName(source)
	end
end


ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function getIdentity(source)

	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = source})
	if result[1] ~= nil then
		local identity = result[1]

		return {
			identifier = identity['identifier'],
			firstname = identity['firstname'],
			lastname = identity['lastname'],
			dateofbirth = identity['dateofbirth'],
			sex = identity['sex'],
			height = identity['height']
			
		}
	else
		return nil
	end
end

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(1000)
	local xPlayers = ESX.GetPlayers()

	for i=1, #xPlayers, 1 do
 		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
         if xPlayer.job.name == 'police' then
            local name = getIdentity(xPlayer.identifier)
			TriggerClientEvent('bodycam:show', xPlayers[i], name.firstname .. ' ' .. name.lastname, 'Ranga: ' .. xPlayer.job.grade_label)
		 else 
			TriggerClientEvent('bodycam:close', xPlayers[i])
		end
	end
end
end)
