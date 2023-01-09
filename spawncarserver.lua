RegisterCommand("spawncar", function(source, args, rawCommand)
    -- Get the player's ped
    local ped = GetPlayerPed(source)

    -- Get the player's position and heading
    local x, y, z = table.unpack(GetEntityCoords(ped))
    local heading = GetEntityHeading(ped)

    -- Spawn the car next to the player
    local car = CreateVehicle(GetHashKey("speedo2"), x + 5, y + 5, z, heading, true, false)
    SetPedIntoVehicle(ped, car, -1)
    TriggerClientEvent("chat:addMessage", source, { args = { "Server", "Car" } })

end)
