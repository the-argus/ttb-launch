#called by block/crockpot/cooking

execute store result score items cck_cooking if entity @e[type=item,tag=cck_crockpot_item,dx=0]
scoreboard players add @s cck_cooktime 0
execute if score items cck_cooking matches 4 run function origami-games.cooking:block/crockpot/cookingclock

execute unless score items cck_cooking matches 4 run scoreboard players set @s cck_cooktime 0
execute unless score @s cck_cooktime matches 1..20 run scoreboard players set @s cck_cooktime 0
