scoreboard players add $raycastLoop bs_counter 1
#tellraw @a {"score":{"name":"$raycastLoop","objective":"bs_counter"}}
#say im running this
#particle ash ~ ~ ~ 0 0 0 0 1 normal @a

execute if block ~ ~ ~ #origami-games.biosuit:container align xyz positioned ~.5 ~.5 ~.5 unless entity @e[tag=bs_suit_tracker,distance=...5] run summon area_effect_cloud ~ ~ ~ {Tags:["bs_suit_tracker"],CustomName:'{"translate":"block.origami-games.biosuit.suit_tracker"}',NoGravity:1b,Duration:2147483647}
execute if block ~ ~ ~ #origami-games.biosuit:container run scoreboard players set $raycastLoop bs_counter 0
execute if score $raycastLoop bs_counter >= $playerReach bs_counter run scoreboard players set $raycastLoop bs_counter 0

execute unless block ~ ~ ~ #origami-games.biosuit:container unless score $raycastLoop bs_counter >= $playerReach bs_counter positioned ^ ^ ^.1 run function origami-games.biosuit:entity/player/raycast/loop
