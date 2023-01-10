RegisterCommand("respawn", function(source, args, rawCommand)
    -- Get the player's ped
    local ped = GetPlayerPed(source)

    -- Check if the player is in a vehicle
    if IsPedInAnyVehicle(ped) then
        -- Remove the player from the vehicle
        ClearPedTasksImmediately(ped)
    end

    -- Set the player's health to full
    SetEntityHealth(ped, 200)

    -- Respawn the player
    DoScreenFadeOut(1000)
    Citizen.Wait(1000)
    NetworkResurrectLocalPlayer(GetEntityCoords(ped), GetEntityHeading(ped), true, true, false)
    SetPlayerInvincible(ped, false)
    ClearPedBloodDamage(ped)
    DoScreenFadeIn(1000)
end)
