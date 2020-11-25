#notify load
execute if score $Elemental_Arrows lcore_enabled matches 1.. run tellraw @a [{"text":"TTB Launch Elemental Arrows: ","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/the-argus/ttb-launch"}},{"text":"Loaded","color":"dark_aqua"}]
execute unless entity @a run say Elemental Arrows: Loaded

#initialize scoreboards
scoreboard objectives add ea_arrow_type dummy
scoreboard objectives add ea_arrow_slot dummy
scoreboard objectives add ea_fired minecraft.used:minecraft.bow "Bow Shots Fired"
scoreboard objectives add ea_counter dummy
