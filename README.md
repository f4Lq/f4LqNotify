1. To display a notification you should call it like below:
   1. Using Client Side:
exports['f4lqNotify']:Alert("Title", "Message", Time, 'type')

   2. Using Server Side:
TriggerClientEvent('f4LqNotify:Alert', source, "Title", "Message", Time, 'type')


2. To set the notification display time, use:
   1. 1000 - `[1 second]`
   2. 2000 - `[2 seconds]`
   3. 5000 - `[5 seconds]`
   4. 10000 - `[10 seconds]`
   5. etc...

3. To change the type of notification, use this types of notifications:
   1. success
   2. info
   3. warning
   4. error
   5. sms
   6. long

4. To change the icon of notification, use:
   1. Icon Library: https://fontawesome.com/v5/cheatsheet
   2. Open file `styles.css`
   3. Change this lines (only value!): `content: "\f00c";`
   4. Here u are :)

5. Don't forget to delete example notifications in file `client.lua` from line `15` to `51` (or don't delete if you don't want to)

6. Command

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
