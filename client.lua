ESX = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

-- Notify

function Alert(title, message, time, type)
	SendNUIMessage({
		action = 'open',
		title = title,
		type = type,
		message = message,
		time = time,
	})
end

RegisterNetEvent('f4LqNotify:Alert')
AddEventHandler('f4LqNotify:Alert', function(title, message, time, type)
	Alert(title, message, time, type)
end)

--Notify testing command

RegisterCommand('allnotify', function()
	f4LqNotify()
end,false)

function f4LqNotify()
  
	ESX.TriggerServerCallback('f4Lq_tpm:getUsergroup', function(group)
	  playergroup = group
	  
	  if playergroup == 'admin' or playergroup == 'superadmin' or playergroup == 'mod' or playergroup == '_dev' then
		local playerPed = GetPlayerPed(-1)
		exports['f4LqNotify']:Alert("SUCCESS", "<span style='color:#c7c7c7'>Wycofałeś się <span style='color:#069a19'><b>100$</b></span>!", 5000, 'success')
		exports['f4LqNotify']:Alert("INFORMATION", "<span style='color:#c7c7c7'>Serwer uruchom ponownie <span style='color:#fff'>5 minuty</span>!", 5000, 'info')
		exports['f4LqNotify']:Alert("ERROR", "<span style='color:#c7c7c7'>Ty nie masz <span style='color:#ff0000'>permissions</span>!", 5000, 'error')
		exports['f4LqNotify']:Alert("NEW SMS", "<span style='color:#ffc107'>695-2713: </span><span style='color:#c7c7c7'> Jak się masz?", 5000, 'warning')
		exports['f4LqNotify']:Alert("TWITTER", "<span style='color:#01a2dc'>@USER69: </span><span style='color:#c7c7c7'> Witam wszystkich!", 5000, 'sms')
		exports['f4LqNotify']:Alert("SAVED", "<span style='color:#c7c7c7'>Ubrania zapisane pomyślnie!", 5000, 'long')
		exports['f4LqNotify']:Alert("OGŁOSZENIE", "<span style='color:#c7c7c7'>Administarcyjne ogłoszenie!", 5000, 'admin')
		exports['f4LqNotify']:Alert("CAR", "<span style='color:#c7c7c7'>Informacje powiązane z Pojazdami!", 5000, 'car')
	  end
	end)
end