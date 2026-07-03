scoreboard players operation #temp_payout bounty_tracker = @s bounty_tracker
execute on attacker run function potato:claim_payout
scoreboard players reset @s bounty_death
scoreboard players reset @s bounty_tracker