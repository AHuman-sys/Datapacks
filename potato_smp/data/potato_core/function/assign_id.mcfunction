# Assign the max player ID to the player
# (When this is first ran, .max playerid is not set and read as 0, so the first player gets the ID 0)
scoreboard players operation @s playerid = .max playerid

# Increment the max player ID by one
scoreboard players add .max playerid 1