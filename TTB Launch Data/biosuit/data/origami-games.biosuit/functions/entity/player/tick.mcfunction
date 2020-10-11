#called by tick

# usages
execute if entity @s[scores={bs_iframe=1..}] run function origami-games.biosuit:entity/player/placed_custom_block
scoreboard players reset @s bs_iframe

execute if score @s bs_barrel matches 1.. anchored eyes run function origami-games.biosuit:entity/player/storage/detect_barrel
execute if score @s bs_chest matches 1.. anchored eyes run function origami-games.biosuit:entity/player/storage/detect_chest
execute if score @s bs_tchest matches 1.. anchored eyes run function origami-games.biosuit:entity/player/storage/detect_trapped_chest
execute if score @s bs_dispenser matches 1.. anchored eyes run function origami-games.biosuit:entity/player/storage/detect_dispenser
execute if score @s bs_dropper matches 1.. anchored eyes run function origami-games.biosuit:entity/player/storage/detect_dropper
execute if score @s bs_echest matches 1.. anchored eyes run function origami-games.biosuit:entity/player/storage/detect_ender_chest
execute if score @s bs_hopper matches 1.. anchored eyes run function origami-games.biosuit:entity/player/storage/detect_hopper
execute if score @s bs_bfurnace matches 1.. anchored eyes run function origami-games.biosuit:entity/player/storage/detect_blast_furnace
execute if score @s bs_furnace matches 1.. anchored eyes run function origami-games.biosuit:entity/player/storage/detect_furnace
execute if score @s bs_smoker matches 1.. anchored eyes run function origami-games.biosuit:entity/player/storage/detect_smoker
execute if score @s bs_sbox matches 1.. anchored eyes run function origami-games.biosuit:entity/player/storage/detect_shulker_box

execute if score @s bs_gameleave matches 1.. run function origami-games.biosuit:entity/player/reset_inv_change
execute if score @s bs_gameleave matches 1.. run scoreboard players set @s bs_gameleave 0

execute if entity @s[tag=bs_suffocating] if score @s bs_oxygen matches 1.. run scoreboard players remove @s bs_oxygen 1
execute if entity @s[tag=!bs_suffocating] if score @s bs_oxygen < $maxOxygen bs_oxygen run scoreboard players add @s bs_oxygen 1
execute unless score @s bs_oxygen = $maxOxygen bs_oxygen run function origami-games.biosuit:entity/player/oxygen_display

execute if score @s bs_deaths matches 1.. run function origami-games.biosuit:entity/player/inventory_changed
execute if score @s bs_deaths matches 1.. run scoreboard players operation @s bs_oxygen
execute if score @s bs_deaths matches 1.. run scoreboard players reset @s bs_deaths

scoreboard players set @s bs_helmet_armor 5
scoreboard players set @s bs_chest_armor 1
scoreboard players set @s bs_leg_armor 1
scoreboard players set @s bs_boot_armor 1
