
RegisterNetEvent('sendProximityMessage')
AddEventHandler('sendProximityMessage', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    TriggerEvent('chatMessage', "^4" .. name .. "", {0, 153, 204}, "^7 " .. message)
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
    TriggerEvent('chatMessage', "^4" .. name .. "", {0, 153, 204}, "^7 " .. message)
  end
end)

RegisterNetEvent('sendProximityMessageMe')
AddEventHandler('sendProximityMessageMe', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    TriggerEvent('chatMessage', "", {255, 0, 0}, " ^6 " .. name .." ".."^6 " .. message)
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
    TriggerEvent('chatMessage', "", {255, 0, 0}, " ^6 " .. name .." ".."^6 " .. message)
  end
end)

RegisterNetEvent('sendProximityMessageDo')
AddEventHandler('sendProximityMessageDo', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    TriggerEvent('chatMessage', "", {255, 0, 0}, " ^0* " .. name .."  ".."^0  " .. message)
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
    TriggerEvent('chatMessage', "", {255, 0, 0}, " ^0* " .. name .."  ".."^0  " .. message)
  end
end)

RegisterNetEvent('sendProximityMessageRoll')
AddEventHandler('sendProximityMessageRoll', function(id, name, num)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    if num > 10 and num == 20 then
    TriggerEvent("chatMessage", "[ROLL]", {255,0,0}, "" .. name .. "'s Action ^2 has Critically Succeeded!")
    end
	
	if num > 10 and  num ~= 20 then
    TriggerEvent("chatMessage", "[ROLL]", {255,0,0}, "" .. name .. "'s Action ^2 has Succeeded!")
    end
	
    if num < 10 and num == 1 then
    TriggerEvent("chatMessage", "[ROLL]", {255,0,0}, "" .. name .. "'s Action ^1 has Crtically Failed!")
    end
	
	if num < 10 and num ~= 1 then
    TriggerEvent("chatMessage", "[ROLL]", {255,0,0}, "" .. name .. "'s Action ^1 has Failed!")
    end
	
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
     if num > 10 and num == 20 then
    TriggerEvent("chatMessage", "[ROLL]", {255,0,0}, "" .. name .. "'s Action ^2 has Critically Succeeded!")
    end
	
	if num > 10 and  num ~= 20 then
    TriggerEvent("chatMessage", "[ROLL]", {255,0,0}, "" .. name .. "'s Action ^2 has Succeeded!")
    end
	
    if num < 10 and num == 1 then
    TriggerEvent("chatMessage", "[ROLL]", {255,0,0}, "" .. name .. "'s Action ^1 has Crtically Failed!")
    end
	
	if num < 10 and num ~= 1 then
    TriggerEvent("chatMessage", "[ROLL]", {255,0,0}, "" .. name .. "'s Action ^1 has Failed!")
    end
  end
end)
