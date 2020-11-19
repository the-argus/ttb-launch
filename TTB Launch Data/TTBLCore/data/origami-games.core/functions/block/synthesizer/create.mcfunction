#called by block/create_block

playsound minecraft:block.end_portal_frame.fill block @a[distance=..16] ~ ~ ~ .8 .9 1
playsound minecraft:block.coral_block.place block @a[distance=..16] ~ ~ ~ .5 0 1
playsound minecraft:block.weeping_vines.place block @a[distance=..16] ~ ~ ~ .5 0 1

#create armor stand
execute if block ~ ~ ~ #origami-games.core:replace_on_creation run summon armor_stand ~ ~ ~ {Tags:["lcore_synthesizer","lcore_fire","lcore_creating"],NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"translate":"block.origami-games.core.synthesizer"}',Fire:17s}
loot replace entity @e[type=armor_stand,tag=lcore_synthesizer,distance=...5,limit=1] armor.head loot origami-games.core:items/synthesizer

#create block itself
execute if block ~ ~ ~ barrel{CustomName:'{"translate":"block.origami-games.core.synthesizer"}'} run loot spawn ~ ~ ~ loot origami-games.core:items/synthesizer
fill ~ ~ ~ ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.origami-games.core.synthesizer"}'} replace #origami-games.core:replace_on_creation
execute unless block ~ ~ ~ barrel{CustomName:'{"translate":"block.origami-games.core.synthesizer"}'} run loot spawn ~ ~ ~ loot origami-games.core:items/synthesizer
execute if block ~ ~ ~ barrel{CustomName:'{"translate":"block.origami-games.core.synthesizer"}'} run data modify block ~ ~ ~ Items set from storage origami-games.core:block synthesizer.Items
