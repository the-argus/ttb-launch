#@s - disenchanter summon frame
#called by create_block

#kill summon frame
kill @s[type=!player]

#create disenchanter
setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.disenchanter"}'} keep
execute unless block ~ ~ ~ dropper{CustomName:'{"translate":"block.launch.disenchanter"}'} run loot spawn ~ ~ ~ loot origami-games.core:items/disenchanter
summon armor_stand ~ ~ ~ {Tags:["de_entity","lcore_fire","de_disenchanter"],NoGravity:1,Silent:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:'{"translate":"block.launch.disenchanter"}',Fire:17s}
loot replace entity @e[type=armor_stand,tag=de_disenchanter,distance=...1,sort=nearest,limit=1] armor.head loot origami-games.core:items/disenchanter
