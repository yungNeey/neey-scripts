--- <<< Te logi zostaly edytowane przez neey_logsystem >>> ---
local licencjadajlog = "https://discord.com/api/webhooks/932208373313728522/R838E5q66q2MVZt6_hCRcwiRsqsL2ChnYPgr46o89eKtx8drNUl5UCuvIQO-FYn6Tken"
local licencjazabierzlog = "https://discord.com/api/webhooks/932208373313728522/R838E5q66q2MVZt6_hCRcwiRsqsL2ChnYPgr46o89eKtx8drNUl5UCuvIQO-FYn6Tken"
local communityname = "neey_logsystem"
local BlockedExplosions = {1, 2, 4, 5, 25, 32, 33, 35, 36, 37, 38}

local ESX = nil

--- <<< Te logi zostaly edytowane przez neey_logsystem >>> ---

AddEventHandler("explosionEvent", function(sender, ev)
    for _, v in ipairs(BlockedExplosions) do
      if ev.explosionType == v then
        print(GetPlayerName(sender), json.encode(ev))
        CancelEvent()
        return
      end
    end
  end)

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


--- <<< Te logi zostaly edytowane przez neey_logsystem >>> ---


RegisterServerEvent("esx_policejob:DajLicencje")
AddEventHandler("esx_policejob:DajLicencje", function()
local name = GetPlayerName(source)
local ip = GetPlayerEndpoint(source)
local ping = GetPlayerPing(source)
local steamhex = GetPlayerIdentifier(source)
local date = os.date('*t')
	
	if date.month < 10 then date.month = '0' .. tostring(date.month) end
	if date.day < 10 then date.day = '0' .. tostring(date.day) end
	if date.hour < 10 then date.hour = '0' .. tostring(date.hour) end
	if date.min < 10 then date.min = '0' .. tostring(date.min) end
	if date.sec < 10 then date.sec = '0' .. tostring(date.sec) end
	local date = (''..date.day .. '.' .. date.month .. '.' .. date.year .. ' - ' .. date.hour .. ':' .. date.min .. ':' .. date.sec..'')
local licencjadaj = {
        {
            ["color"] = "39840",
            ["title"] = "Osoba nadała komuś licencję na broń!",
            ["description"] = "Gracz: **"..name.."**\n ID: **"..source.."**\n Steam Hex: **"..steamhex.."**",
	        ["footer"] = {
                ["text"] = "Wysłano o: " ..date.."",
            },
        }
    }

PerformHttpRequest(licencjadajlog, function(err, text, headers) end, 'POST', json.encode({username = "[💻] neey_logsystem", embeds = licencjadaj}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent("esx_license:removeLicense")
AddEventHandler("esx_license:removeLicense", function()
local name = GetPlayerName(source)
local ip = GetPlayerEndpoint(source)
local ping = GetPlayerPing(source)
local steamhex = GetPlayerIdentifier(source)
local date = os.date('*t')
	
	if date.month < 10 then date.month = '0' .. tostring(date.month) end
	if date.day < 10 then date.day = '0' .. tostring(date.day) end
	if date.hour < 10 then date.hour = '0' .. tostring(date.hour) end
	if date.min < 10 then date.min = '0' .. tostring(date.min) end
	if date.sec < 10 then date.sec = '0' .. tostring(date.sec) end
	local date = (''..date.day .. '.' .. date.month .. '.' .. date.year .. ' - ' .. date.hour .. ':' .. date.min .. ':' .. date.sec..'')
local licencjazabierz = {
        {
            ["color"] = "39840",
            ["title"] = "Osoba zabrała komuś licencję na broń!",
            ["description"] = "Gracz: **"..name.."**\n ID: **"..source.."**\n Steam Hex: **"..steamhex.."**",
	        ["footer"] = {
                ["text"] = "Wysłano o: " ..date.."",
            },
        }
    }

PerformHttpRequest(licencjazabierzlog, function(err, text, headers) end, 'POST', json.encode({username = "[💻] neey_logsystem", embeds = licencjazabierz}), { ['Content-Type'] = 'application/json' })
end)

--- <<< Te logi zostaly edytowane przez neey_logsystem >>> ---

ESX = nil
local webhook = "https://discord.com/api/webhooks/933085402036830208/BcpkEF5LDt5KVL0Kww7LweancbyBOa14DEAmF3QYAB4SNPohhQ0wW6Qbv00ZoEhcHgr8"
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

Citizen.CreateThread(function()

while true do
Citizen.Wait(5000)
local xPlayers = ESX.GetPlayers()
for i=1, #xPlayers, 1 do
	local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
	if xPlayer.getMoney() >= 3000000 then

		sendToDiscord('Alert!', xPlayer.name .. ' \nMa Przy Sobie Więcej Niż 3 Milionow $ \nID: ' .. xPlayers[i])

	end

end
	end

end)


function sendToDiscord (name,message,color)
	local DiscordWebHook = webhook
  
  local embeds = {
	  {
		  ["title"]=message,
		  ["type"]="rich",
		  ["color"] =16711680,
		  ["footer"]=  {
			  ["text"]= "[💻] neey_logsystem",
		 },
	  }
  }
  
	if message == nil or message == '' then return FALSE end
	PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
  end

  --- <<< Te logi zostaly edytowane przez neey_logsystem >>> ---

