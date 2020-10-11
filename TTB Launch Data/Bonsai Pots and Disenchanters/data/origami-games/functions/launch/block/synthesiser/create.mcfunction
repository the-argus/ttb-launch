#@s - synthesiser summon stand
#called by launch/tick

#kill summon stand
kill @s[type=!player]

#create synthesiser
setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.synthesiser"}'} keep
execute unless block ~ ~ ~ dropper{CustomName:'{"translate":"block.launch.synthesiser"}'} run loot spawn ~ ~ ~ loot origami-games:launch/items/synthesiser
summon armor_stand ~ ~ ~ {Tags:["lch_entity","lch_fire","lch_crafter","lch_synthesiser"],NoGravity:1,Silent:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:'{"translate":"block.launch.synthesiser"}',Fire:17}
loot replace entity @e[type=armor_stand,tag=lch_synthesiser,distance=...1,sort=nearest,limit=1] armor.head loot origami-games:launch/items/synthesiser
