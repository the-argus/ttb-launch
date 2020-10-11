#called by block/crockpot/cooking

#audiovisuals
particle smoke ~.5 ~ ~.5 0 0 0 0 1 normal @a

#reset
scoreboard players reset first_path cck_cooking
scoreboard players reset has_meat cck_cooking
scoreboard players reset fish cck_cooking
scoreboard players reset meat cck_cooking
scoreboard players reset kelps cck_cooking
scoreboard players reset beefs cck_cooking
scoreboard players reset fruits cck_cooking
scoreboard players reset veggies cck_cooking
scoreboard players reset chickens cck_cooking
scoreboard players reset salmons cck_cooking
scoreboard players reset porks cck_cooking
scoreboard players reset honeys cck_cooking
scoreboard players reset f_and_v cck_cooking
scoreboard players reset golden_foods cck_cooking
scoreboard players reset secnd_path cck_cooking
scoreboard players reset saturation cck_cooking
scoreboard players set item_tex cck_cooking 0

scoreboard players reset haste cck_cooking
scoreboard players reset speed cck_cooking
scoreboard players reset fire_resist cck_cooking
scoreboard players reset jump_boost cck_cooking
scoreboard players reset absorption cck_cooking

#item checks
execute store result score bread cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:bread",Count:1b}},dx=0]

execute store result score cod cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:cod",Count:1b}},dx=0]
execute store result score cooked_cod cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:cooked_cod",Count:1b}},dx=0]
execute store result score salmon cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:salmon",Count:1b}},dx=0]
execute store result score cooked_salmon cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:cooked_salmon",Count:1b}},dx=0]
execute store result score tropical_fish cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:tropical_fish",Count:1b}},dx=0]
scoreboard players operation fish cck_cooking += cod cck_cooking
scoreboard players operation fish cck_cooking += cooked_cod cck_cooking
scoreboard players operation fish cck_cooking += salmon cck_cooking
scoreboard players operation fish cck_cooking += cooked_salmon cck_cooking
scoreboard players operation fish cck_cooking += tropical_fish cck_cooking

scoreboard players operation salmons cck_cooking += cooked_salmon cck_cooking
scoreboard players operation salmons cck_cooking += salmon cck_cooking

execute store result score mutton cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:mutton",Count:1b}},dx=0]
execute store result score cooked_mutton cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:cooked_mutton",Count:1b}},dx=0]
execute store result score beef cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:beef",Count:1b}},dx=0]
execute store result score cooked_beef cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:cooked_beef",Count:1b}},dx=0]
execute store result score rabbit cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:rabbit",Count:1b}},dx=0]
execute store result score cooked_rabbit cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:cooked_rabbit",Count:1b}},dx=0]
execute store result score porkchop cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:porkchop",Count:1b}},dx=0]
execute store result score cooked_porkchop cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:cooked_porkchop",Count:1b}},dx=0]
execute store result score chicken cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:chicken",Count:1b}},dx=0]
execute store result score cooked_chicken cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:cooked_chicken",Count:1b}},dx=0]
execute store result score rotten_flesh cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh",Count:1b}},dx=0]
scoreboard players operation meat cck_cooking += mutton cck_cooking
scoreboard players operation meat cck_cooking += cooked_mutton cck_cooking
scoreboard players operation meat cck_cooking += beef cck_cooking
scoreboard players operation meat cck_cooking += cooked_beef cck_cooking
scoreboard players operation meat cck_cooking += rabbit cck_cooking
scoreboard players operation meat cck_cooking += cooked_rabbit cck_cooking
scoreboard players operation meat cck_cooking += porkchop cck_cooking
scoreboard players operation meat cck_cooking += cooked_porkchop cck_cooking
scoreboard players operation meat cck_cooking += chicken cck_cooking
scoreboard players operation meat cck_cooking += cooked_chicken cck_cooking

execute store result score sweetberry cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:sweet_berries",Count:1b}},dx=0]
execute store result score ench_gapp cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:enchanted_golden_apple",Count:1b}},dx=0]
execute store result score gapp cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:golden_apple",Count:1b}},dx=0]
execute store result score apple cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:apple",Count:1b}},dx=0]
execute store result score melon_slice cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:melon_slice",Count:1b}},dx=0]
execute store result score popped_chorus_fruit cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:popped_chorus_fruit",Count:1b}},dx=0]
execute store result score chorus_fruit cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:chorus_fruit",Count:1b}},dx=0]
scoreboard players operation fruits cck_cooking += sweetberry cck_cooking
scoreboard players operation fruits cck_cooking += ench_gapp cck_cooking
scoreboard players operation fruits cck_cooking += gapp cck_cooking
scoreboard players operation fruits cck_cooking += apple cck_cooking
scoreboard players operation fruits cck_cooking += melon_slice cck_cooking
scoreboard players operation fruits cck_cooking += popped_chorus_fruit cck_cooking
scoreboard players operation fruits cck_cooking += chorus_fruit cck_cooking

execute store result score beetroot cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:beetroot",Count:1b}},dx=0]
execute store result score poisonpotat cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:poisonous_potato",Count:1b}},dx=0]
execute store result score baked_potato cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:baked_potato",Count:1b}},dx=0]
execute store result score potato cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:potato",Count:1b}},dx=0]
execute store result score carrot cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:carrot",Count:1b}},dx=0]
execute store result score golden_carrot cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:golden_carrot",Count:1b}},dx=0]
execute store result score sugar_cane cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:sugar_cane",Count:1b}},dx=0]
scoreboard players operation veggies cck_cooking += beetroot cck_cooking
scoreboard players operation veggies cck_cooking += poisonpotat cck_cooking
scoreboard players operation veggies cck_cooking += baked_potato cck_cooking
scoreboard players operation veggies cck_cooking += potato cck_cooking
scoreboard players operation veggies cck_cooking += carrot cck_cooking
scoreboard players operation veggies cck_cooking += golden_carrot cck_cooking
scoreboard players operation veggies cck_cooking += sugar_cane cck_cooking

scoreboard players operation golden_foods cck_cooking += golden_carrot cck_cooking
scoreboard players operation golden_foods cck_cooking += ench_gapp cck_cooking
scoreboard players operation golden_foods cck_cooking += gapp cck_cooking

execute store result score kelp cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:kelp",Count:1b}},dx=0]
execute store result score dried_kelp cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:dried_kelp",Count:1b}},dx=0]
execute store result score honeycomb cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:honeycomb",Count:1b}},dx=0]
execute store result score honey_bottle cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:honey_bottle",Count:1b}},dx=0]
scoreboard players operation veggies cck_cooking += dried_kelp cck_cooking
scoreboard players operation veggies cck_cooking += kelp cck_cooking
scoreboard players operation kelps cck_cooking += dried_kelp cck_cooking
scoreboard players operation kelps cck_cooking += kelp cck_cooking

scoreboard players operation beefs cck_cooking += beef cck_cooking
scoreboard players operation beefs cck_cooking += cooked_beef cck_cooking

scoreboard players operation chickens cck_cooking += chicken cck_cooking
scoreboard players operation chickens cck_cooking += cooked_chicken cck_cooking

scoreboard players operation porks cck_cooking += porkchop cck_cooking
scoreboard players operation porks cck_cooking += cooked_porkchop cck_cooking

scoreboard players operation honeys cck_cooking += honeycomb cck_cooking
scoreboard players operation honeys cck_cooking += honey_bottle cck_cooking

scoreboard players operation f_and_v cck_cooking += fruits cck_cooking
scoreboard players operation f_and_v cck_cooking += veggies cck_cooking

scoreboard players operation mbp cck_cooking += cooked_mutton cck_cooking
scoreboard players operation mbp cck_cooking += mutton cck_cooking
scoreboard players operation mbp cck_cooking += beef cck_cooking
scoreboard players operation mbp cck_cooking += cooked_beef cck_cooking
scoreboard players operation mbp cck_cooking += porkchop cck_cooking
scoreboard players operation mbp cck_cooking += cooked_porkchop cck_cooking

#recipes
scoreboard players add first_path cck_cooking 0
scoreboard players add has_meat cck_cooking 0
scoreboard players add secnd_path cck_cooking 0

execute if score meat cck_cooking matches 1.. run scoreboard players add first_path cck_cooking 1
execute if score fish cck_cooking matches 1.. run scoreboard players add first_path cck_cooking 1

execute if score first_path cck_cooking matches 1.. run scoreboard players set has_meat cck_cooking 1
execute if score first_path cck_cooking matches 0 run scoreboard players set has_meat cck_cooking 0

execute if score has_meat cck_cooking matches 1.. if score fish cck_cooking matches 0 run scoreboard players set secnd_path cck_cooking 1
execute if score has_meat cck_cooking matches 1.. if score meat cck_cooking matches 0 run scoreboard players set secnd_path cck_cooking 2

#cooked carcass
execute if score rotten_flesh cck_cooking matches 1.. run scoreboard players set item_tex cck_cooking 7

#sushi texture
execute if score item_tex cck_cooking matches 0 if score secnd_path cck_cooking matches 2 if score kelps cck_cooking matches 1.. run scoreboard players set item_tex cck_cooking 1
#fish sandwich texture
execute if score item_tex cck_cooking matches 0 if score secnd_path cck_cooking matches 2 if score bread cck_cooking matches 1.. run scoreboard players set item_tex cck_cooking 2
#fish taco texture
execute if score item_tex cck_cooking matches 0 if score secnd_path cck_cooking matches 2 if score f_and_v cck_cooking matches 1.. run scoreboard players set item_tex cck_cooking 3
#tropical fish fillet texture
execute if score item_tex cck_cooking matches 0 if score secnd_path cck_cooking matches 2 if score tropical_fish cck_cooking matches 1.. run scoreboard players set item_tex cck_cooking 4
#baked salmon texture
execute if score item_tex cck_cooking matches 0 if score secnd_path cck_cooking matches 2 if score salmons cck_cooking matches 1.. run scoreboard players set item_tex cck_cooking 5
#fish fillet texture
execute if score item_tex cck_cooking matches 0 if score secnd_path cck_cooking matches 2 run scoreboard players set item_tex cck_cooking 6

#burger texture
execute if score item_tex cck_cooking matches 0 if score secnd_path cck_cooking matches 1 if score beefs cck_cooking matches 1.. if score bread cck_cooking matches 1.. if score mbp cck_cooking matches 0 run scoreboard players set item_tex cck_cooking 8
#fillet mignon
execute if score item_tex cck_cooking matches 0 if score secnd_path cck_cooking matches 1 if score mbp cck_cooking matches 0 if score chicken cck_cooking matches 0 if score cooked_chicken cck_cooking matches 0 if score beefs cck_cooking matches 1.. run scoreboard players set item_tex cck_cooking 9
#chicken sandwich texture
execute if score item_tex cck_cooking matches 0 if score secnd_path cck_cooking matches 1 if score bread cck_cooking matches 1.. if score chickens cck_cooking matches 1.. if score mbp cck_cooking matches 0 run scoreboard players set item_tex cck_cooking 10
#mystery meat sandwich
execute if score item_tex cck_cooking matches 0 if score secnd_path cck_cooking matches 1 if score bread cck_cooking matches 1.. run scoreboard players set item_tex cck_cooking 11
#honey baked ham
execute if score item_tex cck_cooking matches 0 if score secnd_path cck_cooking matches 1 if score porks cck_cooking matches 1.. if score honeys cck_cooking matches 1.. run scoreboard players set item_tex cck_cooking 12
#steak and salsa
execute if score item_tex cck_cooking matches 0 if score secnd_path cck_cooking matches 1 if score fruits cck_cooking matches 1.. if score veggies cck_cooking matches 0 run scoreboard players set item_tex cck_cooking 13
#kebab
execute if score item_tex cck_cooking matches 0 if score secnd_path cck_cooking matches 1 run scoreboard players set item_tex cck_cooking 14

#gilded salad
execute if score item_tex cck_cooking matches 0 if score golden_foods cck_cooking matches 1.. run scoreboard players set item_tex cck_cooking 15
#fruit salad
execute if score item_tex cck_cooking matches 0 if score fruits cck_cooking matches 1.. if score veggies cck_cooking matches 0 run scoreboard players set item_tex cck_cooking 16
#salad
execute if score item_tex cck_cooking matches 0 if score veggies cck_cooking matches 1.. run scoreboard players set item_tex cck_cooking 17
#kebab 2
execute if score item_tex cck_cooking matches 0 if score meat cck_cooking matches 1.. if score fish cck_cooking matches 1.. run scoreboard players set item_tex cck_cooking 14
#unrecognizable mush
execute if score item_tex cck_cooking matches 0 run scoreboard players set item_tex cck_cooking 18

execute store result score sugar cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:sugar",Count:1b}},dx=0]
scoreboard players operation speed cck_cooking += sugar_cane cck_cooking
scoreboard players operation speed cck_cooking += honey_bottle cck_cooking
scoreboard players operation speed cck_cooking += honeycomb cck_cooking
scoreboard players operation speed cck_cooking += sugar cck_cooking

execute store result score slime_ball cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:slime_ball",Count:1b}},dx=0]
execute store result score lily_of_the_valley cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:lily_of_the_valley",Count:1b}},dx=0]
execute store result score rabbit_foot cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:rabbit_foot",Count:1b}},dx=0]
execute store result score rabbit_hide cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:rabbit_hide",Count:1b}},dx=0]
scoreboard players operation jump_boost cck_cooking += slime_ball cck_cooking
scoreboard players operation jump_boost cck_cooking += lily_of_the_valley cck_cooking
scoreboard players operation jump_boost cck_cooking += rabbit_foot cck_cooking
scoreboard players operation jump_boost cck_cooking += rabbit_hide cck_cooking

execute store result score blaze_powder cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}},dx=0]
execute store result score crimson_fungus cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:crimson_fungus",Count:1b}},dx=0]
execute store result score crimson_roots cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:crimson_roots",Count:1b}},dx=0]
execute store result score fire_charge cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:fire_charge",Count:1b}},dx=0]
scoreboard players operation fire_resist cck_cooking += blaze_powder cck_cooking
scoreboard players operation fire_resist cck_cooking += crimson_fungus cck_cooking
scoreboard players operation fire_resist cck_cooking += crimson_roots cck_cooking
scoreboard players operation fire_resist cck_cooking += fire_charge cck_cooking

execute store result score glowstone_dust cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b}},dx=0]
execute store result score horn_coral cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:horn_coral",Count:1b}},dx=0]
execute store result score horn_coral_fan cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:horn_coral_fan",Count:1b}},dx=0]
scoreboard players operation haste cck_cooking += pufferfish cck_cooking
scoreboard players operation haste cck_cooking += glowstone_dust cck_cooking
scoreboard players operation haste cck_cooking += horn_coral cck_cooking
scoreboard players operation haste cck_cooking += horn_coral_fan cck_cooking

scoreboard players operation absorption cck_cooking += ench_gapp cck_cooking
scoreboard players operation absorption cck_cooking += gapp cck_cooking


execute store result score spider_eye cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:spider_eye",Count:1b}},dx=0]
execute store result score pufferfish cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:pufferfish",Count:1b}},dx=0]
execute store result score milk cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:milk_bucket",Count:1b}},dx=0]
execute store result score cookie cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:cookie",Count:1b}},dx=0]
execute store result score cake cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:cake",Count:1b}},dx=0]
execute store result score pumpkin_pie cck_cooking if entity @e[type=item,nbt={Item:{id:"minecraft:pumpkin_pie",Count:1b}},dx=0]

scoreboard players operation cod cck_cooking *= $cod cck_const_sat
scoreboard players operation cooked_cod cck_cooking *= $cookedCod cck_const_sat
scoreboard players operation salmon cck_cooking *= $salmon cck_const_sat
scoreboard players operation cooked_salmon cck_cooking *= $cookedSalmon cck_const_sat
scoreboard players operation tropical_fish cck_cooking *= $tropicalFish cck_const_sat
scoreboard players operation mutton cck_cooking *= $mutton cck_const_sat
scoreboard players operation cooked_mutton cck_cooking *= $cookedMutton cck_const_sat
scoreboard players operation beef cck_cooking *= $porkchop cck_const_sat
scoreboard players operation cooked_beef cck_cooking *= $cookedPorkchop cck_const_sat
scoreboard players operation porkchop cck_cooking *= $porkchop cck_const_sat
scoreboard players operation cooked_porkchop cck_cooking *= $cookedPorkchop cck_const_sat
scoreboard players operation rabbit cck_cooking *= $rabbit cck_const_sat
scoreboard players operation cooked_rabbit cck_cooking *= $cookedRabbit cck_const_sat
scoreboard players operation chicken cck_cooking *= $chicken cck_const_sat
scoreboard players operation cooked_chicken cck_cooking *= $cookedChicken cck_const_sat
scoreboard players operation sweetberry cck_cooking *= $sweetBerries cck_const_sat
scoreboard players operation ench_gapp cck_cooking *= $enchantedGoldenApple cck_const_sat
scoreboard players operation gapp cck_cooking *= $goldenApple cck_const_sat
scoreboard players operation apple cck_cooking *= $apple cck_const_sat
scoreboard players operation melon_slice cck_cooking *= $melonSlice cck_const_sat
scoreboard players operation chorus_fruit cck_cooking *= $chorusFruit cck_const_sat
scoreboard players operation beetroot cck_cooking *= $beetroot cck_const_sat
scoreboard players operation poisonpotat cck_cooking *= $poisonousPotato cck_const_sat
scoreboard players operation baked_potato cck_cooking *= $bakedPotato cck_const_sat
scoreboard players operation potato cck_cooking *= $potato cck_const_sat
scoreboard players operation carrot cck_cooking *= $carrot cck_const_sat
scoreboard players operation golden_carrot cck_cooking *= $goldenCarrot cck_const_sat
scoreboard players operation dried_kelp cck_cooking *= $driedKelp cck_const_sat
scoreboard players operation honey_bottle cck_cooking *= $honeyBottle cck_const_sat
scoreboard players operation spider_eye cck_cooking *= $spiderEye cck_const_sat
scoreboard players operation pufferfish cck_cooking *= $pufferfish cck_const_sat
scoreboard players operation cookie cck_cooking *= $cookie cck_const_sat
scoreboard players operation cake cck_cooking *= $cake cck_const_sat
scoreboard players operation pumpkin_pie cck_cooking *= $pumpkinPie cck_const_sat
scoreboard players operation bread cck_cooking *= $bread cck_const_sat


scoreboard players operation saturation cck_cooking += cod cck_cooking
scoreboard players operation saturation cck_cooking += cooked_cod cck_cooking
scoreboard players operation saturation cck_cooking += salmon cck_cooking
scoreboard players operation saturation cck_cooking += cooked_salmon cck_cooking
scoreboard players operation saturation cck_cooking += tropical_fish cck_cooking
scoreboard players operation saturation cck_cooking += mutton cck_cooking
scoreboard players operation saturation cck_cooking += cooked_mutton cck_cooking
scoreboard players operation saturation cck_cooking += beef cck_cooking
scoreboard players operation saturation cck_cooking += cooked_beef cck_cooking
scoreboard players operation saturation cck_cooking += rabbit cck_cooking
scoreboard players operation saturation cck_cooking += cooked_rabbit cck_cooking
scoreboard players operation saturation cck_cooking += porkchop cck_cooking
scoreboard players operation saturation cck_cooking += cooked_porkchop cck_cooking
scoreboard players operation saturation cck_cooking += chicken cck_cooking
scoreboard players operation saturation cck_cooking += cooked_chicken cck_cooking
scoreboard players operation saturation cck_cooking += sweetberry cck_cooking
scoreboard players operation saturation cck_cooking += ench_gapp cck_cooking
scoreboard players operation saturation cck_cooking += gapp cck_cooking
scoreboard players operation saturation cck_cooking += apple cck_cooking
scoreboard players operation saturation cck_cooking += melon_slice cck_cooking
scoreboard players operation saturation cck_cooking += popped_chorus_fruit cck_cooking
scoreboard players operation saturation cck_cooking += chorus_fruit cck_cooking
scoreboard players operation saturation cck_cooking += beetroot cck_cooking
scoreboard players operation saturation cck_cooking += poisonpotat cck_cooking
scoreboard players operation saturation cck_cooking += baked_potato cck_cooking
scoreboard players operation saturation cck_cooking += potato cck_cooking
scoreboard players operation saturation cck_cooking += carrot cck_cooking
scoreboard players operation saturation cck_cooking += golden_carrot cck_cooking
scoreboard players operation saturation cck_cooking += sugar_cane cck_cooking
scoreboard players operation saturation cck_cooking += dried_kelp cck_cooking
scoreboard players operation saturation cck_cooking += kelp cck_cooking
scoreboard players operation saturation cck_cooking += honeycomb cck_cooking
scoreboard players operation saturation cck_cooking += honey_bottle cck_cooking
scoreboard players operation saturation cck_cooking += spider_eye cck_cooking
scoreboard players operation saturation cck_cooking += pufferfish cck_cooking
scoreboard players operation saturation cck_cooking += milk cck_cooking
scoreboard players operation saturation cck_cooking += cookie cck_cooking
scoreboard players operation saturation cck_cooking += cake cck_cooking
scoreboard players operation saturation cck_cooking += pumpkin_pie cck_cooking
scoreboard players operation saturation cck_cooking += bread cck_cooking

#scoreboard players operation absorption cck_cooking *= saturation cck_cooking

function origami-games.cooking:block/crockpot/recipe/chicken_toastie

execute if score absorption cck_cooking matches 1.. run scoreboard players set speed cck_cooking 0
execute if score absorption cck_cooking matches 1.. run scoreboard players set jump_boost cck_cooking 0
execute if score absorption cck_cooking matches 1.. run scoreboard players set haste cck_cooking 0
execute if score absorption cck_cooking matches 1.. run scoreboard players set fire_resist cck_cooking 0

execute if score saturation cck_cooking matches 21.. run scoreboard players set saturation cck_cooking 20

execute store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] Item.tag.Saturation int 1 run scoreboard players get saturation cck_cooking
execute store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] Item.tag.Speed int 1 run scoreboard players get speed cck_cooking
execute store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] Item.tag.Jumpboost int 1 run scoreboard players get jump_boost cck_cooking
execute store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] Item.tag.Haste int 1 run scoreboard players get haste cck_cooking
execute store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] Item.tag.Fireresist int 1 run scoreboard players get fire_resist cck_cooking
execute store result entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] Item.tag.Absorption int 1 run scoreboard players get absorption cck_cooking

execute if score item_tex cck_cooking matches 1 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {CustomName:'{"translate":"item.origami-games.cooking.sushi"}'}
execute if score item_tex cck_cooking matches 1 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{display:{Name:'{"translate":"item.origami-games.cooking.sushi","italic":false}'}}}}
execute if score item_tex cck_cooking matches 1 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{CustomModelData:7510003}}}
execute if score item_tex cck_cooking matches 2 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {CustomName:'{"translate":"item.origami-games.cooking.fish_sandwich"}'}
execute if score item_tex cck_cooking matches 2 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{display:{Name:'{"translate":"item.origami-games.cooking.fish_sandwich","italic":false}'}}}}
execute if score item_tex cck_cooking matches 2 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{CustomModelData:7510004}}}
execute if score item_tex cck_cooking matches 3 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {CustomName:'{"translate":"item.origami-games.cooking.fish_tacos"}'}
execute if score item_tex cck_cooking matches 3 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{display:{Name:'{"translate":"item.origami-games.cooking.fish_tacos","italic":false}'}}}}
execute if score item_tex cck_cooking matches 3 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{CustomModelData:7510005}}}
execute if score item_tex cck_cooking matches 4 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {CustomName:'{"translate":"item.origami-games.cooking.tropical_fish_fillet"}'}
execute if score item_tex cck_cooking matches 4 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{display:{Name:'{"translate":"item.origami-games.cooking.tropical_fish_fillet","italic":false}'}}}}
execute if score item_tex cck_cooking matches 4 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{CustomModelData:7510006}}}
execute if score item_tex cck_cooking matches 5 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {CustomName:'{"translate":"item.origami-games.cooking.baked_salmon"}'}
execute if score item_tex cck_cooking matches 5 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{display:{Name:'{"translate":"item.origami-games.cooking.baked_salmon","italic":false}'}}}}
execute if score item_tex cck_cooking matches 5 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{CustomModelData:7510007}}}
execute if score item_tex cck_cooking matches 6 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {CustomName:'{"translate":"item.origami-games.cooking.fish_fillet"}'}
execute if score item_tex cck_cooking matches 6 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{display:{Name:'{"translate":"item.origami-games.cooking.fish_fillet","italic":false}'}}}}
execute if score item_tex cck_cooking matches 6 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{CustomModelData:7510008}}}
execute if score item_tex cck_cooking matches 7 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {CustomName:'{"translate":"item.origami-games.cooking.cooked_carcass"}'}
execute if score item_tex cck_cooking matches 7 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{display:{Name:'{"translate":"item.origami-games.cooking.cooked_carcass","italic":false}'}}}}
execute if score item_tex cck_cooking matches 7 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{CustomModelData:7510009}}}
execute if score item_tex cck_cooking matches 8 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {CustomName:'{"translate":"item.origami-games.cooking.burger"}'}
execute if score item_tex cck_cooking matches 8 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{display:{Name:'{"translate":"item.origami-games.cooking.burger","italic":false}'}}}}
execute if score item_tex cck_cooking matches 8 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{CustomModelData:7510010}}}
execute if score item_tex cck_cooking matches 9 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {CustomName:'{"translate":"item.origami-games.cooking.fillet_mignon"}'}
execute if score item_tex cck_cooking matches 9 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{display:{Name:'{"translate":"item.origami-games.cooking.fillet_mignon","italic":false}'}}}}
execute if score item_tex cck_cooking matches 9 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{CustomModelData:7510011}}}
execute if score item_tex cck_cooking matches 10 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {CustomName:'{"translate":"item.origami-games.cooking.chicken_sandwich"}'}
execute if score item_tex cck_cooking matches 10 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{display:{Name:'{"translate":"item.origami-games.cooking.chicken_sandwich","italic":false}'}}}}
execute if score item_tex cck_cooking matches 10 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{CustomModelData:7510012}}}
execute if score item_tex cck_cooking matches 11 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {CustomName:'{"translate":"item.origami-games.cooking.mystery_meat_sandwich"}'}
execute if score item_tex cck_cooking matches 11 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{display:{Name:'{"translate":"item.origami-games.cooking.mystery_meat_sandwich","italic":false}'}}}}
execute if score item_tex cck_cooking matches 11 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{CustomModelData:7510013}}}
execute if score item_tex cck_cooking matches 12 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {CustomName:'{"translate":"item.origami-games.cooking.honey_baked_ham"}'}
execute if score item_tex cck_cooking matches 12 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{display:{Name:'{"translate":"item.origami-games.cooking.honey_baked_ham","italic":false}'}}}}
execute if score item_tex cck_cooking matches 12 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{CustomModelData:7510014}}}
execute if score item_tex cck_cooking matches 13 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {CustomName:'{"translate":"item.origami-games.cooking.steak_and_salsa"}'}
execute if score item_tex cck_cooking matches 13 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{display:{Name:'{"translate":"item.origami-games.cooking.steak_and_salsa","italic":false}'}}}}
execute if score item_tex cck_cooking matches 13 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{CustomModelData:7510015}}}
execute if score item_tex cck_cooking matches 14 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {CustomName:'{"translate":"item.origami-games.cooking.kebab"}'}
execute if score item_tex cck_cooking matches 14 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{display:{Name:'{"translate":"item.origami-games.cooking.kebab","italic":false}'}}}}
execute if score item_tex cck_cooking matches 14 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{CustomModelData:7510016}}}
execute if score item_tex cck_cooking matches 15 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {CustomName:'{"translate":"item.origami-games.cooking.gilded_salad"}'}
execute if score item_tex cck_cooking matches 15 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{display:{Name:'{"translate":"item.origami-games.cooking.gilded_salad","italic":false}'}}}}
execute if score item_tex cck_cooking matches 15 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{CustomModelData:7510017}}}
execute if score item_tex cck_cooking matches 16 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {CustomName:'{"translate":"item.origami-games.cooking.fruit_salad"}'}
execute if score item_tex cck_cooking matches 16 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{display:{Name:'{"translate":"item.origami-games.cooking.fruit_salad","italic":false}'}}}}
execute if score item_tex cck_cooking matches 16 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{CustomModelData:7510018}}}
execute if score item_tex cck_cooking matches 17 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {CustomName:'{"translate":"item.origami-games.cooking.salad"}'}
execute if score item_tex cck_cooking matches 17 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{display:{Name:'{"translate":"item.origami-games.cooking.salad","italic":false}'}}}}
execute if score item_tex cck_cooking matches 17 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{CustomModelData:7510019}}}
execute if score item_tex cck_cooking matches 18 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {CustomName:'{"translate":"item.origami-games.cooking.unrecognizable_mush"}'}
execute if score item_tex cck_cooking matches 18 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{display:{Name:'{"translate":"item.origami-games.cooking.unrecognizable_mush","italic":false}'}}}}
execute if score item_tex cck_cooking matches 18 run data merge entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] {Item:{tag:{CustomModelData:7510020}}}


execute if score fire_resist cck_cooking matches 1.. run data modify entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] Item.tag.display.Lore append value '{"translate":"item.origami-games.cooking.spicy","color":"gold","italic":false}'
execute if score speed cck_cooking matches 1.. run data modify entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] Item.tag.display.Lore append value '{"translate":"item.origami-games.cooking.sweet","color":"aqua","italic":false}'
execute if score haste cck_cooking matches 1.. run data modify entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] Item.tag.display.Lore append value '{"translate":"item.origami-games.cooking.hearty","color":"yellow","italic":false}'
execute if score jump_boost cck_cooking matches 1.. run data modify entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] Item.tag.display.Lore append value '{"translate":"item.origami-games.cooking.sticky","color":"green","italic":false}'
execute if score absorption cck_cooking matches 1.. run data modify entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{origami-games:{cooking:{item:"chicken_toastie"}}}}}] Item.tag.display.Lore append value '{"translate":"item.origami-games.cooking.godly","color":"light_purple","italic":false}'

#execute if score bread cck_cooking matches 2 if score chicken cck_cooking matches 2 run function origami-games.cooking:block/crockpot/recipe/chicken_toastie
#execute if score fish cck_cooking matches 1 if score meat cck_cooking matches 2 run function origami-games.cooking:block/crockpot/recipe/meat_fish_kebab
