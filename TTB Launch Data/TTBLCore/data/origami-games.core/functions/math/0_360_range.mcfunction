scoreboard players set $0 lcore_math 0
scoreboard players set $360 lcore_math 360

execute unless score $lcore_range lcore_math matches 0..360 if score $lcore_range lcore_math < $0 lcore_math run scoreboard players add $lcore_range lcore_math 360
execute unless score $lcore_range lcore_math matches 0..360 if score $lcore_range lcore_math > $360 lcore_math run scoreboard players remove $lcore_range lcore_math 360
execute unless score $lcore_range lcore_math matches 0..360 run function origami-games.core:math/0_360_range
