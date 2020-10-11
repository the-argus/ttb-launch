#custom mob sound checks
#@s - @e[tag=lch_sound]
#called by launch/tick

#health
execute store result score @s lch_snd_hlt run data get entity @s Health
execute unless score @s lch_snd_hlt = @s lch_snd_hlt_prev if score @s lch_snd_hlt_prev matches 1.. run function origami-games:launch/entity/sound/hurt
scoreboard players operation @s lch_snd_hlt_prev = @s lch_snd_hlt
