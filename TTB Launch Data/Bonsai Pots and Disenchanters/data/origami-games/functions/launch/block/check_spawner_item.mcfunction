#checks spawner-dropped items
#@s - @e[type=item,nbt={Item:{tag:{origami-games:{launch:{spawner:{}}}}}}]
#called by launch/tick

#tool conditions
tag @s[nbt={Item:{tag:{origami-games:{launch:{spawner:{tool:{id:"minecraft:wooden_pickaxe"}}}}}}}] add lch_spawner_wood
tag @s[nbt={Item:{tag:{origami-games:{launch:{spawner:{tool:{id:"minecraft:stone_pickaxe"}}}}}}}] add lch_spawner_stone
tag @s[nbt={Item:{tag:{origami-games:{launch:{spawner:{tool:{id:"minecraft:iron_pickaxe"}}}}}}}] add lch_spawner_iron
tag @s[nbt={Item:{tag:{origami-games:{launch:{spawner:{tool:{id:"minecraft:golden_pickaxe"}}}}}}}] add lch_spawner_gold
tag @s[nbt={Item:{tag:{origami-games:{launch:{spawner:{tool:{id:"minecraft:diamond_pickaxe"}}}}}}}] add lch_spawner_diamond
tag @s[nbt={Item:{tag:{origami-games:{launch:{spawner:{tool:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}}}}}}] add lch_spawner_ench_silk
tag @s[nbt=!{Item:{tag:{origami-games:{launch:{spawner:{tool:{}}}}}}}] add lch_spawner_no_tool

#titanium plating
execute if entity @s[nbt={Item:{tag:{origami-games:{launch:{spawner:{block:"titanium_plating"}}}}}}] run loot spawn ~ ~ ~ loot origami-games:launch/blocks/titanium_plating
#magnetite ore
execute if entity @s[tag=lch_spawner_diamond,tag=!lch_spawner_ench_silk,nbt={Item:{tag:{origami-games:{launch:{spawner:{block:"magnetite_ore"}}}}}}] run loot spawn ~ ~ ~ loot origami-games:launch/blocks/magnetite_ore
execute if entity @s[tag=lch_spawner_diamond,tag=lch_spawner_ench_silk,nbt={Item:{tag:{origami-games:{launch:{spawner:{block:"magnetite_ore"}}}}}}] run loot spawn ~ ~ ~ loot origami-games:launch/items/magnetite_ore

#no tool
execute if entity @s[tag=lch_spawner_no_tool,nbt={Item:{tag:{origami-games:{launch:{spawner:{block:"magnetite_ore"}}}}}}] run loot spawn ~ ~ ~ loot origami-games:launch/blocks/magnetite_ore

#kill entities
kill @s[type=!player]

#kill orbs if necessary
tag @s[nbt={Item:{tag:{origami-games:{launch:{spawner:{block:"titanium_plating"}}}}}}] add lch_kill_orbs
tag @s[tag=!lch_spawner_diamond,nbt={Item:{tag:{origami-games:{launch:{spawner:{block:"magnetite_ore"}}}}}}] add lch_kill_orbs
tag @s[nbt={Item:{tag:{origami-games:{launch:{spawner:{tool:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}}}}}}] add lch_kill_orbs

execute if entity @s[tag=lch_kill_orbs] align xyz run kill @e[type=experience_orb,dx=0,dy=0,dz=0]
