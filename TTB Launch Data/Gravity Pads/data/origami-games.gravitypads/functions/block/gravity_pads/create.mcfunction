#@s - gravity pad summon frame
#called by create_block

playsound minecraft:block.stone.place block @a[distance=..16] ~ ~ ~ .8 .9 1

#kill summon frame
kill @s[type=!player]

#create armor stand
execute if block ~ ~ ~ #origami-games.core:replace_on_creation run summon armor_stand ~ ~ ~ {Tags:["gp_gravity_pad","lcore_fire","gp_entity"],NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"translate":"block.launch.gravity_pad"}',Fire:17s}
loot replace entity @e[type=armor_stand,tag=gp_gravity_pad,distance=...5,limit=1] armor.head loot origami-games.core:items/gravity_pad

#create disenchanter
execute if block ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.gravity_pad"}'} run loot spawn ~ ~ ~ loot origami-games.core:items/gravity_pad
fill ~ ~ ~ ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.gravity_pad"}'} replace #origami-games.core:replace_on_creation
execute unless block ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.gravity_pad"}'} run loot spawn ~ ~ ~ loot origami-games.core:items/gravity_pad
