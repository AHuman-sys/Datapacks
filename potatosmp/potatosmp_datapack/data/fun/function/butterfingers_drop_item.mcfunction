# 1. Spawn a copy of whatever item is in their main hand right at their feet using an inline loot table
loot spawn ~ ~ ~ loot {pools:[{rolls:1,entries:[{type:"minecraft:slots",slot_source:{type:"minecraft:slot_range",source:"this",slots:"weapon.mainhand"}}]}]}

# 2. Delete the item out of their hand so they aren't duplicating it
item replace entity @s weapon.mainhand with minecraft:air

# 3. Play a sound effect so they realize they dropped something in the chaos
playsound minecraft:entity.slime.squish player @a ~ ~ ~ 1 1.6