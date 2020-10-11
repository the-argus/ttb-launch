#Synthesiser recipe check
#@s - synthesiser with valid recipe
#called by launch/crafting/recipe_validity_check

# =======
# VANILLA
# =======

#sandstones to sand
execute if score @s lch_slot_count matches 1 if score @s lch_slot_size matches ..16 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:sandstone"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"sand",Count:1b,tag:{lch_crafting:{multiplier:4}}}]}
execute if score @s lch_slot_count matches 1 if score @s lch_slot_size matches ..16 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:chiseled_sandstone"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"sand",Count:1b,tag:{lch_crafting:{multiplier:4}}}]}
execute if score @s lch_slot_count matches 1 if score @s lch_slot_size matches ..16 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:cut_sandstone"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"sand",Count:1b,tag:{lch_crafting:{multiplier:4}}}]}
execute if score @s lch_slot_count matches 1 if score @s lch_slot_size matches ..16 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:smooth_sandstone"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"sand",Count:1b,tag:{lch_crafting:{multiplier:4}}}]}
execute if score @s lch_slot_count matches 1 if score @s lch_slot_size matches ..32 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:sandstone_slab"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"sand",Count:1b,tag:{lch_crafting:{multiplier:2}}}]}
execute if score @s lch_slot_count matches 1 if score @s lch_slot_size matches ..16 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:red_sandstone"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"red_sand",Count:1b,tag:{lch_crafting:{multiplier:4}}}]}
execute if score @s lch_slot_count matches 1 if score @s lch_slot_size matches ..16 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:chiseled_red_sandstone"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"red_sand",Count:1b,tag:{lch_crafting:{multiplier:4}}}]}
execute if score @s lch_slot_count matches 1 if score @s lch_slot_size matches ..16 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:cut_red_sandstone"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"red_sand",Count:1b,tag:{lch_crafting:{multiplier:4}}}]}
execute if score @s lch_slot_count matches 1 if score @s lch_slot_size matches ..16 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:smooth_red_sandstone"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"red_sand",Count:1b,tag:{lch_crafting:{multiplier:4}}}]}
execute if score @s lch_slot_count matches 1 if score @s lch_slot_size matches ..32 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:red_sandstone_slab"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"red_sand",Count:1b,tag:{lch_crafting:{multiplier:2}}}]}

#smooth sandstone
execute if score @s lch_slot_count matches 4 if score @s lch_slot_size matches ..32 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:sandstone_slab"},{Slot:1b,id:"minecraft:sandstone_slab"},{Slot:3b,id:"minecraft:sandstone_slab"},{Slot:4b,id:"minecraft:sandstone_slab"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"smooth_sandstone",Count:1b,tag:{lch_crafting:{multiplier:2}}}]}
execute if score @s lch_slot_count matches 4 if score @s lch_slot_size matches ..32 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:red_sandstone_slab"},{Slot:1b,id:"minecraft:red_sandstone_slab"},{Slot:3b,id:"minecraft:red_sandstone_slab"},{Slot:4b,id:"minecraft:red_sandstone_slab"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"smooth_red_sandstone",Count:1b,tag:{lch_crafting:{multiplier:2}}}]}

#smooth quartz
execute if score @s lch_slot_count matches 4 if score @s lch_slot_size matches ..32 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:quartz_slab"},{Slot:1b,id:"minecraft:quartz_slab"},{Slot:3b,id:"minecraft:quartz_slab"},{Slot:4b,id:"minecraft:quartz_slab"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"smooth_quartz",Count:1b,tag:{lch_crafting:{multiplier:2}}}]}

#red sand
execute if score @s lch_slot_count matches 9 if score @s lch_slot_size matches ..8 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:sand"},{Slot:1b,id:"minecraft:sand"},{Slot:2b,id:"minecraft:sand"},{Slot:3b,id:"minecraft:sand"},{Slot:4b,id:"minecraft:red_dye"},{Slot:5b,id:"minecraft:sand"},{Slot:6b,id:"minecraft:sand"},{Slot:7b,id:"minecraft:sand"},{Slot:8b,id:"minecraft:sand"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"red_sand",Count:1b,tag:{lch_crafting:{multiplier:8}}}]}

#flint to gravel
execute if score @s lch_slot_count matches 9 if score @s lch_slot_size matches ..64 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:flint"},{Slot:1b,id:"minecraft:flint"},{Slot:2b,id:"minecraft:flint"},{Slot:3b,id:"minecraft:flint"},{Slot:4b,id:"minecraft:flint"},{Slot:5b,id:"minecraft:flint"},{Slot:6b,id:"minecraft:flint"},{Slot:7b,id:"minecraft:flint"},{Slot:8b,id:"minecraft:flint"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"gravel",Count:1b,tag:{lch_crafting:{multiplier:1}}}]}

#cobweb
execute if score @s lch_slot_count matches 9 if score @s lch_slot_size matches ..64 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:string"},{Slot:1b,id:"minecraft:string"},{Slot:2b,id:"minecraft:string"},{Slot:3b,id:"minecraft:string"},{Slot:4b,id:"minecraft:slime_ball"},{Slot:5b,id:"minecraft:string"},{Slot:6b,id:"minecraft:string"},{Slot:7b,id:"minecraft:string"},{Slot:8b,id:"minecraft:string"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"cobweb",Count:1b,tag:{lch_crafting:{multiplier:1}}}]}

#horse armour
execute if score @s lch_slot_count matches 6 if score @s lch_slot_size matches ..1 if block ~ ~ ~ dropper{Items:[{Slot:2b,id:"minecraft:iron_ingot"},{Slot:3b,id:"minecraft:iron_ingot"},{Slot:4b,id:"minecraft:leather"},{Slot:5b,id:"minecraft:iron_ingot"},{Slot:6b,id:"minecraft:iron_ingot"},{Slot:8b,id:"minecraft:iron_ingot"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"iron_horse_armor",Count:1b,tag:{lch_crafting:{multiplier:1}}}]}
execute if score @s lch_slot_count matches 6 if score @s lch_slot_size matches ..1 if block ~ ~ ~ dropper{Items:[{Slot:2b,id:"minecraft:gold_ingot"},{Slot:3b,id:"minecraft:gold_ingot"},{Slot:4b,id:"minecraft:leather"},{Slot:5b,id:"minecraft:gold_ingot"},{Slot:6b,id:"minecraft:gold_ingot"},{Slot:8b,id:"minecraft:gold_ingot"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"golden_horse_armor",Count:1b,tag:{lch_crafting:{multiplier:1}}}]}
execute if score @s lch_slot_count matches 6 if score @s lch_slot_size matches ..1 if block ~ ~ ~ dropper{Items:[{Slot:2b,id:"minecraft:diamond"},{Slot:3b,id:"minecraft:diamond"},{Slot:4b,id:"minecraft:leather"},{Slot:5b,id:"minecraft:diamond"},{Slot:6b,id:"minecraft:diamond"},{Slot:8b,id:"minecraft:diamond"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"diamond_horse_armor",Count:1b,tag:{lch_crafting:{multiplier:1}}}]}

#double stone stone slab
execute if score @s lch_slot_count matches 4 if score @s lch_slot_size matches ..32 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:smooth_stone_slab"},{Slot:1b,id:"minecraft:smooth_stone_slab"},{Slot:3b,id:"minecraft:smooth_stone_slab"},{Slot:4b,id:"minecraft:smooth_stone_slab"}]} run data merge block ~ ~ ~ {Items:[{Slot:8,id:"smooth_stone",Count:1b,tag:{lch_crafting:{multiplier:2}}}]}

# ======
# CUSTOM
# ======

#end stone from fragments
execute if score @s lch_slot_count matches 4 if score @s lch_slot_size matches ..64 if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{origami-games:{launch:{item:"end_stone_fragment"}}}},{Slot:1b,tag:{origami-games:{launch:{item:"end_stone_fragment"}}}},{Slot:3b,tag:{origami-games:{launch:{item:"end_stone_fragment"}}}},{Slot:4b,tag:{origami-games:{launch:{item:"end_stone_fragment"}}}}]} run data merge block ~ ~ ~ {Items:[{Slot:8b,id:"end_stone",Count:1b,tag:{lch_crafting:{multiplier:1}}}]}

#electrified energy bars
execute if score @s lch_slot_count matches 2 if score @s lch_slot_size matches ..64 if block ~ ~ ~ dropper{Items:[{id:"minecraft:iron_bars"},{id:"minecraft:redstone_torch"}]} run function origami-games:launch/item/electrified_energy_bars/craft

#lightning rod
execute if score @s lch_slot_count matches 9 if score @s lch_slot_size matches ..8 if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{origami-games:{launch:{item:"electrified_energy_bars"}}}},{Slot:1b,tag:{origami-games:{launch:{item:"electrified_energy_bars"}}}},{Slot:2b,tag:{origami-games:{launch:{item:"electrified_energy_bars"}}}},{Slot:3b,tag:{origami-games:{launch:{item:"electrified_energy_bars"}}}},{Slot:4b,id:"minecraft:blaze_powder"},{Slot:5b,tag:{origami-games:{launch:{item:"electrified_energy_bars"}}}},{Slot:6b,tag:{origami-games:{launch:{item:"electrified_energy_bars"}}}},{Slot:7b,tag:{origami-games:{launch:{item:"electrified_energy_bars"}}}},{Slot:8b,tag:{origami-games:{launch:{item:"electrified_energy_bars"}}}}]} run function origami-games:launch/item/lightning_rod/craft

#ender rod
execute if score @s lch_slot_count matches 9 if score @s lch_slot_size matches ..8 if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{origami-games:{launch:{item:"lightning_rod"}}}},{Slot:1b,tag:{origami-games:{launch:{item:"lightning_rod"}}}},{Slot:2b,tag:{origami-games:{launch:{item:"lightning_rod"}}}},{Slot:3b,tag:{origami-games:{launch:{item:"lightning_rod"}}}},{Slot:4b,id:"minecraft:ender_pearl"},{Slot:5b,tag:{origami-games:{launch:{item:"lightning_rod"}}}},{Slot:6b,tag:{origami-games:{launch:{item:"lightning_rod"}}}},{Slot:7b,tag:{origami-games:{launch:{item:"lightning_rod"}}}},{Slot:8b,tag:{origami-games:{launch:{item:"lightning_rod"}}}}]} run function origami-games:launch/item/ender_rod/craft

#light bridge
execute if score @s lch_slot_count matches 9 if score @s lch_slot_size matches ..16 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:iron_block"},{Slot:1b,id:"minecraft:sea_lantern"},{Slot:2b,id:"minecraft:iron_block"},{Slot:3b,id:"minecraft:purpur_block"},{Slot:4b,id:"minecraft:light_blue_stained_glass"},{Slot:5b,id:"minecraft:purpur_block"},{Slot:6b,id:"minecraft:iron_block"},{Slot:7b,id:"minecraft:sea_lantern"},{Slot:8b,id:"minecraft:iron_block"}]} run function origami-games:launch/block/light_bridge/craft

#gravity pad
execute if score @s lch_slot_count matches 9 if score @s lch_slot_size matches ..16 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:smooth_stone"},{Slot:1b,id:"minecraft:dropper"},{Slot:2b,id:"minecraft:smooth_stone"},{Slot:3b,tag:{origami-games:{launch:{item:"magnetite_lump"}}}},{Slot:4b,tag:{origami-games:{launch:{item:"magnetite_lump"}}}},{Slot:5b,tag:{origami-games:{launch:{item:"magnetite_lump"}}}},{Slot:6b,id:"minecraft:smooth_stone"},{Slot:7b,id:"minecraft:smooth_stone"},{Slot:8b,id:"minecraft:smooth_stone"}]} run function origami-games:launch/block/gravity_pad/craft

#custom arrows
# execute if score @s lch_slot_count matches 9 if score @s lch_slot_size matches ..8 unless block ~ ~ ~ dropper{Items:[{tag:{origami-games:{launch:{item:"custom_arrow"}}}}]} if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:arrow"},{Slot:1b,id:"minecraft:arrow"},{Slot:2b,id:"minecraft:arrow"},{Slot:3b,id:"minecraft:arrow"},{Slot:4b,id:"minecraft:gunpowder"},{Slot:5b,id:"minecraft:arrow"},{Slot:6b,id:"minecraft:arrow"},{Slot:7b,id:"minecraft:arrow"},{Slot:8b,id:"minecraft:arrow"}]} run function origami-games:launch/item/arrow/explosive/craft

# execute if score @s lch_slot_count matches 9 if score @s lch_slot_size matches ..8 unless block ~ ~ ~ dropper{Items:[{tag:{origami-games:{launch:{item:"custom_arrow"}}}}]} if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:arrow"},{Slot:1b,id:"minecraft:arrow"},{Slot:2b,id:"minecraft:arrow"},{Slot:3b,id:"minecraft:arrow"},{Slot:4b,tag:{origami-games:{launch:{item:"lightning_rod"}}}},{Slot:5b,id:"minecraft:arrow"},{Slot:6b,id:"minecraft:arrow"},{Slot:7b,id:"minecraft:arrow"},{Slot:8b,id:"minecraft:arrow"}]} run function origami-games:launch/item/arrow/lightning/craft

# execute if score @s lch_slot_count matches 9 if score @s lch_slot_size matches ..8 unless block ~ ~ ~ dropper{Items:[{tag:{origami-games:{launch:{item:"custom_arrow"}}}}]} if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:arrow"},{Slot:1b,id:"minecraft:arrow"},{Slot:2b,id:"minecraft:arrow"},{Slot:3b,id:"minecraft:arrow"},{Slot:4b,id:"minecraft:ender_pearl"},{Slot:5b,id:"minecraft:arrow"},{Slot:6b,id:"minecraft:arrow"},{Slot:7b,id:"minecraft:arrow"},{Slot:8b,id:"minecraft:arrow"}]} run function origami-games:launch/item/arrow/ender/craft
# execute if score @s lch_slot_count matches 9 if score @s lch_slot_size matches ..8 unless block ~ ~ ~ dropper{Items:[{tag:{origami-games:{launch:{item:"custom_arrow"}}}}]} if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:arrow"},{Slot:1b,id:"minecraft:arrow"},{Slot:2b,id:"minecraft:arrow"},{Slot:3b,id:"minecraft:arrow"},{Slot:4b,tag:{origami-games:{launch:{item:"ender_rod"}}}},{Slot:5b,id:"minecraft:arrow"},{Slot:6b,id:"minecraft:arrow"},{Slot:7b,id:"minecraft:arrow"},{Slot:8b,id:"minecraft:arrow"}]} run function origami-games:launch/item/arrow/ender/craft

# execute if score @s lch_slot_count matches 2 if score @s lch_slot_size matches ..64 unless block ~ ~ ~ dropper{Items:[{tag:{origami-games:{launch:{item:"custom_arrow"}}}}]} if block ~ ~ ~ dropper{Items:[{id:"minecraft:arrow"}]} run function origami-games:launch/item/arrow/torch/craft

#looking glass
execute if score @s lch_slot_count matches 9 if score @s lch_slot_size matches ..64 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:gold_nugget"},{Slot:1b,id:"minecraft:gold_nugget"},{Slot:2b,id:"minecraft:gold_nugget"},{Slot:3b,id:"minecraft:gold_nugget"},{Slot:4b,id:"minecraft:glass"},{Slot:5b,id:"minecraft:gold_nugget"},{Slot:6b,id:"minecraft:gold_nugget"},{Slot:7b,id:"minecraft:gold_nugget"},{Slot:8b,id:"minecraft:gold_nugget"}]} run function origami-games:launch/item/looking_glass/craft

#magnetite tools
execute if score @s lch_slot_count matches 3 if score @s lch_slot_size matches 1 if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{origami-games:{launch:{item:"magnetite_lump"}}}},{Slot:3b,tag:{origami-games:{launch:{item:"magnetite_lump"}}}},{Slot:6b,id:"minecraft:stick"}]} run function origami-games:launch/item/magnetite/sword/craft
execute if score @s lch_slot_count matches 5 if score @s lch_slot_size matches 1 if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{origami-games:{launch:{item:"magnetite_lump"}}}},{Slot:1b,tag:{origami-games:{launch:{item:"magnetite_lump"}}}},{Slot:2b,tag:{origami-games:{launch:{item:"magnetite_lump"}}}},{Slot:4b,id:"minecraft:stick"},{Slot:7b,id:"minecraft:stick"}]} run function origami-games:launch/item/magnetite/pickaxe/craft
execute if score @s lch_slot_count matches 3 if score @s lch_slot_size matches 1 if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{origami-games:{launch:{item:"magnetite_lump"}}}},{Slot:3b,id:"minecraft:stick"},{Slot:6b,id:"minecraft:stick"}]} run function origami-games:launch/item/magnetite/shovel/craft
execute if score @s lch_slot_count matches 5 if score @s lch_slot_size matches 1 if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{origami-games:{launch:{item:"magnetite_lump"}}}},{Slot:1b,tag:{origami-games:{launch:{item:"magnetite_lump"}}}},{Slot:3b,id:"minecraft:stick"},{Slot:4b,tag:{origami-games:{launch:{item:"magnetite_lump"}}}},{Slot:6b,id:"minecraft:stick"}]} run function origami-games:launch/item/magnetite/hammer/craft

#block breaker
execute if score @s lch_slot_count matches 9 if score @s lch_slot_size matches ..16 if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{origami-games:{launch:{item:"industrial_grade_diamond"}}}},{Slot:1b,tag:{origami-games:{launch:{item:"industrial_grade_diamond"}}}},{Slot:2b,tag:{origami-games:{launch:{item:"industrial_grade_diamond"}}}},{Slot:3b,id:"minecraft:iron_ingot"},{Slot:4b,id:"minecraft:stick"},{Slot:5b,id:"minecraft:iron_ingot"},{Slot:6b,id:"minecraft:piston"},{Slot:7b,id:"minecraft:stick"},{Slot:8b,id:"minecraft:piston"}]} run function origami-games:launch/block/block_breaker/craft

#disenchanter
execute if score @s lch_slot_count matches 9 if score @s lch_slot_size matches ..16 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:smooth_stone"},{Slot:1b,id:"minecraft:writable_book"},{Slot:2b,id:"minecraft:smooth_stone"},{Slot:3b,id:"minecraft:smooth_stone"},{Slot:4b,id:"minecraft:enchanting_table"},{Slot:5b,id:"minecraft:smooth_stone"},{Slot:6b,id:"minecraft:smooth_stone"},{Slot:7b,id:"minecraft:obsidian"},{Slot:8b,id:"minecraft:smooth_stone"}]} run function origami-games:launch/block/disenchanter/craft

#bonsai pot
execute if score @s lch_slot_count matches 6 if score @s lch_slot_size matches ..16 if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:bone_block"},{Slot:2b,id:"minecraft:bone_block"},{Slot:3b,id:"minecraft:bone_block"},{Slot:4b,id:"minecraft:flower_pot"},{Slot:5b,id:"minecraft:bone_block"},{Slot:7b,id:"minecraft:bone_block"}]} run function origami-games:launch/block/bonsai_pot/craft
