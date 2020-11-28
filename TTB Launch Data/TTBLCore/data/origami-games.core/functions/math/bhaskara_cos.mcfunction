#input is @s lcore_bcos
execute unless score @s lcore_bcos matches 0..360 run scoreboard players operation $lcore_range lcore_math = @s lcore_bcos
execute unless score @s lcore_bcos matches 0..360 run function origami-games.core:math/0_360_range
execute unless score @s lcore_bcos matches 0..360 run scoreboard players operation @s lcore_bcos = $lcore_range lcore_math

scoreboard players set $-1 lcore_math -1
scoreboard players set $isNegative lcore_math 0
scoreboard players set $lcore_transpose lcore_math 0


execute if score @s lcore_bcos matches 0..90 run scoreboard players set $lcore_transpose lcore_math 1
execute if score @s lcore_bcos matches 90..270 run scoreboard players set $isNegative lcore_math 1
execute if score @s lcore_bcos matches 90..270 run scoreboard players set $lcore_transpose lcore_math 2
execute if score @s lcore_bcos matches 270..360 run scoreboard players set $lcore_transpose lcore_math 3

execute if score $lcore_transpose lcore_math matches 3 run scoreboard players remove @s lcore_bcos 270
execute if score $lcore_transpose lcore_math matches 2 run scoreboard players remove @s lcore_bcos 90
execute if score $lcore_transpose lcore_math matches 1 run scoreboard players add @s lcore_bcos 90

scoreboard players set @s lcore_math 180
scoreboard players operation @s lcore_math -= @s lcore_bcos
#180-x subtraction
scoreboard players operation @s lcore_math *= @s lcore_bcos
scoreboard players operation $lcoreStorage lcore_math = @s lcore_math
#x(180-x)

scoreboard players set $4 lcore_math 4
scoreboard players operation @s lcore_math *= $4 lcore_math
scoreboard players operation @s lcore_math *= $lcore_trigscale lcore_math
scoreboard players operation $numerator lcore_math = @s lcore_math
#numerator

scoreboard players set @s lcore_math 40500
scoreboard players operation @s lcore_math -= $lcoreStorage lcore_math
#scoreboard players operation @s lcore_math /= $lcore_trigscale lcore_math
scoreboard players operation $denominator lcore_math = @s lcore_math
#denominator

scoreboard players operation @s lcore_math = $numerator lcore_math
scoreboard players operation @s lcore_math /= $denominator lcore_math

execute if score $isNegative lcore_math matches 1 run scoreboard players operation @s lcore_math *= $-1 lcore_math


scoreboard players operation @s lcore_bcos = @s lcore_math
#final answer scaled to trigscale
