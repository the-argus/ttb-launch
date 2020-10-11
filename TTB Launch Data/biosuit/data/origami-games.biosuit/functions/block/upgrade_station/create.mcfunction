#called by block/create_block

playsound block.stone.place block @a[distance=...56] ~ ~ ~ 1 1 1

#create
execute if block ~ ~ ~ #origami-games.biosuit:replace_on_creation run summon armor_stand ~ ~ ~ {Tags:["bs_upgrade_station","bs_fire"],NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,CustomName:'{"translate":"block.origami-games.biosuit.upgrade_station"}',Fire:17s}
#scoreboard players operation @e[type=armor_stand,tag=bs_upgrade_station,limit=1,distance=...5] bs_cmprsr_count = $global bs_cmprsr_count

execute if block ~ ~ ~ #origami-games.biosuit:replace_on_creation run setblock ~ ~ ~ andesite
replaceitem entity @e[type=armor_stand,tag=bs_upgrade_station,distance=...5,limit=1] armor.head item_frame{CustomModelData:7510021}
