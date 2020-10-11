#add the number of AOE clouds to the score
execute positioned ~-1 ~ ~ unless entity @e[type=area_effect_cloud,tag=bs_scanner,distance=...5] if block ~ ~ ~ #origami-games.biosuit:permeable run scoreboard players add $scanners bs_counter 1
execute positioned ~1 ~ ~ unless entity @e[type=area_effect_cloud,tag=bs_scanner,distance=...5] if block ~ ~ ~ #origami-games.biosuit:permeable run scoreboard players add $scanners bs_counter 1
execute positioned ~ ~ ~-1 unless entity @e[type=area_effect_cloud,tag=bs_scanner,distance=...5] if block ~ ~ ~ #origami-games.biosuit:permeable run scoreboard players add $scanners bs_counter 1
execute positioned ~ ~ ~1 unless entity @e[type=area_effect_cloud,tag=bs_scanner,distance=...5] if block ~ ~ ~ #origami-games.biosuit:permeable run scoreboard players add $scanners bs_counter 1
execute positioned ~ ~-1 ~ unless entity @e[type=area_effect_cloud,tag=bs_scanner,distance=...5] if block ~ ~ ~ #origami-games.biosuit:permeable run scoreboard players add $scanners bs_counter 1
execute positioned ~ ~1 ~ unless entity @e[type=area_effect_cloud,tag=bs_scanner,distance=...5] if block ~ ~ ~ #origami-games.biosuit:permeable run scoreboard players add $scanners bs_counter 1

#atually summon the AOE clouds
execute positioned ~-1 ~ ~ unless entity @e[type=area_effect_cloud,tag=bs_scanner,distance=...5] if block ~ ~ ~ #origami-games.biosuit:permeable run summon area_effect_cloud ~ ~ ~ {Tags:["bs_scanner","bs_decompressor"],CustomName:'{"translate":"block.origami-games.biosuit.scanner"}',Particle:"block air",NoGravity:1b,Radius:0.0001f,Duration:2147483647}
execute positioned ~1 ~ ~ unless entity @e[type=area_effect_cloud,tag=bs_scanner,distance=...5] if block ~ ~ ~ #origami-games.biosuit:permeable run summon area_effect_cloud ~ ~ ~ {Tags:["bs_scanner","bs_decompressor"],CustomName:'{"translate":"block.origami-games.biosuit.scanner"}',Particle:"block air",NoGravity:1b,Radius:0.0001f,Duration:2147483647}
execute positioned ~ ~ ~-1 unless entity @e[type=area_effect_cloud,tag=bs_scanner,distance=...5] if block ~ ~ ~ #origami-games.biosuit:permeable run summon area_effect_cloud ~ ~ ~ {Tags:["bs_scanner","bs_decompressor"],CustomName:'{"translate":"block.origami-games.biosuit.scanner"}',Particle:"block air",NoGravity:1b,Radius:0.0001f,Duration:2147483647}
execute positioned ~ ~ ~1 unless entity @e[type=area_effect_cloud,tag=bs_scanner,distance=...5] if block ~ ~ ~ #origami-games.biosuit:permeable run summon area_effect_cloud ~ ~ ~ {Tags:["bs_scanner","bs_decompressor"],CustomName:'{"translate":"block.origami-games.biosuit.scanner"}',Particle:"block air",NoGravity:1b,Radius:0.0001f,Duration:2147483647}
execute positioned ~ ~-1 ~ unless entity @e[type=area_effect_cloud,tag=bs_scanner,distance=...5] if block ~ ~ ~ #origami-games.biosuit:permeable run summon area_effect_cloud ~ ~ ~ {Tags:["bs_scanner","bs_decompressor"],CustomName:'{"translate":"block.origami-games.biosuit.scanner"}',Particle:"block air",NoGravity:1b,Radius:0.0001f,Duration:2147483647}
execute positioned ~ ~1 ~ unless entity @e[type=area_effect_cloud,tag=bs_scanner,distance=...5] if block ~ ~ ~ #origami-games.biosuit:permeable run summon area_effect_cloud ~ ~ ~ {Tags:["bs_scanner","bs_decompressor"],CustomName:'{"translate":"block.origami-games.biosuit.scanner"}',Particle:"block air",NoGravity:1b,Radius:0.0001f,Duration:2147483647}
