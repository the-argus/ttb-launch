#called by check_item_count

execute if entity @s[scores={cck_cooktime=0}] run scoreboard players set @s cck_cooktime 1

execute if entity @s[scores={cck_cooktime=1..20}] run scoreboard players add @s cck_cooktime 1
execute if entity @s[scores={cck_cooktime=15..}] run function origami-games.cooking:block/crockpot/check_items
execute if entity @s[scores={cck_cooktime=14}] run function origami-games.cooking:block/crockpot/reset_item_count


execute at @s as @s[scores={cck_cooktime=1}] run playsound minecraft:block.brewing_stand.brew block @a[distance=..6] ~ ~ ~ 1 0
execute at @s as @s[scores={cck_cooktime=2}] run playsound minecraft:block.brewing_stand.brew block @a[distance=..6] ~ ~ ~ 1 .1
execute at @s as @s[scores={cck_cooktime=3}] run playsound minecraft:block.brewing_stand.brew block @a[distance=..6] ~ ~ ~ 1 .2
execute at @s as @s[scores={cck_cooktime=4}] run playsound minecraft:block.brewing_stand.brew block @a[distance=..6] ~ ~ ~ 1 .3
execute at @s as @s[scores={cck_cooktime=5}] run playsound minecraft:block.brewing_stand.brew block @a[distance=..6] ~ ~ ~ 1 .4
execute at @s as @s[scores={cck_cooktime=6}] run playsound minecraft:block.brewing_stand.brew block @a[distance=..6] ~ ~ ~ 1 .5
execute at @s as @s[scores={cck_cooktime=7}] run playsound minecraft:block.brewing_stand.brew block @a[distance=..6] ~ ~ ~ 1 .6
execute at @s as @s[scores={cck_cooktime=8}] run playsound minecraft:block.brewing_stand.brew block @a[distance=..6] ~ ~ ~ 1 .7
execute at @s as @s[scores={cck_cooktime=9}] run playsound minecraft:block.brewing_stand.brew block @a[distance=..6] ~ ~ ~ 1 .8
execute at @s as @s[scores={cck_cooktime=10}] run playsound minecraft:block.brewing_stand.brew block @a[distance=..6] ~ ~ ~ 1 .9
execute at @s as @s[scores={cck_cooktime=11}] run playsound minecraft:block.brewing_stand.brew block @a[distance=..6] ~ ~ ~ 1 1
execute at @s as @s[scores={cck_cooktime=12}] run playsound minecraft:block.brewing_stand.brew block @a[distance=..6] ~ ~ ~ 1 1.1
execute at @s as @s[scores={cck_cooktime=13}] run playsound minecraft:block.brewing_stand.brew block @a[distance=..6] ~ ~ ~ 1 1.2
execute at @s as @s[scores={cck_cooktime=14}] run playsound minecraft:block.brewing_stand.brew block @a[distance=..6] ~ ~ ~ 1 1.3
execute at @s as @s[scores={cck_cooktime=15}] run playsound minecraft:block.brewing_stand.brew block @a[distance=..6] ~ ~ ~ 1 1.4
execute at @s as @s[scores={cck_cooktime=16}] run playsound minecraft:block.brewing_stand.brew block @a[distance=..6] ~ ~ ~ 1 1.5
execute at @s as @s[scores={cck_cooktime=17}] run playsound minecraft:block.brewing_stand.brew block @a[distance=..6] ~ ~ ~ 1 1.6
execute at @s as @s[scores={cck_cooktime=18}] run playsound minecraft:block.brewing_stand.brew block @a[distance=..6] ~ ~ ~ 1 1.7
execute at @s as @s[scores={cck_cooktime=19}] run playsound minecraft:block.brewing_stand.brew block @a[distance=..6] ~ ~ ~ 1 1.8
execute at @s as @s[scores={cck_cooktime=20}] run playsound minecraft:block.brewing_stand.brew block @a[distance=..6] ~ ~ ~ 1 1.9
