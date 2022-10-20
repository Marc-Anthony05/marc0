local handsup = false

Citizen.CreateThread(function()
    local dict = "missminuteman_1ig_2"
    
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(100)
	end
	while true do
		Citizen.Wait(0)
		if IsControlJustPressed(1, 101) then --Start holding h
            if not handsup then
                TaskPlayAnim(GetPlayerPed(-1), dict, "handsup_base", 8.0, 8.0, -1, 50, 0, false, false, false)
                handsup = true
            else
                handsup = false
                ClearPedTasks(GetPlayerPed(-1))
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(500)
        while handsup do
             Wait(0)
             
		    DisableControlAction(0, 24, true) 
			DisableControlAction(0, 257, true) 
			DisableControlAction(0, 25, true) 
			DisableControlAction(0, 263, true) 
			DisableControlAction(0, 21, true)
            DisableControlAction(0, 288, true)
            DisableControlAction(0, 289, true)
			DisableControlAction(0, 170, true)
            DisableControlAction(0, 167, true)
            DisableControlAction(0, 311, true)
            DisableControlAction(0, 23, true)

			DisableControlAction(0, 45, true) 
			DisableControlAction(0, 22, true) 
			DisableControlAction(0, 44, true) 
			DisableControlAction(0, 37, true) 
		    DisableControlAction(2, 36, true) 

			DisableControlAction(0, 47, true)  
			DisableControlAction(0, 264, true) 
			DisableControlAction(0, 257, true) 
			DisableControlAction(0, 140, true) 
			DisableControlAction(0, 141, true) 
			DisableControlAction(0, 142, true) 
			DisableControlAction(0, 143, true) 
            DisableControlAction(0, 327, true) 
            DisableControlAction(0, 73, true) 
        end
     end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0) 
        if IsPedInAnyVehicle(PlayerPedId(), true) then 
            DisableControlAction(0, 101, true)
        end
    end
end)