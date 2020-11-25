#called by light_bridges/processes

#get amount powered
function origami-games.lightbridges:block/light_bridges/get_power

#make bridge one unit long
scoreboard players operation @s lb_length = $lengthMultiplier lb_counter

#store total bridge length
scoreboard players operation @s lb_maxlength = @s lb_power
scoreboard players operation @s lb_maxlength *= $lengthMultiplier lb_counter
scoreboard players remove @s lb_maxlength 1

#call the loop to set the bridge to starting length (one unit)
function origami-games.lightbridges:block/light_bridges/set_bridge

#aesthetics
function origami-games.lightbridges:block/light_bridges/display_particles

playsound minecraft:block.beacon.activate block @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:block.bell.resonate block @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:block.beehive.enter block @a[distance=..16] ~ ~ ~ 1 0
