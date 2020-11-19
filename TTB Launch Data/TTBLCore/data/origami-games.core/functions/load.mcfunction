#runs on load
#called by #load

#notify load
tellraw @a [{"translate":"pack.origami-games.core.name","color":"aqua"},{"text":": ","color":"aqua"},{"translate":"pack.origami-games.core.load","color":"dark_aqua"}]
execute unless entity @a[limit=1] run say Launch Core: Loaded

#revoke advancements
advancement revoke @a only origami-games.core:inventory_changed

#initialize scoreboards
scoreboard objectives add lcore_synth minecraft.crafted:minecraft.clock "Crafted Synthesizer"
scoreboard players set @a lcore_synth 0
scoreboard objectives add lcore_iframe minecraft.used:minecraft.item_frame "Used Item Frame"
scoreboard objectives add lcore_drop minecraft.custom:minecraft.drop "Items Dropped"

scoreboard objectives add lcore_slot_count dummy
scoreboard objectives add lcore_slot_size dummy

#data storage
data modify storage origami-games.core:block synthesizer.Items set value [{Slot:0b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b},{Slot:9b},{Slot:13b},{Slot:14b},{Slot:15b},{Slot:17b},{Slot:18b},{Slot:22b},{Slot:23b},{Slot:24b},{Slot:25b},{Slot:26b}]
data modify storage origami-games.core:block synthesizer.Items[] merge value {tag:{lcore:{gui_item:1b},display:{Name:'""'},CustomModelData:7510000},id:barrier,Count:1b}
data modify storage origami-games.core:block synthesizer.Items[{Slot:0b}].tag.CustomModelData set value 7510001

#clocks
function origami-games.core:clock16t

#stuff for enabling modules
scoreboard objectives add lcore_enabled dummy "Enabled Modules"
function origami-games.core:modules/disenchanters
function origami-games.core:modules/bonsai_pots
