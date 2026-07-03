# --- Regular Potatoes ---
execute as @a[x=-96,y=70,z=-109,dx=0,dy=0,dz=0] if items block -96 68 -111 container.0 minecraft:potato[count=64] run scoreboard players add @s balance 64
execute if items block -96 68 -111 container.0 minecraft:potato[count=64] run item replace block -96 68 -111 container.0 with air

# --- Baked Potatoes ---
execute as @a[x=-96,y=70,z=-109,dx=0,dy=0,dz=0] if items block -96 68 -111 container.0 minecraft:baked_potato[count=64] run scoreboard players add @s balance 128
execute if items block -96 68 -111 container.0 minecraft:baked_potato[count=64] run item replace block -96 68 -111 container.0 with air

# --- Custom Potato Blocks ---
execute as @a[x=-96,y=70,z=-109,dx=0,dy=0,dz=0] if items block -96 68 -111 container.0 minecraft:hay_block[custom_data={potato_block:1b},count=64] run scoreboard players add @s balance 576
execute if items block -96 68 -111 container.0 minecraft:hay_block[custom_data={compressed_potato:1b},count=64] run item replace block -96 68 -111 container.0 with air

