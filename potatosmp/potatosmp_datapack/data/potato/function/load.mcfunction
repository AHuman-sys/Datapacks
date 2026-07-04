scoreboard objectives add starter_kit_claimed dummy
scoreboard objectives add balance dummy
scoreboard objectives add bounty_tracker dummy
scoreboard objectives add bounty_death deathCount
scoreboard objectives add player_id dummy
scoreboard players set #next_id player_id 1
scoreboard objectives add bounty_target trigger
scoreboard objectives add bounty_amount trigger
scoreboard objectives add retrieve dummy
scoreboard players set #retrieve_64 retrieve 64
scoreboard players set #retrieve_128 retrieve 128
scoreboard players set #retrieve_640 retrieve 640
scoreboard objectives add join dummy


scoreboard objectives setdisplay sidebar balance
scoreboard objectives setdisplay list player_id
scoreboard objectives setdisplay below_name bounty_amount
title @a actionbar {"text":"Bounty: ","color":"gold","extra":[{"score":{"name":"@s","objective":"bounty_amount"}}]}

gamerule locator_bar false 

scoreboard objectives add died deathCount
data modify storage potato:config slots set value [{slot:"container.0"},{slot:"container.1"},{slot:"container.2"},{slot:"container.3"},{slot:"container.4"},{slot:"container.5"},{slot:"container.6"},{slot:"container.7"},{slot:"container.8"},{slot:"container.9"},{slot:"container.10"},{slot:"container.11"},{slot:"container.12"},{slot:"container.13"},{slot:"container.14"},{slot:"container.15"},{slot:"container.16"},{slot:"container.17"},{slot:"container.18"},{slot:"container.19"},{slot:"container.20"},{slot:"container.21"},{slot:"container.22"},{slot:"container.23"},{slot:"container.24"},{slot:"container.25"},{slot:"container.26"},{slot:"container.27"},{slot:"container.28"},{slot:"container.29"},{slot:"container.30"},{slot:"container.31"},{slot:"container.32"},{slot:"container.33"},{slot:"container.34"},{slot:"container.35"},{slot:"armor.head"},{slot:"armor.chest"},{slot:"armor.legs"},{slot:"armor.feet"},{slot:"weapon.offhand"}]

tellraw @a {"text":"Datapack loaded!","color":"gold","bold":true}