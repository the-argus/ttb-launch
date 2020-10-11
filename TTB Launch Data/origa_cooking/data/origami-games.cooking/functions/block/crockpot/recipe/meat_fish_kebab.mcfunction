#called by block/crockpot/check_items

kill @e[type=item,tag=cck_crockpot_item,dx=0]

loot spawn ~.5 ~ ~.5 loot origami-games.cooking:items/crockpot/meat_fish_kebab
data merge entity @e[type=item,nbt={Item:{tag:{origami-games:{cooking:{item:"meat_fish_kebab"}}}}},sort=nearest,limit=1] {Motion:[0d,0d,0d],PickupDelay:30s,CustomNameVisible:1b,CustomName:'{"translate":"item.origami-games.cooking.meat_fish_kebab"}',NoGravity:1b}
