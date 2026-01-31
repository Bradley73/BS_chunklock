# If n < odd, we are done.
execute unless score #n Temp >= #odd Temp run return 0

# n -= odd
scoreboard players operation #n Temp -= #odd Temp

# odd += 2
scoreboard players operation #odd Temp += #2 Integers

# root += 1
scoreboard players operation #root Temp += #1 Integers

# Continue looping
function chunklock:math/isqrt_step
