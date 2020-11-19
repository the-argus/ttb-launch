#@s - disenchanter
#called by origami-games.core:tick

#removal
execute unless block ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.disenchanter"}'} run function origami-games.disenchanters:block/disenchanters/remove

#recipes
execute if block ~ ~ ~ dropper[triggered=false]{Items:[{tag:{Enchantments:[{}]},Slot:0b},{id:"minecraft:book",Count:1b,Slot:8b}]} run function origami-games.disenchanters:block/disenchanters/recipe_validity_check
