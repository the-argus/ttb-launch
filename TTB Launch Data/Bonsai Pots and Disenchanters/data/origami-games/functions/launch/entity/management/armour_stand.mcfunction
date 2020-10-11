#armour stand management
#@s - armour stand
#called by launch/tick

#mistake
kill @s[tag=lch_mistake_spawn]
#arms
execute unless entity @s[tag=lch_entity] run data merge entity @s {ShowArms:1b}
#fire stands
execute if entity @s[tag=lch_fire] run data merge entity @s {Fire:17}

#disenchanter
execute if entity @s[tag=lch_summon_disenchanter] run function origami-games:launch/block/disenchanter/create
execute if entity @s[tag=lch_disenchanter] run function origami-games:launch/block/disenchanter/processes
#bonsai pot
execute if entity @s[tag=lch_summon_bonsai_pot] positioned ~ ~.375 ~ run function origami-games:launch/block/bonsai_pot/create
execute if entity @s[tag=lch_bonsai_pot] run function origami-games:launch/block/bonsai_pot/processes
