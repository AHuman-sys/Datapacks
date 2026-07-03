execute as @a[x=-96,y=70,z=-109,dx=0,dy=0,dz=0] if items block -96 68 -111 container.0 minecraft:potato[count=64] run scoreboard players add @s balance 64
execute if items block -96 68 -111 container.0 minecraft:potato run data modify block -96 68 -111 Items set value []
execute as @a[x=-96,y=70,z=-109,dx=0,dy=0,dz=0] if items block -96 68 -111 container.0 minecraft:baked_potato[count=64] run scoreboard players add @s balance 128
execute if items block -96 68 -111 container.0 minecraft:baked_potato run data modify block -96 68 -111 Items set value [] 
execute as @a[x=-96,y=70,z=-109,dx=0,dy=0,dz=0] if items block -96 68 -111 container.0 potato:potato_block[count=64] run scoreboard players add @s balance 576
execute if items block -96 68 -111 container.0 potato:potato_block run data modify block -96 68 -111 Items set value [] 



