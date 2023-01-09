RegisterCommand("spawnguy", function(source, args, rawCommand)
    -- Get the player's ped
    local ped = GetPlayerPed(source)

    -- Get the player's position and heading
    local x, y, z = table.unpack(GetEntityCoords(ped))
    local heading = GetEntityHeading(ped)

    local i = 1
    while i <= 10 do
    local npc = CreatePed(0,1581098148,x+5,y +5,z,heading,true,false)
    TriggerClientEvent("chat:addMessage", source, { args = { "Server", "Guy" } })
    end

end)
