execute as @e[type=armor_stand] at @s run function origami-games.core:entity/armor_stand/clock16t

execute as @a store result score @s lcore_UUID0 run data get entity @s UUID[0]
execute as @a store result score @s lcore_UUID1 run data get entity @s UUID[1]
execute as @a store result score @s lcore_UUID2 run data get entity @s UUID[2]
execute as @a store result score @s lcore_UUID3 run data get entity @s UUID[3]

schedule function origami-games.core:clock16t 16t replace
