execute if score #butterfingers_event smp_events matches 1 run scoreboard players set #temp3 smp_events 0
execute unless score #butterfingers_event smp_events matches 1 run scoreboard players set #temp3 smp_events 1

scoreboard players operation #butterfingers_event smp_events = #temp3 smp_events

execute if score #butterfingers_event smp_events matches 1 run tellraw @s {"text":"[SMP] Butterfingers: ACTIVE","color":"green"}
execute if score #butterfingers_event smp_events matches 0 run tellraw @s {"text":"[SMP] Butterfingers: INACTIVE","color":"red"}