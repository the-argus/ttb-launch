#clock tick (1/16t)
#called by launch/tick

#player clock
execute as @a at @s run function origami-games:launch/player/clock16

#general entity management
execute as @e[type=item] at @s run function origami-games:launch/entity/management/item16

#custom mobs
## sounds
scoreboard players add @e[tag=lch_sound] lch_snd_ambient 1
execute as @e[tag=lch_sound,scores={lch_snd_ambient=3..}] at @s run function origami-games:launch/entity/sound/ambient

#reset clock
scoreboard players reset core_16 lch_clock
