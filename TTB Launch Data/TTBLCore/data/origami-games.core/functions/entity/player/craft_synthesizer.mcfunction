clear @s minecraft:clock
loot give @s loot origami-games.core:items/synthesizer
execute if score @s lcore_drop matches 1.. run kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:clock"}}]
#give @s clock{CustomModelData:7510000,display:{Name:'{"translate":"item.origami-games.core.clock","italic":false}'}}
scoreboard players set @s lcore_synth 0
