# 1. Give invisibility to any creeper that doesn't have the event tag yet
# The "true" at the end hides the swirling potion particles
effect give @e[tag=!silent_bomber,type=minecraft:creeper] minecraft:invisibility infinite 0 true

# 2. Tag them so the command ignores them on the next tick
tag @e[tag=!silent_bomber,type=minecraft:creeper] add silent_bomber