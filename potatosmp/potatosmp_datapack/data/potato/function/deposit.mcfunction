# --- Regular Potatoes ---
execute as @a[x=-96,y=71,z=-109,dx=0,dy=0,dz=0] if items block -96 68 -111 container.0 minecraft:potato[count=64] run scoreboard players add @s balance 63
scoreboard players add #global_tax_pool tax_pool 1
execute if items block -96 68 -111 container.0 minecraft:potato[count=64] run item replace block -96 68 -111 container.0 with air

# --- Baked Potatoes ---
execute as @a[x=-96,y=71,z=-109,dx=0,dy=0,dz=0] if items block -96 68 -111 container.0 minecraft:baked_potato[count=64] run scoreboard players add @s balance 126
scoreboard players add #global_tax_pool tax_pool 2
execute if items block -96 68 -111 container.0 minecraft:baked_potato[count=64] run item replace block -96 68 -111 container.0 with air

# --- Custom Potato Blocks ---
execute as @a[x=-96,y=71,z=-109,dx=0,dy=0,dz=0] if items block -96 68 -111 container.0 minecraft:hay_block[custom_data={compressed_potato:true},count=64] run scoreboard players add @s balance 567
scoreboard players add #global_tax_pool tax_pool 9
execute if items block -96 68 -111 container.0 minecraft:hay_block[custom_data={compressed_potato:true},count=64] run item replace block -96 68 -111 container.0 with air

