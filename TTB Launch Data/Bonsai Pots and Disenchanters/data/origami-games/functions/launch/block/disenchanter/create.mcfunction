#@s - disenchanter summon stand
#called by launch/tick

#kill summon stand
kill @s[type=!player]

#create disenchanter
setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.disenchanter"}'} keep
execute unless block ~ ~ ~ dropper{CustomName:'{"translate":"block.launch.disenchanter"}'} run loot spawn ~ ~ ~ loot origami-games:launch/items/disenchanter
summon armor_stand ~ ~ ~ {Tags:["lch_entity","lch_fire","lch_crafter","lch_disenchanter"],NoGravity:1,Silent:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:'{"translate":"block.launch.disenchanter"}',Fire:17}
loot replace entity @e[type=armor_stand,tag=lch_disenchanter,distance=...1,sort=nearest,limit=1] armor.head loot origami-games:launch/items/disenchanter
