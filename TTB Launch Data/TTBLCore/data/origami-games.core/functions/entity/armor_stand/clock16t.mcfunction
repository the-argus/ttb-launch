# called by entity/clock16t
execute if entity @s[tag=lcore_synthesizer] run function origami-games.core:block/synthesizer/clock16t
data modify entity @s[tag=lcore_fire] Fire set value 17s
