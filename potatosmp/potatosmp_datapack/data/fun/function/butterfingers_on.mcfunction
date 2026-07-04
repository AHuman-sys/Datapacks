bossbar add butterfingers {"text":"Butterfingers"}
bossbar set minecraft:butterfingers players @a
bossbar set minecraft:butterfingers color yellow
bossbar set minecraft:butterfingers style progress

# Revoke the advancement immediately so it resets for the next hit
advancement revoke @s only fun:butterfingers_take_damage

# Check our predicate! If the 10% chance passes, run the drop logic
execute if predicate fun:chance_10 run function fun:butterfingers_drop_item