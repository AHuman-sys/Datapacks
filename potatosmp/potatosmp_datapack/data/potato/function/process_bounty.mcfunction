execute if score @s balance < @s bounty_amount run tellraw @s {"text":"[Bounty] You are too poor to afford this bounty!","color":"red"}
execute if score @s balance < @s bounty_amount run function potato:cancel_bounty
execute if score @s balance >= @s bounty_amount run scoreboard players operation @s balance -= @s bounty_amount
scoreboard players operation #temp_target player_id = @s bounty_target
scoreboard players operation #temp_amount bounty_amount = @s bounty_amount
execute as @a if score @s player_id = #temp_target player_id run function potato:apply_bounty
scoreboard players reset @s bounty_target
scoreboard players reset @s bounty_amount
