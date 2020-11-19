execute if score @s bp_count matches 16.. if block ~ ~1 ~ grass_block unless data block ~ ~-1 ~ Lock at @s run function origami-games.bonsaipots:block/bonsaipots/spawn_loot
execute if score @s bp_count matches 16.. if block ~ ~1 ~ grass_block unless data block ~ ~-1 ~ Lock at @s run function origami-games.bonsaipots:block/bonsaipots/spawn_loot
execute if score @s bp_count matches 1..15 if block ~ ~1 ~ grass_block unless data block ~ ~-1 ~ Lock at @s run function origami-games.bonsaipots:block/bonsaipots/spawn_loot
scoreboard players set @s bp_clock 0
