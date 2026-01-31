# Check for right-clicking of chunk interactions
execute unless data entity @s interaction run return 0

# Tag the player who interacted with the chunk
execute on target run tag @s add chunkInteractor

tag @p[tag=chunkInteractor, predicate=chunklock:dye/is_holding_dye] add playerIsHoldingDye
execute if entity @p[tag=chunkInteractor, tag=playerIsHoldingDye] run function chunklock:utils/dye_chunk

# Play a click sound to the player
execute as @p[tag=chunkInteractor, tag=!playerIsHoldingDye] at @s run playsound ui.button.click block @s ~ ~ ~

# Store item name
execute summon minecraft:item run function chunklock:utils/translate_item_name/store_item_name with entity @e[type=marker,limit=1,tag=locked,sort=nearest,distance=0..] data.source

# Display item name (translated)
function chunklock:utils/translate_item_name/display_item_name with storage chunklock:master

# Un-Tag the player who interacted with the chunk
execute on target run tag @s remove chunkInteractor
execute on target run tag @s remove playerIsHoldingDye

# Remove interacted tag
data remove entity @s interaction
