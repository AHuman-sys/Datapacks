$execute unless items entity @s $(slot) *[enchantments~[{enchantment:"potato:retention"}]] run loot spawn ~ ~ ~ from entity @s $(slot)
$execute unless items entity @s $(slot) *[enchantments~[{enchantment:"potato:retention"}]] run item replace entity @s $(slot) with air
$execute if items entity @s $(slot) *[enchantments~[{enchantment:"potato:retention"}]] run item modify entity @s $(slot) {function:"minecraft:set_enchantments",enchantments:{"potato:retention":-255},add:true}

data remove storage potato:temp slots[0]

execute if data storage potato:temp slots[0] run function potato:loop_slots with storage potato:temp slots[0]