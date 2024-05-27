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

---[ EXAMPLE NOTIFY (DELETE THIS BELOW) ]---

RegisterCommand('notify1', function()
	exports['f4LqNotify']:Alert("SUCCESS", "<span style='color:#c7c7c7'>Wycofałeś się <span style='color:#069a19'><b>100$</b></span>!", 5000, 'success')
end)

RegisterCommand('notify2', function()
	exports['f4LqNotify']:Alert("INFORMATION", "<span style='color:#c7c7c7'>Serwer uruchom ponownie <span style='color:#fff'>5 minuty</span>!", 5000, 'info')
end)

RegisterCommand('notify3', function()
	exports['f4LqNotify']:Alert("ERROR", "<span style='color:#c7c7c7'>Ty nie masz <span style='color:#ff0000'>permissions</span>!", 5000, 'error')
end)

RegisterCommand('notify4', function()
	exports['f4LqNotify']:Alert("NEW SMS", "<span style='color:#ffc107'>695-2713: </span><span style='color:#c7c7c7'> Jak się masz?", 5000, 'warning')
end)

RegisterCommand('notify5', function()
	exports['f4LqNotify']:Alert("TWITTER", "<span style='color:#01a2dc'>@USER69: </span><span style='color:#c7c7c7'>Witam wszystkich!", 5000, 'sms')
end)

RegisterCommand('notify6', function()
	exports['f4LqNotify']:Alert("SAVED", "<span style='color:#c7c7c7'>Ubrania zapisane pomyślnie!", 5000, 'long')
end)

RegisterCommand('notify7', function()
	exports['f4LqNotify']:Alert("OGŁOSZENIE", "<span style='color:#c7c7c7'>Administarcyjne ogłoszenie!", 5000, 'admin')
end)

RegisterCommand('notify8', function()
	exports['f4LqNotify']:Alert("CAR", "<span style='color:#c7c7c7'>Informacje powiązane z Pojazdami!", 5000, 'car')
end)

---[ ALL IN ONE NOTIFY (DELETE THIS BELOW) ]---

RegisterCommand('allnotify', function()
	exports['f4LqNotify']:Alert("SUCCESS", "<span style='color:#c7c7c7'>Wycofałeś się <span style='color:#069a19'><b>100$</b></span>!", 5000, 'success')
	exports['f4LqNotify']:Alert("INFORMATION", "<span style='color:#c7c7c7'>Serwer uruchom ponownie <span style='color:#fff'>5 minuty</span>!", 5000, 'info')
	exports['f4LqNotify']:Alert("ERROR", "<span style='color:#c7c7c7'>Ty nie masz <span style='color:#ff0000'>permissions</span>!", 5000, 'error')
	exports['f4LqNotify']:Alert("NEW SMS", "<span style='color:#ffc107'>695-2713: </span><span style='color:#c7c7c7'> Jak się masz?", 5000, 'warning')
	exports['f4LqNotify']:Alert("TWITTER", "<span style='color:#01a2dc'>@USER69: </span><span style='color:#c7c7c7'> Witam wszystkich!", 5000, 'sms')
	exports['f4LqNotify']:Alert("SAVED", "<span style='color:#c7c7c7'>Ubrania zapisane pomyślnie!", 5000, 'long')
	exports['f4LqNotify']:Alert("OGŁOSZENIE", "<span style='color:#c7c7c7'>Administarcyjne ogłoszenie!", 5000, 'admin')
	exports['f4LqNotify']:Alert("CAR", "<span style='color:#c7c7c7'>Informacje powiązane z Pojazdami!", 5000, 'car')
end)
