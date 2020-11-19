# fix items in gui
#execute at @s as @e[distance=..9,type=armor_stand,tag=lcore_synthesizer] at @s run function origami-games.core:block/synthesizer/gui/reset/reset

advancement revoke @s only origami-games.core:inventory_changed

function origami-games.elementalarrows:detect_selected_arrow
