execute if score #nametag_event smp_events matches 1 run team join nametag_invisible @a
execute if score #nametag_event smp_events matches 1 run team modify nametag_invisible nametagVisibility never
execute if score #nametag_event smp_events matches 0 run team leave @a
execute if score #nametag_event smp_events matches 0 run team modify nametag_invisible nametagVisibility always
