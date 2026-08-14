# Apply Poison II for 5 seconds to the closest mob in melee reach
execute at @s run effect give @e[type=!player,distance=0.1..6,sort=nearest,limit=1] minecraft:poison 5 1

# Reset the advancement instantly so it fires on every strike
advancement revoke @s only potato_items:hit_by_poisonous_potato_sword