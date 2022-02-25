-- | Turtly Farmer |
-- A ComputerCraft program for turtles to automatically farm wheat
-- Version: 0.1.0
-- Github repo: https://github.com/HeshamSHY/Turtly-Farmer
 
-- Main file, this is what runs the program.
colom = 0
 
function dock()
    _, insBlock = turtle.inspectDown()
    fenceBlw = insBlock.name ~= "minecraft:fence"
    while fenceBlw do
        turtle.forward()
        _, insBlock1 = turtle.inspectDown()
        fenceBlw = insBlock1.name ~= "minecraft:fence"
    end
    turtle.forward()
    _, insBlock2 = turtle.inspectDown()
    fenceBlw = insBlock2.name ~= "minecraft:fence"
    if fenceBlw then
        turtle.back()
        turtle.turnRight()
    end
    _, blockInf = turtle.inspect()
    while blockInf.name ~= "minecraft:chest" do
        _, blockAbv = turtle.inspectUp()
        if blockAbv.name == "minecraft:stone" then
            turtle.turnRight()
        end
        turtle.forward()
        _, blockInf = turtle.inspect()
    end
    turtle.turnRight()
end
 
function emptyInv()
    turtle.forward()
    turtle.turnLeft()
    for i=1,16 do
        turtle.select(i)
        if turtle.getItemDetail() ~= nil then
            if turtle.getItemDetail().name == "minecraft:wheat_seeds" then
                turtle.drop()
            end
        end
    end
    turtle.turnRight()
    turtle.forward()
    turtle.turnLeft()
    for i=1,16 do
        turtle.select(i)
        turtle.drop()
    end
    turtle.turnLeft()
    turtle.forward()
    turtle.forward()
    turtle.turnLeft()
    turtle.turnLeft()
    turtle.select(1)
end
 
function refuel()
    turtle.turnLeft()
    turtle.suck()
    turtle.refuel(64)
    turtle.turnRight()
    if colom ~= 0 then
        turtle.turnRight()
        for i=1,colom do
            turtle.forward()
        end
        turtle.turnLeft()
        turtle.forward()
    end
end
 
function farm()
    turtle.select(1)
    if turtle.getItemCount() == 0 then
        turtle.select(2)
        turtle.transferTo(1,64)
    end
    if turtle.inspectDown() then
        _, insBlock = turtle.inspectDown()
        if insBlock.metadata == 7 then
            turtle.digDown()
            turtle.placeDown()
        elseif insBlock.name ~= "minecraft:wheat"  then
            if insBlock.name ~= "minecraft:glowstone" then
                turtle.digDown()
                turtle.placeDown()
            end
        end
    else
        turtle.placeDown()
    end
end
 
function check()
    for i=1,8 do
        farm()
        turtle.forward()
    end
    farm()
    colom = colom+1
end
 
while true do
    shell.run("clear")
    print("Started")
    print("Running...")
    print("Fuel level: " .. turtle.getFuelLevel())
    if turtle.getFuelLevel() < 50 then
        refuel()
    end
    turtle.forward()
    turtle.turnLeft()
    turtle.suck()
    turtle.suck()
    turtle.turnRight()
    for i=1,4 do
        if turtle.getFuelLevel() < 50 then
            dock()
            emptyInv()
            refuel()
        end
        check()
        turtle.turnRight()
        turtle.forward()
        turtle.turnRight()
        check()
        turtle.turnLeft()
        turtle.forward()
        turtle.turnLeft()
    end
    check()
    colom = 0
    dock()
    emptyInv()
    shell.run("clear")
    print("Sleeping for 20min...")
    print("Fuel level: " .. turtle.getFuelLevel())
    sleep(60*20)
end
