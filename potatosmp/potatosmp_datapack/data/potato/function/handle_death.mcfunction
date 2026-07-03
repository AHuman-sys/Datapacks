# Copy the master slot list into temporary storage for processing
data modify storage potato:temp slots set from storage potato:config slots

# Launch the loop by passing the data of the first slot index [0]
execute if data storage potato:temp slots[0] run function potato:loop_slots with storage potato:temp slots[0]

# Reset the player's death score so this doesn't loop infinitely
scoreboard players set @s died 0