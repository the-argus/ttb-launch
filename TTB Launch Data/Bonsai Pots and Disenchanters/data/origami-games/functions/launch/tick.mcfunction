#runs every tick (20/s)
#called by #cardboard:tick

#clock
scoreboard players add core_16 lch_clock 1
scoreboard players add world_4 lch_clock 1
execute if score core_16 lch_clock matches 16.. run function origami-games:launch/clock16
execute if score world_4 lch_clock matches 4.. run function origami-games:launch/world/clock4

#general entity management
execute as @e[type=area_effect_cloud] at @s run function origami-games:launch/entity/management/area_effect_cloud
execute as @e[type=armor_stand] at @s run function origami-games:launch/entity/management/armour_stand
# execute as @e[type=arrow] at @s run function origami-games:launch/entity/management/arrow
execute as @e[type=item] at @s run function origami-games:launch/entity/management/item

#removal
execute as @e[tag=lch_passenger] at @s unless entity @e[tag=lch_vehicle,distance=..1] run tag @s add lch_remove
execute as @e[tag=lch_vehicle] unless data entity @s Passengers run tag @s add lch_remove

tag @e[type=slime,tag=!lch_remove,name="entity.launch.sand_crawler",nbt=!{Size:1}] add lch_remove

execute as @e[tag=lch_remove] run data merge entity @s {Health:0,DeathTime:19,Time:0,Duration:0,Size:0}
