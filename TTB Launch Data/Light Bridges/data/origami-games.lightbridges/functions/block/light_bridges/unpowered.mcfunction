tag @s remove lb_powered
execute if score @s lb_rotation matches 0 run fill ~ ~ ~ ~ ~ ~30 air replace barrier
execute if score @s lb_rotation matches 1 run fill ~ ~ ~ ~30 ~ ~ air replace barrier
execute if score @s lb_rotation matches 2 run fill ~ ~ ~ ~-30 ~ ~ air replace barrier
execute if score @s lb_rotation matches 3 run fill ~ ~ ~ ~ ~ ~-30 air replace barrier
execute if score @s lb_rotation matches 4 run fill ~ ~ ~ ~ ~-30 ~ air replace barrier
execute if score @s lb_rotation matches 5 run fill ~ ~ ~ ~ ~30 ~ air replace barrier

#aesthetics
function origami-games.lightbridges:block/light_bridges/display_particles

execute if block ~ ~ ~ redstone_lamp run playsound minecraft:block.beacon.deactivate block @a[distance=..16] ~ ~ ~ 1 2
execute if block ~ ~ ~ redstone_lamp run playsound minecraft:block.bell.resonate block @a[distance=..16] ~ ~ ~ 1 2
execute if block ~ ~ ~ redstone_lamp run playsound minecraft:block.beehive.enter block @a[distance=..16] ~ ~ ~ 1 0

#reset all bridges
execute as @e[type=armor_stand,tag=lb_light_bridge,tag=lb_powered] at @s run function origami-games.lightbridges:block/light_bridges/set_bridge
