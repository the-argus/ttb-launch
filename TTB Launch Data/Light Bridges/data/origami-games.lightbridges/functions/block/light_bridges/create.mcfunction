#@s - light bridge summon frame
#called by create_block

playsound minecraft:block.stone.place block @a[distance=..16] ~ ~ ~ .8 .9 1

#kill summon frame
kill @s[type=!player]

#create disenchanter
#execute if block ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.light_bridge"}'} run loot spawn ~ ~ ~ loot origami-games.core:items/light_bridge
execute if block ~ ~ ~ redstone_lamp run loot spawn ~ ~ ~ loot origami-games.core:items/light_bridge
fill ~ ~ ~ ~ ~ ~ redstone_lamp replace #origami-games.core:replace_on_creation
execute unless block ~ ~ ~ redstone_lamp run loot spawn ~ ~ ~ loot origami-games.core:items/light_bridge

#orientable block summon based on player rotation
execute unless entity @e[type=armor_stand,tag=lb_light_bridge,distance=...5] if entity @p[scores={lcore_iframe=1..},y_rotation=-180..-135] run summon armor_stand ~ ~ ~ {Tags:["lb_entity","lcore_fire","lb_light_bridge"],NoGravity:1,Silent:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:'{"translate":"block.launch.light_bridge"}',Fire:17s}
execute unless entity @e[type=armor_stand,tag=lb_light_bridge,distance=...5] if entity @p[scores={lcore_iframe=1..},y_rotation=135..180] run summon armor_stand ~ ~ ~ {Tags:["lb_entity","lcore_fire","lb_light_bridge"],NoGravity:1,Silent:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:'{"translate":"block.launch.light_bridge"}',Fire:17s}
execute unless entity @e[type=armor_stand,tag=lb_light_bridge,distance=...5] if entity @p[scores={lcore_iframe=1..},y_rotation=45..135] run summon armor_stand ~ ~ ~ {Tags:["lb_entity","lcore_fire","lb_light_bridge"],Rotation:[-90.0f,0.0f],NoGravity:1,Silent:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:'{"translate":"block.launch.light_bridge"}',Fire:17s}
execute unless entity @e[type=armor_stand,tag=lb_light_bridge,distance=...5] if entity @p[scores={lcore_iframe=1..},y_rotation=-135..-45] run summon armor_stand ~ ~ ~ {Tags:["lb_entity","lcore_fire","lb_light_bridge"],Rotation:[90.0f,0.0f],NoGravity:1,Silent:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:'{"translate":"block.launch.light_bridge"}',Fire:17s}
execute unless entity @e[type=armor_stand,tag=lb_light_bridge,distance=...5] if entity @p[scores={lcore_iframe=1..},y_rotation=-45..45] run summon armor_stand ~ ~ ~ {Tags:["lb_entity","lcore_fire","lb_light_bridge"],Rotation:[180.0f,0.0f],NoGravity:1,Silent:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:'{"translate":"block.launch.light_bridge"}',Fire:17s}

execute if entity @p[scores={lcore_iframe=1..},x_rotation=-75..75] run loot replace entity @e[type=armor_stand,tag=lb_light_bridge,distance=...1,sort=nearest,limit=1] armor.head loot origami-games.core:items/light_bridge
execute if entity @p[scores={lcore_iframe=1..},x_rotation=-90..-75] run loot replace entity @e[type=armor_stand,tag=lb_light_bridge,distance=...1,sort=nearest,limit=1] armor.head loot origami-games.core:items/light_bridge_down
execute if entity @p[scores={lcore_iframe=1..},x_rotation=75..90] run loot replace entity @e[type=armor_stand,tag=lb_light_bridge,distance=...1,sort=nearest,limit=1] armor.head loot origami-games.core:items/light_bridge_up

execute if entity @p[scores={lcore_iframe=1..},y_rotation=-180..-135] run scoreboard players set @e[type=armor_stand,tag=lb_light_bridge,distance=...1,sort=nearest,limit=1] lb_rotation 0
execute if entity @p[scores={lcore_iframe=1..},y_rotation=135..180] run scoreboard players set @e[type=armor_stand,tag=lb_light_bridge,distance=...1,sort=nearest,limit=1] lb_rotation 0
execute if entity @p[scores={lcore_iframe=1..},y_rotation=45..135] run scoreboard players set @e[type=armor_stand,tag=lb_light_bridge,distance=...1,sort=nearest,limit=1] lb_rotation 1
execute if entity @p[scores={lcore_iframe=1..},y_rotation=-135..-45] run scoreboard players set @e[type=armor_stand,tag=lb_light_bridge,distance=...1,sort=nearest,limit=1] lb_rotation 2
execute if entity @p[scores={lcore_iframe=1..},y_rotation=-45..45] run scoreboard players set @e[type=armor_stand,tag=lb_light_bridge,distance=...1,sort=nearest,limit=1] lb_rotation 3

execute if entity @p[scores={lcore_iframe=1..},x_rotation=-90..-75] run scoreboard players set @e[type=armor_stand,tag=lb_light_bridge,distance=...1,sort=nearest,limit=1] lb_rotation 4
execute if entity @p[scores={lcore_iframe=1..},x_rotation=75..90] run scoreboard players set @e[type=armor_stand,tag=lb_light_bridge,distance=...1,sort=nearest,limit=1] lb_rotation 5
