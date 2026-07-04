# --- IF EVENT IS ACTIVE (1) ---
execute if score #creeper_event smp_events matches 1 run effect give @e[type=minecraft:creeper,tag=!silent_bomber] minecraft:invisibility infinite 0 true
execute if score #creeper_event smp_events matches 1 run tag @e[type=minecraft:creeper,tag=!silent_bomber] add silent_bomber

# --- IF EVENT IS INACTIVE (0) ---
# Strips the effect and tag from any creepers caught out in the open when turned off
execute if score #creeper_event smp_events matches 0 if entity @e[type=minecraft:creeper,tag=silent_bomber] run effect clear @e[type=minecraft:creeper,tag=silent_bomber] minecraft:invisibility
execute if score #creeper_event smp_events matches 0 if entity @e[type=minecraft:creeper,tag=silent_bomber] run tag @e[type=minecraft:creeper,tag=silent_bomber] remove silent_bomber