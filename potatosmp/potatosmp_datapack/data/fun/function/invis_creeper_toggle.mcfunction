# 1. Calculate the new state into a temporary register
execute if score #creeper_event smp_events matches 1 run scoreboard players set #temp smp_events 0
execute unless score #creeper_event smp_events matches 1 run scoreboard players set #temp smp_events 1

# 2. Commit the temp register to the main switch
scoreboard players operation #creeper_event smp_events = #temp smp_events

# 3. Output colored feedback to the admin who triggered it
execute if score #creeper_event smp_events matches 1 run tellraw @s {"text":"[SMP] Invisible Creepers: ACTIVE","color":"green"}
execute if score #creeper_event smp_events matches 0 run tellraw @s {"text":"[SMP] Invisible Creepers: INACTIVE","color":"red"}