local PlayerData              = {}
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function getIdentity(source)
	local identifier = GetPlayerIdentifiers(source)[1]
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = identifier})
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

AddEventHandler('es:invalidCommandHandler', function(source, command_args, user)
	CancelEvent()
    TriggerClientEvent('chat:addMessage', source, {
       template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(115, 116, 119, 0.6); border-radius: 4px;"><i class="fas fa-exclamation-circle"></i> ^3^*Wpisana komenda nie istnieje.^7 Wpisz /pomoc by otrzymać spis działających komend. </div>',
        args = { }
    })
end, false)

AddEventHandler('chatMessage', function(source, name, message)
	if string.sub(message,1,string.len("/"))=="/" then
    else
        TriggerClientEvent("sendProximityMessage", -1, source, name, " " .. message)
       -- sendToDiscord('msg','[LOCAL OOC] ' .. name .. ' ' .. message, 2061822)
	end
	CancelEvent()
end)


RegisterNetEvent('menu:phone')
AddEventHandler('menu:phone', function()
  local name = getIdentity(source)
  TriggerClientEvent("sendProximityMessagePhone", -1, source, source, name.phone_number)
end)

function getIdentifiers(player)
    local identifiers = {}
    for i = 0, GetNumPlayerIdentifiers(player) - 1 do
        local raw = GetPlayerIdentifier(player, i)
        local tag, value = raw:match("^([^:]+):(.+)$")
        if tag and value then
            identifiers[tag] = value
        end
    end
    return identifiers
end

RegisterCommand('pomoc', function(source, args, rawCommand)
    -- local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(3)
    local name = getIdentity(source)
	local _source = source
	--local xPlayer = ESX.GetPlayerFromId(_source)
    fal = "Komendy chatu"
    TriggerClientEvent('chat:addMessage', source, {
        template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(52, 235, 76, 0.6); border-radius: 4px;"><i class="far fa-question-circle"></i>&nbsp; {0}: <br>{1}<br>{2}<br>{3}<br>{4}<br>{5}<br>{6}</div>',
        args = { fal, '[chat bez komendy] - Local OOC;', '[/me], [/do] - Komendy narracyjne;', '[/dw] - DarkWeb (Wymagany telefon oraz $50);', '[/twt] - Twitter (Wymagany telefon oraz $25);', '[/zglos] - Komunikacja z administracją;', 'Resztę możesz znaleźć na discordzie' }
    })
end, false)


RegisterCommand('twt', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
    local name = getIdentity(source)
    local amount = 15
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local quantity = xPlayer.getInventoryItem('phone').count
	local identifiers = getIdentifiers(source)
    local discordID = "<@" .. identifiers.discord .. ">"
    if quantity > 0 then
    fal = name.firstname .. " " .. name.lastname
	sendToDiscord1('HYPERION - TWEET','' .. source .. ' | ' .. GetPlayerName(source) ..' | '.. discordID ..' | ' .. GetPlayerIdentifier(source) .. '\n``' .. msg ..'``', 3447003)
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; margin-right: 0.8vw; background-color: rgba(16, 145, 204, 0.6); border-radius: 4px;"><i class="fab fa-twitter"></i>&nbsp;<b>@{0}:<b> {1}</div>',
        args = { fal, msg }
    })
    TriggerClientEvent("pNotify:SendNotification", source, {text = "Zapłaciłeś/aś $25 za wysłanie Tweeta"})
	xPlayer.removeAccountMoney('bank', amount)
	else
		TriggerClientEvent("pNotify:SendNotification", _source, {text = 'Nie masz przy sobie telefonu!'})
	end
end, false)

RegisterCommand('dw', function(source, args, rawCommand)
    local _source = source
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(4)
    local name = getIdentity(source)
    local amount = 200
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local quantity = xPlayer.getInventoryItem('phone').count
	local identifiers = getIdentifiers(source)
    local discordID = "<@" .. identifiers.discord .. ">"
    if quantity > 0 then
		if xPlayer.job.name ~= 'police' and xPlayer.job.name ~= 'ambulance' and xPlayer.job.name ~= 'offambulance' and xPlayer.job.name ~= 'offpolice' then
			fal = "DarkWEB"

			TriggerClientEvent("localsenddw", -1, fal, msg)

			--TriggerClientEvent('checksluzba', source)

			sendToDiscord1('HYPERION - DARKWEB','' .. source .. ' | ' .. GetPlayerName(source) ..' | '.. discordID ..' | ' .. GetPlayerIdentifier(source) .. '\n``' .. msg ..'``', 9936031)
			--[[TriggerClientEvent('chat:addMessage', -1, {
					template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(204, 73, 0, 0.6); border-radius: 4px;"><i class="fas fa-laptop-code"></i>&nbsp; <b>{0}:</b> {1}</div>',
					args = { fal, msg }
				})--]]
			TriggerClientEvent("pNotify:SendNotification", source, {text = "Zapłaciłeś/aś $1000 za wysłanie Wiadomości"})
			xPlayer.removeAccountMoney('bank', amount)
		else
			TriggerClientEvent("pNotify:SendNotification", _source, {text = 'Nie możesz korzystać z tego chatu!'})
		end
	else
		TriggerClientEvent("pNotify:SendNotification", _source, {text = 'Nie masz przy sobie telefonu!'})
	end



		--[[local _source = source
		local xPlayer = ESX.GetPlayerFromId(source)
		if xPlayer.job.name == 'police' or xPlayer.job.name == 'fire' or xPlayer.job.name == 'offfire' or xPlayer.job.name == 'offpolice' then
			TriggerClientEvent("pNotify:SendNotification", source, {
				text = "Nie możesz użyć tego chatu!",
				type = "success",
				queue = "lmao",
				timeout = 2000,
				layout = "centerLeft"
			})
			return
		else
			if args[1] == nil then
				return
			end

			TriggerEvent("es:getPlayers", function(pl)
				local xPlayer = ESX.GetPlayerFromId(source)
				local _source = source
				local mahajs1 = xPlayer.getMoney()

				if (xPlayer.job.name == "police" or xPlayer.job.name == "offpolice" ) then

					TriggerClientEvent('chat:addMessage', -1, {
						template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(204, 73, 0, 0.6); border-radius: 4px;"><i class="fas fa-laptop-code"></i>&nbsp;dsrffdsdfds</div>',
						args = { fal, msg }
					})

				elseif mahajs1 > 200 then

					local name = getIdentity(source)
					local msg = rawCommand:sub(4)

					local identifiers = getIdentifiers(source)
					local discordID = "<@" .. identifiers.discord .. ">"
						TriggerClientEvent('chat:addMessage', -1, {
							template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(204, 73, 0, 0.6); border-radius: 4px;"><i class="fas fa-laptop-code"></i>&nbsp; <b>DarkWEB:</b> {1}</div>',
							args = { fal, msg }
						})
						xPlayer.removeMoney(200)
						TriggerClientEvent('esx:showNotification', source, '~y~Pobrano opłatę~r~ 200$')
						sendToDiscord('HYPERION - DW','' .. source .. ' | ' .. GetPlayerName(source) ..' | '.. discordID ..' | ' .. GetPlayerIdentifier(source) .. '\n``' .. msg ..'``', 3447003)
				--else
						TriggerClientEvent('esx:showNotification', source, '~r~Nie masz pieniędzy!')
					end

			end)
		end]]
end, false)



RegisterCommand('news', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
    local name = getIdentity(source)
    local amount = 250
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local quantity = xPlayer.getInventoryItem('phone').count
	local identifiers = getIdentifiers(source)
    local discordID = "<@" .. identifiers.discord .. ">"
    if quantity > 0 then
    fal = name.firstname .. " " .. name.lastname
    sendToDiscord1('HYPERION - NEWS','' .. source .. ' | ' .. GetPlayerName(source) ..' | '.. discordID ..' | ' .. GetPlayerIdentifier(source) .. '\n``' .. msg ..'``', 15844367)
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(0, 212, 60, 0.6); border-radius: 4px;"><i class="far fa-newspaper"></i>&nbsp;<b>{0}:<b> {1}</div>',
        args = { fal, msg }
    })
    TriggerClientEvent("pNotify:SendNotification", source, {text = "Zapłaciłeś/aś $500 za wysłanie newsa"})
	xPlayer.removeAccountMoney('bank', amount)
	else
		TriggerClientEvent("pNotify:SendNotification", _source, {text = 'Nie masz przy sobie telefonu!'})
	end
end, false)

RegisterCommand('med', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
    local name = getIdentity(source)
	local realName = name.firstname .. " " .. name.lastname
	local identifiers = getIdentifiers(source)
    local discordID = "<@" .. identifiers.discord .. ">"
    sendToDiscord3('HYPERION - MED','' .. source .. ' | ' .. GetPlayerName(source) ..' | '.. discordID ..' | ' .. GetPlayerIdentifier(source) .. '\n``' .. msg ..'``', 15158332)
    TriggerClientEvent("sendProximityMessageMed", -1, source, realName, table.concat(args, " "))
    TriggerClientEvent('3dme:triggerDisplayMed', -1, table.concat(args, " "), source)
end, false)

RegisterCommand('me', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(4)
    local name = getIdentity(source)
	local realName = name.firstname .. " " .. name.lastname
	local identifiers = getIdentifiers(source)
    local discordID = "<@" .. identifiers.discord .. ">"
    sendToDiscord3('HYPERION - ME','' .. source .. ' | ' .. GetPlayerName(source) ..' | '.. discordID ..' | ' .. GetPlayerIdentifier(source) .. '\n``' .. msg ..'``', 10181046)
    TriggerClientEvent("sendProximityMessageMe", -1, source, realName, table.concat(args, " "))
    TriggerClientEvent('3dme:triggerDisplayMe', -1, table.concat(args, " "), source)
end, false)

RegisterCommand('do', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(4)
    local name = getIdentity(source)
	local realName = name.firstname .. " " .. name.lastname
	local identifiers = getIdentifiers(source)
    local discordID = "<@" .. identifiers.discord .. ">"
    sendToDiscord3('HYPERION - DO','' .. source .. ' | ' .. GetPlayerName(source) ..' | '.. discordID ..' | ' .. GetPlayerIdentifier(source) .. '\n``' .. msg ..'``', 8359053)
    TriggerClientEvent("sendProximityMessageDo", -1, source, realName, table.concat(args, " "))
    TriggerClientEvent('3dme:triggerDisplayDo', -1, table.concat(args, " "), source)
end, false)

RegisterCommand('try', function(source, args, rawCommand)
	local name = getIdentity(source)
	local playerName = GetPlayerName(source)
	local msg = rawCommand:sub(4)
	local czy = math.random(1, 2)
	local identifiers = getIdentifiers(source)
	local discordID = "<@" .. identifiers.discord .. ">"

	TriggerClientEvent("sendProximityMessageCzy", -1, source, source, table.concat(args, " "), czy)

	local text = '' -- edit here if you want to change the language : EN: the person / FR: la personne
	for i = 1,#args do
		text = text .. ' ' .. args[i]
	end

	if czy == 1 then
		TriggerClientEvent('3dme:triggerDisplayTry', -1, text, source, color)
		sendToDiscord3('HYPERION - TRY','' .. source .. ' | ' .. GetPlayerName(source) ..' | '.. discordID ..' | ' .. GetPlayerIdentifier(source) .. '\n``' .. msg ..'``', 3066993)

	elseif czy == 2 then
		TriggerClientEvent('3dme:triggerDisplayTry2', -1, text, source, color)
		sendToDiscord3('HYPERION - TRY','' .. source .. ' | ' .. GetPlayerName(source) ..' | '.. discordID ..' | ' .. GetPlayerIdentifier(source) .. '\n``' .. msg ..'``', 12850196)
	end
end)


RegisterCommand('ems', function(source, args, rawCommand)
    -- local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(4)
    local name = getIdentity(source)
	fal = "EMS"
	local xPlayer = ESX.GetPlayerFromId(source)
	local grade = xPlayer.job.grade_name
	local identifiers = getIdentifiers(source)
    local discordID = "<@" .. identifiers.discord .. ">"
	if xPlayer.job.name == 'ambulance' then
        --if grade == 'chirurg' or grade == 'special' or grade == 'preboss' or grade == 'boss' then
		sendToDiscord2('HYPERION - EMS','' .. source .. ' | ' .. GetPlayerName(source) ..' | '.. discordID ..' | ' .. GetPlayerIdentifier(source) .. '\n``' .. msg ..'``', 15105570)
			TriggerClientEvent('chat:addMessage', -1, {
			template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(239, 83, 69, 0.6); border-radius: 4px;"><i class="fas fa-ambulance"></i>&nbsp; {0}: {1}</div>',
			args = { fal, msg }
			})
		--end
	end
end, false)

RegisterCommand('lspd', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
	local name = getIdentity(source)
	local identifiers = getIdentifiers(source)
    local discordID = "<@" .. identifiers.discord .. ">"
	fal = "LSPD"
	local xPlayer = ESX.GetPlayerFromId(source)
	local grade = xPlayer.job.grade_name
	if xPlayer.job.name == 'police' and xPlayer.job.grade >= 10 then
            sendToDiscord2('HYPERION - LSPD','' .. source .. ' | ' .. GetPlayerName(source) ..' | '.. discordID ..' | ' .. GetPlayerIdentifier(source) .. '\n``' .. msg ..'``', 15105570)
			TriggerClientEvent('chat:addMessage', -1, {
			template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(3, 52, 132, 0.6); border-radius: 4px;"><i class="fas fa-balance-scale"></i>&nbsp; {0}: {1}</div>',
			args = { fal, msg }
			})
	end
end, false)



RegisterCommand('winiarnia', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(10)
	local name = getIdentity(source)
	local identifiers = getIdentifiers(source)
    local discordID = "<@" .. identifiers.discord .. ">"
	fal = "Winiarnia"
	local xPlayer = ESX.GetPlayerFromId(source)
	local grade = xPlayer.job.grade_name
	if xPlayer.job.name == 'vigne' then
        if grade == 'boss' then
            sendToDiscord2('HYPERION - WINIARNIA','' .. source .. ' | ' .. GetPlayerName(source) ..' | '.. discordID ..' | ' .. GetPlayerIdentifier(source) .. '\n``' .. msg ..'``', 15105570)
			TriggerClientEvent('chat:addMessage', -1, {
			template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(129, 0, 204, 0.6); border-radius: 4px;"><i class="fas fa-wine-glass-alt"></i>&nbsp; {0}: {1}</div>',
			args = { fal, msg }
			})
		end
	end
end, false)

RegisterCommand('taxi', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
	local name = getIdentity(source)
	local identifiers = getIdentifiers(source)
    local discordID = "<@" .. identifiers.discord .. ">"
	fal = "TAXI"
	local xPlayer = ESX.GetPlayerFromId(source)
	local grade = xPlayer.job.grade_name
	if xPlayer.job.name == 'taxi' then
        if grade == 'boss' then
            sendToDiscord2('HYPERION - TAXI','' .. source .. ' | ' .. GetPlayerName(source) ..' | '.. discordID ..' | ' .. GetPlayerIdentifier(source) .. '\n``' .. msg ..'``', 15105570)
			TriggerClientEvent('chat:addMessage', -1, {
			template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(255, 251, 0, 0.6); border-radius: 4px;"><i class="fas fa-taxi"></i>&nbsp; <b>{0}:</b> {1}</div>',
			args = { fal, msg }
			})
		end
	end
end, false)

RegisterCommand('mech', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
	local name = getIdentity(source)
	local identifiers = getIdentifiers(source)
    local discordID = "<@" .. identifiers.discord .. ">"
	fal = "LSCM"
	local xPlayer = ESX.GetPlayerFromId(source)
	local grade = xPlayer.job.grade_name
	if xPlayer.job.name == 'mecano' then
        --if grade == 'lieutenant' or grade == 'chef' or grade == 'boss' then
		sendToDiscord2('HYPERION - MECHANIK','' .. source .. ' | ' .. GetPlayerName(source) ..' | '.. discordID ..' | ' .. GetPlayerIdentifier(source) .. '\n``' .. msg ..'``', 15105570)
			TriggerClientEvent('chat:addMessage', -1, {
			template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(255, 115, 0, 0.6); border-radius: 4px;"><i class="fas fa-wrench"></i>&nbsp; {0}: {1}</div>',
			args = { fal, msg }
			})
		--end
	end
end, false)


function stringsplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t={} ; i=1
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end
	return t
end

function sendToDiscord (name,message,color)
	local DiscordWebHook = 'https://discordapp.com/api/webhooks/790569164221317170/4H8EhTjL5JxeQjcDGKBuKC_p9VxJ8bxMjfD7V4AVvj65I_06IPBB4tZErLHci8SDrfBx'
	local date = os.date('*t')
	if date.month < 10 then date.month = '0' .. tostring(date.month) end
	if date.day < 10 then date.day = '0' .. tostring(date.day) end
	if date.hour < 10 then date.hour = '0' .. tostring(date.hour) end
	if date.min < 10 then date.min = '0' .. tostring(date.min) end
	if date.sec < 10 then date.sec = '0' .. tostring(date.sec) end
	local date = (''..date.day .. '.' .. date.month .. '.' .. date.year .. ' - ' .. date.hour .. ':' .. date.min .. ':' .. date.sec..'')

  local embeds = {
	{
		  ["description"]=message,
		  ["type"]="rich",
		  ["color"] =color,
		  ["footer"]=  {
			  ["text"]= "" ..date.."",
		 },
	}
}

	if message == nil or message == '' then return FALSE end
	PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

function sendToDiscord1 (name,message,color)
	local DiscordWebHook = 'https://discordapp.com/api/webhooks/819501766331990019/dOk18kJLeSzlmEkGr2zj3NurZO7pPPR4lf6N6Gx5KXnau-t7_Tfqxma8YZCQ0K9IWgwk'
	local date = os.date('*t')
	if date.month < 10 then date.month = '0' .. tostring(date.month) end
	if date.day < 10 then date.day = '0' .. tostring(date.day) end
	if date.hour < 10 then date.hour = '0' .. tostring(date.hour) end
	if date.min < 10 then date.min = '0' .. tostring(date.min) end
	if date.sec < 10 then date.sec = '0' .. tostring(date.sec) end
	local date = (''..date.day .. '.' .. date.month .. '.' .. date.year .. ' - ' .. date.hour .. ':' .. date.min .. ':' .. date.sec..'')

  local embeds = {
	{
		  ["description"]=message,
		  ["type"]="rich",
		  ["color"] =color,
		  ["footer"]=  {
			  ["text"]= "" ..date.."",
		 },
	}
}

	if message == nil or message == '' then return FALSE end
	PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

function sendToDiscord2 (name,message,color)
	local DiscordWebHook = 'https://discordapp.com/api/webhooks/819501879050108928/Z4G5g0ryt5Jn6SD4fJHNfVQUFiXtLakxrptw6L8JnP5Yy_Ht-5CDK7i6gQiZwe2TETXL'
	local date = os.date('*t')
	if date.month < 10 then date.month = '0' .. tostring(date.month) end
	if date.day < 10 then date.day = '0' .. tostring(date.day) end
	if date.hour < 10 then date.hour = '0' .. tostring(date.hour) end
	if date.min < 10 then date.min = '0' .. tostring(date.min) end
	if date.sec < 10 then date.sec = '0' .. tostring(date.sec) end
	local date = (''..date.day .. '.' .. date.month .. '.' .. date.year .. ' - ' .. date.hour .. ':' .. date.min .. ':' .. date.sec..'')

  local embeds = {
	{
		  ["description"]=message,
		  ["type"]="rich",
		  ["color"] =color,
		  ["footer"]=  {
			  ["text"]= "" ..date.."",
		 },
	}
}

	if message == nil or message == '' then return FALSE end
	PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

function sendToDiscord3 (name,message,color)
	local DiscordWebHook = 'https://discordapp.com/api/webhooks/819502090653007882/I8lDNLrvVVjuqHWIVJOviiVzt8tmRdvJey800YIkkWym4b2hXp9N44Ax_3V5bCRU4yFa'
	local date = os.date('*t')
	if date.month < 10 then date.month = '0' .. tostring(date.month) end
	if date.day < 10 then date.day = '0' .. tostring(date.day) end
	if date.hour < 10 then date.hour = '0' .. tostring(date.hour) end
	if date.min < 10 then date.min = '0' .. tostring(date.min) end
	if date.sec < 10 then date.sec = '0' .. tostring(date.sec) end
	local date = (''..date.day .. '.' .. date.month .. '.' .. date.year .. ' - ' .. date.hour .. ':' .. date.min .. ':' .. date.sec..'')

  local embeds = {
	{
		  ["description"]=message,
		  ["type"]="rich",
		  ["color"] =color,
		  ["footer"]=  {
			  ["text"]= "" ..date.."",
		 },
	}
}

	if message == nil or message == '' then return FALSE end
	PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

RegisterServerEvent('3dme:shareDisplayMe')
AddEventHandler('3dme:shareDisplayMe', function(text)
	--sendToDiscord1('HYPERION - Chat','[ME] [' .. source .. '] ' .. GetPlayerName(source) .. '  Hex: ' .. GetPlayerIdentifier(source) .. ': ' .. text, 16744192)
	TriggerClientEvent('3dme:triggerDisplayMe', -1, text, source)

end)

RegisterServerEvent('3dme:shareDisplayDo')
AddEventHandler('3dme:shareDisplayDo', function(text)
	--sendToDiscord1('XLifeRP - Chat','[DO] [' .. source .. '] ' .. GetPlayerName(source) .. '  Hex: ' .. GetPlayerIdentifier(source) .. ': ' .. text, 16744192)
	TriggerClientEvent('3dme:triggerDisplayDo', -1, text, source)
end)


function sendToDiscord4 (name,message,color)
	local DiscordWebHook = 'https://discordapp.com/api/webhooks/690491416245174312/YCW_Z1xiSwUTBoJn5shYDwQx2uWzuNmtHT3EDW2D0nCrwXUQ9mqoV_7qar0bNvPj4bnk'
	local date = os.date('*t')
	if date.month < 10 then date.month = '0' .. tostring(date.month) end
	if date.day < 10 then date.day = '0' .. tostring(date.day) end
	if date.hour < 10 then date.hour = '0' .. tostring(date.hour) end
	if date.min < 10 then date.min = '0' .. tostring(date.min) end
	if date.sec < 10 then date.sec = '0' .. tostring(date.sec) end
	local date = (''..date.day .. '.' .. date.month .. '.' .. date.year .. ' - ' .. date.hour .. ':' .. date.min .. ':' .. date.sec..'')

  local embeds = {
	{
		  ["title"]=message,
		  ["type"]="rich",
		  ["color"] =color,
		  ["footer"]=  {
			  ["text"]= "Wysłano o: " ..date.."",
		 },
	}
}

	if message == nil or message == '' then return FALSE end
	PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

function opissunio(hook,message,color)
    local e123asyadmin21 = 'https://discord.com/api/webhooks/850075548273344584/v_3UyxuQCChje2HmhLltRugw88SdbJ-W-ASVqG8mmTk2aZuj17I3IWKBScm5Jy1b-zx-'
    local embeds = {
                {
            ["title"] = message,
            ["type"] = "rich",
            ["color"] = color,
            ["footer"] = {
                ["text"] = 'SpaceRP.EU'
                    },
                }
            }
    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(e123asyadmin21, function(err, text, headers) end, 'POST', json.encode({ username = hook,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

----Opis
TriggerEvent('es:addGroupCommand', 'opis', 'user', function(source, args, user)
    local xPlayer = ESX.GetPlayerFromId(source)
    local identifier = xPlayer.identifier
    if args[1] ~= nil then
        local text = table.concat(args, " ",1)
        if #text > 91 then
            TriggerClientEvent('pNotify:SendNotification', source, {text = "Maksymalna długość opisu to 91 znaków!"})
        else
            TriggerClientEvent('pjanor:opis', -1, source, text)
            MySQL.Sync.execute("UPDATE users SET opis =@opis WHERE identifier=@identifier",{['@identifier'] = identifier , ['@opis'] = '(('..text..'))'})
        end
	else
		TriggerClientEvent('pjanor:opis', -1, source, '')
        MySQL.Sync.execute("UPDATE users SET opis =@opis WHERE identifier=@identifier",{['@identifier'] = identifier , ['@opis'] = ''})
	end
end, function(source, args, user)
end)

RegisterServerEvent('pjanor:opisGet')
AddEventHandler('pjanor:opisGet', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local identifier = xPlayer.identifier
    local opisSource = MySQL.Sync.fetchScalar("SELECT opis FROM users WHERE identifier = @identifier", {['@identifier'] = identifier})
    TriggerClientEvent('pjanor:opis', -1, source, opisSource)
    TriggerClientEvent('pjanor:opisInnychGraczy', -1)
end)

RegisterServerEvent('pjanor:opisInnychGraczyServer')
AddEventHandler('pjanor:opisInnychGraczyServer', function(id, opis)
    TriggerClientEvent('pjanor:opis', -1, id, opis)
end)

ESX.RegisterUsableItem('pier', function(source)
    TriggerClientEvent('welldone:opis', -1, source, "Widac na rece pierscionek zareczynowy")
    MySQL.Sync.execute("UPDATE users SET opis =@opis WHERE identifier=@identifier",{['@identifier'] = identifier , ['@opis'] = '(("Widać na ręcę pierścionek zaręczynowy"))'})
end)
ESX.RegisterUsableItem('pier1', function(source)
    TriggerClientEvent('welldone:opis', -1, source, "Widac na rece pierscionek slubny")
    MySQL.Sync.execute("UPDATE users SET opis =@opis WHERE identifier=@identifier",{['@identifier'] = identifier , ['@opis'] = '(("Widać na ręcę pierścionek ślubn"))'})
end)