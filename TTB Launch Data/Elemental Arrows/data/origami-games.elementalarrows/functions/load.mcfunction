#notify load
tellraw @a [{"text":"TTB Launch Elemental Arrows: ","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/the-argus/ttb-launch"}},{"text":"Loaded","color":"dark_aqua"}]
execute unless entity @a run say Elemental Arrows: Loaded

#initialize scoreboards
scoreboard objectives add ea_arrow_type dummy
scoreboard objectives add ea_arrow_slot dummy
