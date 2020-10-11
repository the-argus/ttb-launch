#runs on load
#called by #load

#notify load
tellraw @a [{"translate":"pack.origami-games.cooking.name","color":"aqua","clickEvent":{"action":"open_url","value":"https://origami-games.github.io/cooking"}},{"text":": ","color":"aqua"},{"translate":"pack.origami-games.cooking.load","color":"dark_aqua"}]
execute unless entity @a[limit=1] run say Cooking: Loaded

#initialise scoreboards
scoreboard objectives add cck_cooking dummy
scoreboard objectives add cck_const_sat dummy
scoreboard objectives add cck_const_food dummy
scoreboard objectives add cck_cooktime dummy

scoreboard objectives add cck_cancook dummy
scoreboard objectives add cck_cookstate dummy

scoreboard objectives add cck_has_base dummy

#stuff for tracking player inventory
scoreboard objectives add inven_changed dummy
scoreboard objectives add food_consumed dummy

scoreboard objectives add slot_0_sat dummy
scoreboard objectives add slot_1_sat dummy
scoreboard objectives add slot_2_sat dummy
scoreboard objectives add slot_3_sat dummy
scoreboard objectives add slot_4_sat dummy
scoreboard objectives add slot_5_sat dummy
scoreboard objectives add slot_6_sat dummy
scoreboard objectives add slot_7_sat dummy
scoreboard objectives add slot_8_sat dummy

scoreboard objectives add slot_0_effect dummy
scoreboard objectives add slot_1_effect dummy
scoreboard objectives add slot_2_effect dummy
scoreboard objectives add slot_3_effect dummy
scoreboard objectives add slot_4_effect dummy
scoreboard objectives add slot_5_effect dummy
scoreboard objectives add slot_6_effect dummy
scoreboard objectives add slot_7_effect dummy
scoreboard objectives add slot_8_effect dummy

scoreboard objectives add slot_0_strength dummy
scoreboard objectives add slot_1_strength dummy
scoreboard objectives add slot_2_strength dummy
scoreboard objectives add slot_3_strength dummy
scoreboard objectives add slot_4_strength dummy
scoreboard objectives add slot_5_strength dummy
scoreboard objectives add slot_6_strength dummy
scoreboard objectives add slot_7_strength dummy
scoreboard objectives add slot_8_strength dummy

#set food and saturation restored constants for fake players
scoreboard players set $apple cck_const_food 4
scoreboard players set $apple cck_const_sat 3

scoreboard players set $bakedPotato cck_const_food 5
scoreboard players set $bakedPotato cck_const_sat 6

scoreboard players set $beetroot cck_const_food 1
scoreboard players set $beetroot cck_const_sat 2

scoreboard players set $bread cck_const_food 5
scoreboard players set $bread cck_const_sat 6

scoreboard players set $carrot cck_const_food 3
scoreboard players set $carrot cck_const_sat 4

scoreboard players set $chorusFruit cck_const_food 4
scoreboard players set $chorusFruit cck_const_sat 3

scoreboard players set $cookedChicken cck_const_food 6
scoreboard players set $cookedChicken cck_const_sat 8

scoreboard players set $cookedCod cck_const_food 5
scoreboard players set $cookedCod cck_const_sat 6

scoreboard players set $cookedMutton cck_const_food 6
scoreboard players set $cookedMutton cck_const_sat 10

scoreboard players set $cookedPorkchop cck_const_food 8
scoreboard players set $cookedPorkchop cck_const_sat 13

scoreboard players set $cookedRabbit cck_const_food 5
scoreboard players set $cookedRabbit cck_const_sat 6

scoreboard players set $cookedSalmon cck_const_food 6
scoreboard players set $cookedSalmon cck_const_sat 10

scoreboard players set $cookie cck_const_food 2
scoreboard players set $cookie cck_const_sat 1

scoreboard players set $driedKelp cck_const_food 1
scoreboard players set $driedKelp cck_const_sat 1

scoreboard players set $enchantedGoldenApple cck_const_food 4
scoreboard players set $enchantedGoldenApple cck_const_sat 10

scoreboard players set $goldenApple cck_const_food 4
scoreboard players set $goldenApple cck_const_sat 10

scoreboard players set $goldenCarrot cck_const_food 6
scoreboard players set $goldenCarrot cck_const_sat 15

scoreboard players set $honeyBottle cck_const_food 6
scoreboard players set $honeyBottle cck_const_sat 2

scoreboard players set $melon cck_const_food 2
scoreboard players set $melon cck_const_sat 2

scoreboard players set $poisonousPotato cck_const_food 2
scoreboard players set $poisonousPotato cck_const_sat 2

scoreboard players set $potato cck_const_food 1
scoreboard players set $potato cck_const_sat 1

scoreboard players set $pufferfish cck_const_food 1
scoreboard players set $pufferfish cck_const_sat 1

scoreboard players set $beef cck_const_food 3
scoreboard players set $beef cck_const_sat 2

scoreboard players set $chicken cck_const_food 2
scoreboard players set $chicken cck_const_sat 2

scoreboard players set $cod cck_const_food 2
scoreboard players set $cod cck_const_sat 1

scoreboard players set $mutton cck_const_food 2
scoreboard players set $mutton cck_const_sat 2

scoreboard players set $porkchop cck_const_food 3
scoreboard players set $porkchop cck_const_sat 2

scoreboard players set $rabbit cck_const_food 3
scoreboard players set $rabbit cck_const_sat 2

scoreboard players set $salmon cck_const_food 2
scoreboard players set $salmon cck_const_sat 1

scoreboard players set $rottenFlesh cck_const_food 4
scoreboard players set $rottenFlesh cck_const_sat 1

scoreboard players set $spiderEye cck_const_food 4
scoreboard players set $spiderEye cck_const_sat 1

scoreboard players set $cookedBeef cck_const_food 8
scoreboard players set $cookedBeef cck_const_sat 13

scoreboard players set $sweetBerries cck_const_food 2
scoreboard players set $sweetBerries cck_const_sat 1

scoreboard players set $tropicalFish cck_const_food 1
scoreboard players set $tropicalFish cck_const_sat 1

scoreboard players set $cake cck_const_sat 15

scoreboard players set $pumpkinPie cck_const_sat 5
