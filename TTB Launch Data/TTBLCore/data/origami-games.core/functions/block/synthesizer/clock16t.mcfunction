# called by clock16t

# fix items in gui
execute if entity @p[distance=..9] run function origami-games.core:block/synthesizer/gui/reset/reset

# recipes
execute unless data block ~ ~ ~ Items[{Slot:16b}] run function origami-games.core:block/synthesizer/recipe_validity_check
