#input is @s lcore_bsin
execute unless score @s lcore_bsin matches 0..360 run scoreboard players operation $lcore_range lcore_math = @s lcore_bsin
execute unless score @s lcore_bsin matches 0..360 run function origami-games.core:math/0_360_range
execute unless score @s lcore_bsin matches 0..360 run scoreboard players operation @s lcore_bsin = $lcore_range lcore_math

scoreboard players set $-1 lcore_math -1
scoreboard players set $isNegative lcore_math 0
#scoreboard players set $0 lcore_math 0
#scoreboard players set $isNegative lcore_math 0
#execute if score @s lcore_bsin < $0 lcore_math run scoreboard players set $isNegative lcore_math 1
#execute if score @s lcore_bsin < $0 lcore_math run scoreboard players operation @s lcore_bsin *= $-1 lcore_math

execute if score @s lcore_bsin matches 180..360 run scoreboard players set $isNegative lcore_math 1
execute if score @s lcore_bsin matches 180..360 run scoreboard players remove @s lcore_bsin 180

scoreboard players set @s lcore_math 180
scoreboard players operation @s lcore_math -= @s lcore_bsin
#180-x subtraction
scoreboard players operation @s lcore_math *= @s lcore_bsin
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


scoreboard players operation @s lcore_bsin = @s lcore_math
#final answer scaled to trigscale
