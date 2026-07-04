execute if score #nametag_event smp_events matches 1 run scoreboard players set #temp2 smp_events 0
execute unless score #nametag_event smp_events matches 1 run scoreboard players set #temp2 smp_events 1

scoreboard players operation #nametag_event smp_events = #temp2 smp_events

execute if score #nametag_event smp_events matches 1 run tellraw @s {"text":"[SMP] No Nametags: ACTIVE","color":"green"}
execute if score #nametag_event smp_events matches 0 run tellraw @s {"text":"[SMP] No Nametags: INACTIVE","color":"red"}

execute if score #nametag_event smp_events matches 1 run bossbar add invis_nametag {"text":"Invisible Nametags"}
execute if score #nametag_event smp_events matches 1 run bossbar set minecraft:invis_nametag players @a 
execute if score #nametag_event smp_events matches 1 run bossbar set minecraft:invis_nametag color white
execute if score #nametag_event smp_events matches 1 run bossbar set minecraft:invis_nametag style progress
execute if score #nametag_event smp_events matches 0 run bossbar remove invis_nametag 