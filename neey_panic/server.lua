ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('panicbutton:on') 
AddEventHandler('panicbutton:on', function(kords)
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local xPlayers = ESX.GetPlayers()
    local item = xPlayer.getInventoryItem("radio")
    check = false
    if item.count >= 1 then
        check = true
    for i=1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        if xPlayer.job.name == 'police' then
                TriggerClientEvent('pb_check_test', source, check)
                TriggerClientEvent('panicbutton:on', xPlayers[i], kords)
        end
    end
	local data = {displayCode = 'PANIC', description = "PANNIC AKTYWOWANY", isImportant = 1, recipientList = {'police'}, length = '10000', infoM = 'fas fa-exclamation-triangle', info = "FUCKNJONARIUSZ UŻYŁ PANIC BUTTONA, WSZYSTKIE JEDNOSTKI NA MIEJSCE!", blipSprite = 161, blipScale = 0.9, blipColour = 1}
   	local dispatchData = {dispatchData = data, caller = "DYSPOZYTORNIA", street = streetName, coords = kords}    
    	TriggerEvent('wf-alerts:svNotify', dispatchData)

else
    TriggerClientEvent('pb_check_test', source, check)
    check = false
end
end)

