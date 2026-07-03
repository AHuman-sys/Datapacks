execute as @a unless score @s player_id = @s player_id run function potato:assign_id
scoreboard players enable @a bounty_target
scoreboard players enable @a bounty_amount
execute as @a if score @s bounty_target matches 1.. if score @s bounty_amount matches 1.. run function potato:process_bounty
execute as @a[scores={bounty_death=1..,bounty_tracker=1..}] run function potato:bounty_payout
execute as @a unless score @s starter_kit_claimed matches 1.. run function potato:claim_starter_kit
execute as @a unless score @s join matches 1.. run function potato:welcome_message

recipe give @a * 
recipe take @a netherite_ingot
recipe take @a netherite_upgrade_smithing_template 

execute as @a[scores={died=1..}] at @s run function potato:handle_death