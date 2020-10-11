#runs on load
#called by #load

#notify load
tellraw @a [{"translate":"pack.origami-games.biosuit.name","color":"aqua"},{"text":": ","color":"aqua"},{"translate":"pack.origami-games.biosuit.load","color":"dark_aqua"}]
execute unless entity @a[limit=1] run say Biosuit: Loaded

advancement revoke @a only origami-games.biosuit:inventory_changed

#initialise scoreboards
scoreboard objectives add suitEnabled dummy

scoreboard objectives add bs_hasHelm dummy
scoreboard objectives add bs_hasBoots dummy
scoreboard objectives add bs_hasLegs dummy
scoreboard objectives add bs_armorAmount dummy

scoreboard objectives add bs_iframe minecraft.used:minecraft.item_frame
#scoreboard objectives add bs_mined minecraft.broke_block
scoreboard objectives add bs_cmprsr_count dummy
scoreboard objectives add bs_scan_stage dummy
scoreboard objectives add bs_counter dummy

scoreboard objectives add bs_barrel custom:open_barrel "Opened Barrel"
scoreboard objectives add bs_chest custom:open_chest "Opened Chest"
scoreboard objectives add bs_tchest custom:trigger_trapped_chest "Opened Trapped Chest"
scoreboard objectives add bs_dispenser custom:inspect_dispenser "Opened Dispenser"
scoreboard objectives add bs_dropper custom:inspect_dropper "Opened Dropper"
scoreboard objectives add bs_echest custom:open_enderchest "Opened Ender Chest"
scoreboard objectives add bs_hopper custom:inspect_hopper "Opened Hopper"
scoreboard objectives add bs_bfurnace custom:interact_with_blast_furnace "Opened Blast Furnace"
scoreboard objectives add bs_furnace custom:interact_with_furnace "Opened Furnace"
scoreboard objectives add bs_smoker custom:interact_with_smoker "Opened Smoker"
scoreboard objectives add bs_sbox custom:open_shulker_box "Opened Shulkerbox"

scoreboard objectives add bs_gameleave custom:leave_game "Games Left"

scoreboard objectives add bs_helmet_armor dummy
scoreboard objectives add bs_chest_armor dummy
scoreboard objectives add bs_leg_armor dummy
scoreboard objectives add bs_boot_armor dummy

scoreboard objectives add bs_tempcheck dummy

scoreboard objectives add bs_oxygen dummy
scoreboard players set $maxOxygen bs_oxygen 3000
scoreboard players operation $scaledOxygen bs_oxygen = $maxOxygen bs_oxygen


scoreboard players set $const10 bs_counter 10
scoreboard players set $const9 bs_counter 9
scoreboard players set $const8 bs_counter 8
scoreboard players set $const7 bs_counter 7
scoreboard players set $const6 bs_counter 6
scoreboard players set $const5 bs_counter 5
scoreboard players set $const4 bs_counter 4
scoreboard players set $const3 bs_counter 3
scoreboard players set $const2 bs_counter 2

scoreboard players operation $threshold10 bs_counter = $maxOxygen bs_oxygen
scoreboard players operation $threshold9 bs_counter = $maxOxygen bs_oxygen
scoreboard players operation $threshold8 bs_counter = $maxOxygen bs_oxygen
scoreboard players operation $threshold7 bs_counter = $maxOxygen bs_oxygen
scoreboard players operation $threshold6 bs_counter = $maxOxygen bs_oxygen
scoreboard players operation $threshold5 bs_counter = $maxOxygen bs_oxygen
scoreboard players operation $threshold4 bs_counter = $maxOxygen bs_oxygen
scoreboard players operation $threshold3 bs_counter = $maxOxygen bs_oxygen
scoreboard players operation $threshold2 bs_counter = $maxOxygen bs_oxygen
scoreboard players operation $threshold1 bs_counter = $maxOxygen bs_oxygen

scoreboard players operation $threshold10 bs_counter *= $const10 bs_counter
scoreboard players operation $threshold9 bs_counter *= $const9 bs_counter
scoreboard players operation $threshold8 bs_counter *= $const8 bs_counter
scoreboard players operation $threshold7 bs_counter *= $const7 bs_counter
scoreboard players operation $threshold6 bs_counter *= $const6 bs_counter
scoreboard players operation $threshold5 bs_counter *= $const5 bs_counter
scoreboard players operation $threshold4 bs_counter *= $const4 bs_counter
scoreboard players operation $threshold3 bs_counter *= $const3 bs_counter
scoreboard players operation $threshold2 bs_counter *= $const2 bs_counter

scoreboard objectives add bs_deaths custom:deaths "Death Increment"

#fake player stuff
execute unless score $global bs_cmprsr_count matches 1.. run scoreboard players set $global bs_cmprsr_count 0
scoreboard players set $iterationAmount bs_counter 8
scoreboard players set $looper bs_counter 0

scoreboard players set $playerReach bs_counter 70
scoreboard players set $raycastLoop bs_counter 0

#stuff for tracking player inventory


#clocks
function origami-games.biosuit:clock16t
