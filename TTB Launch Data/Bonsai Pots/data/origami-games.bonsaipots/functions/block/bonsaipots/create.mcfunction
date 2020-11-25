#called by origami-games.core/create_block

playsound minecraft:block.stone.place block @a[distance=..16] ~ ~ ~ .8 .9 1

#kill summon frame
kill @s[type=!player]

#create bonsai_pot
execute if block ~ ~ ~ hopper{CustomName:'{"translate":"block.launch.bonsai_pot"}'} run loot spawn ~ ~ ~ loot origami-games.core:items/bonsai_pot
fill ~ ~ ~ ~ ~ ~ hopper[facing=down]{CustomName:'{"translate":"block.launch.bonsai_pot"}'} replace #origami-games.core:replace_on_creation
execute unless block ~ ~ ~ hopper{CustomName:'{"translate":"block.launch.bonsai_pot"}'} run loot spawn ~ ~ ~ loot origami-games.core:items/bonsai_pot
summon armor_stand ~ ~ ~ {Tags:["bp_entity","lcore_fire","bp_bonsai_pot"],NoGravity:1,Silent:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:'{"translate":"block.launch.bonsai_pot"}',Fire:17s}
loot replace entity @e[type=armor_stand,tag=bp_bonsai_pot,distance=...1,sort=nearest,limit=1] armor.head loot origami-games.core:items/bonsai_pot
