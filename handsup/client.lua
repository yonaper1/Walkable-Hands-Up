Citizen.CreateThread(function()
    local dict = "world_human_cop_idles"
    
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(100)
	end
    local cop = false
	while true do
		Citizen.Wait(0)
		if IsControlJustPressed(1, 323) then --Start holding X
            if not cop then
                TaskPlayAnim(GetPlayerPed(-1), dict, "cop_enter", 8.0, 8.0, -1, 50, 0, false, false, false)
                cop = true
            else
                cop = false
                ClearPedTasks(GetPlayerPed(-1))
            end
        end
    end
end)
	
