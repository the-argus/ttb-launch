# called by block/synthesizer/recipe_check

loot replace block ~ ~ ~ container.16 loot origami-games.core:items/disenchanter
function origami-games.core:block/synthesizer/gui/subtract_items

tag @s add lcore_recipe_succeeded
