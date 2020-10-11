#hurt mob sounds
#@s - @e[tag=lch_sound] unless score HEALTH = HEALTH_PREV
#called by launch/entity/sound/checks

execute if entity @s[tag=lch_sand_crawler] run playsound entity.wolf.ambient hostile @a[distance=..20] ~ ~ ~ 1 0 1
