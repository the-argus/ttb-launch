execute if entity @s[tag=!bs_check] run function origami-games.biosuit:entity/item/check
tag @s add bs_check

scoreboard players add @s bs_counter 0
execute if entity @s[tag=bs_suit,scores={bs_counter=..20}] run scoreboard players add @s bs_counter 1
execute if entity @s[tag=bs_suit,scores={bs_counter=20..}] run kill @s
