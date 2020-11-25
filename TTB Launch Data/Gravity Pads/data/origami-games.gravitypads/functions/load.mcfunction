#notify load
tellraw @a [{"text":"TTB Launch Gravity Pads: ","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/the-argus/ttb-launch"}},{"text":"Loaded","color":"dark_aqua"}]
execute unless entity @a run say Gravity Pads: Loaded
