

RegisterNetEvent('sendProximityMessage')
AddEventHandler('sendProximityMessage', function(id, name, message)
  local monid = PlayerId()
  local sonid = GetPlayerFromServerId(id)
  if sonid == monid then
    TriggerEvent('chat:addMessage', {
      template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(70, 70, 70, 0.4); border-radius: 4px;"><i class="far fa-comment-dots"></i>&nbsp;[{2}] {0}: {1}</div>',
args = { name, message, id }
  })
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(monid)), GetEntityCoords(GetPlayerPed(sonid)), true) < 19.999 then
    TriggerEvent('chat:addMessage', {
      template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(70, 70, 70, 0.4); border-radius: 4px;"><i class="far fa-comment-dots"></i>&nbsp;[{2}] {0}: {1}</div>',
args = { name, message, id }
  })
  end
end)

RegisterNetEvent('sendProximityMessageMed')
AddEventHandler('sendProximityMessageMed', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    TriggerEvent('chat:addMessage', {
      template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(255, 148, 148, 0.6); border-radius: 4px;"><i class="fas fa-first-aid"></i>^* [{0}]</b><i>  ^r{1} </i></div>',
      args = { ''..id..'', message }
    })
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
    TriggerEvent('chat:addMessage', {
      template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(255, 148, 148, 0.6); border-radius: 4px;"><i class="fas fa-first-aid"></i>^* [{0}]</b><i>  ^r{1} </i></div>',
      args = { ''..id..'', message }
    })
  end
end)

RegisterNetEvent('sendProximityMessageMe')
AddEventHandler('sendProximityMessageMe', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    TriggerEvent('chat:addMessage', {
      template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(10, 158, 199, 0.6); border-radius: 4px;"><i class="far fa-user-circle"></i>^* [{0}] </b><i>  ^r{1} </i></div>',
      args = { ''..id..'', message }
    })
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
    TriggerEvent('chat:addMessage', {
      template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(10, 158, 199, 0.6); border-radius: 4px;"><i class="far fa-user-circle"></i>^* [{0}] </b><i>  ^r{1} </i></div>',
      args = { ''..id..'', message }
    })
  end
end)

RegisterNetEvent('sendProximityMessageDo')
AddEventHandler('sendProximityMessageDo', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    TriggerEvent('chat:addMessage', {
      template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(119, 0, 143, 0.6); border-radius: 4px;"><i class="fas fa-user-circle"></i>^* [{0}]<i>  ^r{1} </i></div>',
      args = { ''..id..'', message }
  })
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
    TriggerEvent('chat:addMessage', {
      template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(119, 0, 143, 0.6); border-radius: 4px;"><i class="fas fa-user-circle"></i>^* [{0}]<i>  ^r{1} </i></div>',
      args = { ''..id..'', message }
    })
  end
end)

RegisterNetEvent('sendProximityMessageCzy')
AddEventHandler('sendProximityMessageCzy', function(id, name, message, czy)
    local myId = PlayerId()
    local pid = GetPlayerFromServerId(id)

	if czy == 1 then
      if pid == myId then
        TriggerEvent('chat:addMessage', {
          template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(86, 166, 20, 0.6); border-radius: 4px;"><i class="far fa-check-circle"></i>&nbsp;<i> ^* [{0}]  ^r{1} </i> (udane)</div>',
            args = { name, ' ' ..message }
        })
      elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
        TriggerEvent('chat:addMessage', {
          template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(86, 166, 20, 0.6); border-radius: 4px;"><i class="far fa-check-circle"></i>&nbsp;<i> ^* [{0}]  ^r{1} </i> (udane)</div>',
            args = { name, ' ' ..message }
        })
      end
	elseif czy == 2 then
	  if pid == myId then
        TriggerEvent('chat:addMessage', {
          template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(196, 20, 20, 0.6); border-radius: 4px;"><i class="far fa-times-circle"></i>&nbsp;<i> ^* [{0}]  ^r{1} </i> (nieudane)</div>',
            args = { name, ' ' ..message }
        })
      elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
        TriggerEvent('chat:addMessage', {
          template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(196, 20, 20, 0.6); border-radius: 4px;"><i class="far fa-times-circle"></i>&nbsp;<i> ^* [{0}]  ^r{1} </i> (nieudane)</div>',
            args = { name, ' ' ..message }
        })
      end
	end
end)

local PlayerData              = {}

ESX                           = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
end)


RegisterNetEvent('localsenddw')
AddEventHandler('localsenddw', function(fal, msg)
  if PlayerData.job ~= nil and PlayerData.job.name ~= 'police' and PlayerData.job.name ~= 'offpolice' and PlayerData.job.name ~= 'ambulance' and PlayerData.job.name ~= 'offambulance' then
		TriggerEvent('chat:addMessage', {
      template = '<div style="padding: 0.4vw; margin-top: 0.3vw; margin-right: 0.8vw; background-color: rgba(204, 73, 0, 0.6); border-radius: 4px;"><i class="fas fa-laptop-code"></i>&nbsp; <b>{0}:</b> {1}</div>',
      args = { fal, msg }
    })
  end
end)

RegisterNetEvent('checksluzba')
AddEventHandler('checksluzba', function()
  if PlayerData.job ~= nil and PlayerData.job.name == 'police' or PlayerData.job.name == 'offpolice' or PlayerData.job.name == 'ambulance' or PlayerData.job.name == 'offambulance' then
    TriggerEvent('notify')
  end
  end)

RegisterNetEvent('notify')
AddEventHandler('notify', function()

TriggerEvent('pNotify:SendNotification', {text = 'Serio służba i darkweb?!', type = "error", timeout = 5000, layout = "bottomLeft"})
end)



local color = {r = 37, g = 175, b = 134, alpha = 255} -- Color of the text
local color2 = {r = 37, g = 175, b = 134, alpha = 255}
local font = 4 -- Font of the text
local time = 15000 -- Duration of the display of the text : 1000ms = 1sec
local nbrDisplaying = 0


RegisterNetEvent('3dme:triggerDisplayMe')
AddEventHandler('3dme:triggerDisplayMe', function(text, source)
  local offset = 1 + (nbrDisplaying*0.14)
  local myId = PlayerId()
--print(myId)

  local pid = GetPlayerFromServerId(source)
--print(pid)
if pid == myId then

DisplayMe(GetPlayerFromServerId(source), text, offset)
elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then

DisplayMe(GetPlayerFromServerId(source), text, offset)
end
  --Display(GetPlayerFromServerId(source), text, offset)
end)

RegisterNetEvent('3dme:triggerDisplayDo')
AddEventHandler('3dme:triggerDisplayDo', function(text, source)
    local offset = 1 + (nbrDisplaying*0.14)
    local myId = PlayerId()

    local pid = GetPlayerFromServerId(source)
 if pid == myId then
  DisplayDo(GetPlayerFromServerId(source), text, offset)
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
  DisplayDo(GetPlayerFromServerId(source), text, offset)
  end
end)

RegisterNetEvent('3dme:triggerDisplayTry')
AddEventHandler('3dme:triggerDisplayTry', function(text, source)
    local offset = 1 + (nbrDisplaying*0.14)
    local myId = PlayerId()

    local pid = GetPlayerFromServerId(source)
 if pid == myId then
  DisplayTry(GetPlayerFromServerId(source), text, offset)
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
    DisplayTry(GetPlayerFromServerId(source), text, offset)
  end
end)

RegisterNetEvent('3dme:triggerDisplayTry2')
AddEventHandler('3dme:triggerDisplayTry2', function(text, source)
    local offset = 1 + (nbrDisplaying*0.14)
    local myId = PlayerId()

    local pid = GetPlayerFromServerId(source)
 if pid == myId then
  DisplayTry2(GetPlayerFromServerId(source), text, offset)
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
    DisplayTry2(GetPlayerFromServerId(source), text, offset)
  end
end)

function DisplayTry(mePlayer, text, offset)
  local displaying = true
  Citizen.CreateThread(function()
      Wait(time)
      displaying = false
  end)
  Citizen.CreateThread(function()
      nbrDisplaying = nbrDisplaying + 1
      while displaying do
          Wait(0)
          local coords = GetEntityCoords(GetPlayerPed(mePlayer), false)
          DrawText3Dtry(coords['x'], coords['y'], coords['z']+offset, text)
      end
      nbrDisplaying = nbrDisplaying - 1
  end)
end

function DisplayTry2(mePlayer, text, offset)
  local displaying = true
  Citizen.CreateThread(function()
      Wait(time)
      displaying = false
  end)
  Citizen.CreateThread(function()
      nbrDisplaying = nbrDisplaying + 1
      while displaying do
          Wait(0)
          local coords = GetEntityCoords(GetPlayerPed(mePlayer), false)
          DrawText3Dtry2(coords['x'], coords['y'], coords['z']+offset, text)
      end
      nbrDisplaying = nbrDisplaying - 1
  end)
end

function DrawText3Dtry(x,y,z, text)
  local onScreen,_x,_y=World3dToScreen2d(x,y,z)
  local px,py,pz=table.unpack(GetGameplayCamCoords())

  SetTextScale(0.40, 0.40)
  SetTextFont(4)
  SetTextProportional(1)
  SetTextColour(255, 255, 255, 215)
  SetTextEntry("STRING")
  SetTextCentre(1)
  AddTextComponentString(text)
  DrawText(_x,_y)
  local factor = (string.len(text)) / 370
  DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 86, 166, 20, 150)
end

function DrawText3Dtry2(x,y,z, text)
  local onScreen,_x,_y=World3dToScreen2d(x,y,z)
  local px,py,pz=table.unpack(GetGameplayCamCoords())

  SetTextScale(0.40, 0.40)
  SetTextFont(4)
  SetTextProportional(1)
  SetTextColour(255, 255, 255, 215)
  SetTextEntry("STRING")
  SetTextCentre(1)
  AddTextComponentString(text)
  DrawText(_x,_y)
  local factor = (string.len(text)) / 370
  DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 196, 20, 20, 150)
end

RegisterNetEvent('3dme:triggerDisplayMed')
AddEventHandler('3dme:triggerDisplayMed', function(text, source)
    local offset = 1 + (nbrDisplaying*0.14)
    local myId = PlayerId()

    local pid = GetPlayerFromServerId(source)
 if pid == myId then
  DisplayMed(GetPlayerFromServerId(source), text, offset)
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
    DisplayMed(GetPlayerFromServerId(source), text, offset)
  end
end)

RegisterNetEvent('3dme:triggerDisplayMed')
AddEventHandler('3dme:triggerDisplayMed', function(text, source)
    local offset = 1 + (nbrDisplaying*0.14)
    local myId = PlayerId()

    local pid = GetPlayerFromServerId(source)
 if pid == myId then
  DisplayMed(GetPlayerFromServerId(source), text, offset)
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
    DisplayMed(GetPlayerFromServerId(source), text, offset)
  end
end)


function DisplayMe(mePlayer, text, offset)
    local displaying = true
    Citizen.CreateThread(function()
        Wait(time)
        displaying = false
    end)
    Citizen.CreateThread(function()
        nbrDisplaying = nbrDisplaying + 1
        while displaying do
            Wait(0)
            local coords = GetEntityCoords(GetPlayerPed(mePlayer), false)
            DrawText3Dme(coords['x'], coords['y'], coords['z']+offset, text)
        end
        nbrDisplaying = nbrDisplaying - 1
    end)
end

function DisplayDo(mePlayer, text, offset)
    local displaying = true
    Citizen.CreateThread(function()
        Wait(time)
        displaying = false
    end)
    Citizen.CreateThread(function()
        nbrDisplaying = nbrDisplaying + 1
        while displaying do
            Wait(0)
            local coords = GetEntityCoords(GetPlayerPed(mePlayer), false)
            DrawText3Ddo(coords['x'], coords['y'], coords['z']+offset, text)
        end
        nbrDisplaying = nbrDisplaying - 1
    end)
end

function DisplayMed(mePlayer, text, offset)
    local displaying = true
    Citizen.CreateThread(function()
        Wait(time)
        displaying = false
    end)
    Citizen.CreateThread(function()
        nbrDisplaying = nbrDisplaying + 1
        while displaying do
            Wait(0)
            local coords = GetEntityCoords(GetPlayerPed(mePlayer), false)
            DrawText3Dmed(coords['x'], coords['y'], coords['z']+offset, text)
        end
        nbrDisplaying = nbrDisplaying - 1
    end)
end


function DrawText3Dme(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())

    SetTextScale(0.40, 0.40)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 10, 158, 199, 150)
end


function DrawText3Ddo(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())

    SetTextScale(0.40, 0.40)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 119, 0, 143, 150)
end

function DrawText3Dmed(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())

    SetTextScale(0.40, 0.40)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 255, 148, 148, 150)
end



function DrawAdvancedText(x,y ,w,h,sc, text, r,g,b,a,font,jus)
  SetTextFont(font)
  SetTextProportional(0)
  SetTextScale(sc, sc)
      N_0x4e096588b13ffeca(jus)
  SetTextColour(r, g, b, a)
  SetTextDropShadow(0, 0, 0, 0,255)
  SetTextEdge(1, 0, 0, 0, 255)
  SetTextDropShadow()
  SetTextOutline()
  SetTextEntry("STRING")
  AddTextComponentString(text)
      DrawText(x - 0.1+w, y - 0.02+h)
end



--[[function DrawText3D(x,y,z, text)
    local onScreen,_x,_y = World3dToScreen2d(x,y,z)
    local px,py,pz = table.unpack(GetGameplayCamCoord())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)

    local scale = (1/dist)*2
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov

    if onScreen then
        SetTextScale(0.0*scale, 0.55*scale)
        SetTextFont(font)
        SetTextProportional(1)
        SetTextColour(color.r, color.g, color.b, color.alpha)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(true)
        AddTextComponentString(text)
        EndTextCommandDisplayText(_x, _y)
    end
end]]

function DrawText3D(x,y,z, text, color)
  local onScreen,_x,_y = World3dToScreen2d(x,y,z)
  local px,py,pz = table.unpack(GetGameplayCamCoord())
  local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)

  local scale = (1/dist)*2
  local fov = (1/GetGameplayCamFov())*100
  local scale = scale*fov

  if onScreen then
      SetTextScale(0.0*scale, 0.55*scale)
      SetTextFont(font)
      SetTextProportional(1)
      SetTextColour(color.r, color.g, color.b, color.alpha)
      SetTextDropshadow(0, 0, 0, 0, 255)
      SetTextEdge(2, 0, 0, 0, 150)
      SetTextDropShadow()
      SetTextOutline()
      SetTextEntry("STRING")
      SetTextCentre(true)
      AddTextComponentString(text)
      EndTextCommandDisplayText(_x, _y)
  end
end

----Opppisunio 

local opisy = {}

local displayOpisHeight = -0.1
local playerOpisDist = 20
local red = 205
local green = 255
local blue = 155

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)

    local scale = (1/dist)*2
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov*1.5

    if onScreen then
        SetTextScale(0.0*scale, 0.55*scale)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(red, green, blue, 255)
        SetTextDropshadow(3, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
		World3dToScreen2d(x,y,z, 0) --Added Here
        DrawText(_x,_y)
    end
end

function DrawText3DOpis(x,y,z, text)
    z = z + 0.3
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)

    local scale = (1/dist)*2
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov*0.6

    if onScreen then
        SetTextScale(0.0*scale, 0.55*scale)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(red, green, blue, 255)
        SetTextDropshadow(3, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
		    World3dToScreen2d(x,y,z, 0) --Added Here
        DrawText(_x,_y)
    end
end

RegisterNetEvent('pjanor:opis')
AddEventHandler('pjanor:opis', function(player, opis)
    local info = opis
    local ajdi = player
    opisy[ajdi] = info
end)

RegisterNetEvent('pjanor:opisInnychGraczy')
AddEventHandler('pjanor:opisInnychGraczy', function()
    local AjDi = GetPlayerServerId(PlayerId())
    local MojOpis = opisy[AjDi]
    TriggerServerEvent('pjanor:opisInnychGraczyServer', AjDi, MojOpis)
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for _, player in ipairs(GetActivePlayers()) do
            N_0x31698aa80e0223f8(player)
        end
        for _, player2 in ipairs(GetActivePlayers()) do
            local ajdi = GetPlayerServerId(player2)
            if (opisy[ajdi] ~= nil and tostring(opisy[ajdi]) ~= '') then

                ped = GetPlayerPed( player2 )
                blip = GetBlipFromEntity( ped )

                xx1, yy1, zz1 = table.unpack( GetEntityCoords( GetPlayerPed( -1 ), true ) )
                xx2, yy2, zz2 = table.unpack( GetEntityCoords( GetPlayerPed( player2 ), true ) )
                distance2 = math.floor(GetDistanceBetweenCoords(xx1,  yy1,  zz1,  xx2,  yy2,  zz2,  true))

                if ((distance2 < playerOpisDist)) then
                    local tekst = tostring(opisy[ajdi])
                    local words = {}
                    for word in tekst:gmatch("%w+") do table.insert(words, word) end
                    if #tekst > 40 then
                        local part1 = ''
                        local part2 = ''
                        local srodek = math.floor(#words * 0.5)
                        local srodek2 = srodek + 1
                        for i=1, srodek do
                            part1 = part1..words[i]..' '
                        end
                        for i=srodek+1, #words do
                            if i ~= #words then
                                part2 = part2..words[i]..' '
                            elseif i ==  #words then
                                part2 = part2..words[i]
                            end
                        end
                        --part2 = part2.gsub(" ))", "))")
                        DrawText3DOpis(xx2, yy2, zz2 + displayOpisHeight, part1..'~n~'..part2)
                    else
                        DrawText3DOpis(xx2, yy2, zz2 + displayOpisHeight, tekst)
                    end
                end

            end
        end
    end
end)