#called by block/crockpot/tick

#audiovisuals
execute if block ~ ~-1 ~ cauldron[level=0] run particle smoke ~ ~-.6 ~ 0.1 0 0.1 0 2 normal @a
execute if block ~ ~-1 ~ cauldron[level=1] run particle bubble_pop ~ ~-.4 ~ 0.1 0 0.1 0 1 normal @a
execute if block ~ ~-1 ~ cauldron[level=2] run particle bubble_pop ~ ~-.2 ~ 0.1 0 0.1 0 1 normal @a
execute if block ~ ~-1 ~ cauldron[level=3] run particle bubble_pop ~ ~ ~ 0.1 0 0.1 0 1 normal @a
execute if predicate origami-games.cooking:block/crockpot/sound_events/ambient/random_chance run playsound block.lava.ambient block @a[distance=..16] ~ ~ ~ 1 2 1

#functionality
execute if data entity @s Item if score items cck_cooking matches 0..3 unless data entity @s Item.tag run function origami-games.cooking:block/crockpot/convert_item_from_frame_to_entity
execute align xyz run function origami-games.cooking:block/crockpot/check_item_count
