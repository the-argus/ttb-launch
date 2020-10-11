#ambient mob sounds
#@s - @e[tag=lch_sound,scores={lch_snd_ambient=1..}]
#called by launch/tick

execute if entity @s[tag=lch_sand_crawler] run playsound entity.rabbit.attack hostile @a[distance=..20] ~ ~ ~ 1 0 1

#reset score
scoreboard players reset @s lch_snd_ambient
