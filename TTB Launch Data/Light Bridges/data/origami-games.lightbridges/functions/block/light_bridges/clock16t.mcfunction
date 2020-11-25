# called by load


#display particles
execute as @e[type=armor_stand,tag=lb_light_bridge] at @s if entity @s[tag=lb_powered] run function origami-games.lightbridges:block/light_bridges/display_particles

schedule function origami-games.lightbridges:block/light_bridges/clock16t 16t replace
