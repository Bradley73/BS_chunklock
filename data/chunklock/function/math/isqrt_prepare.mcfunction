# Initialize root and odd for integer sqrt via odd-subtraction.
# Input:  #n Temp  (must be >= 0)
# Output: #root Temp = floor(sqrt(#n))

scoreboard players set #root Temp 0
scoreboard players operation #odd Temp = #1 Integers

function chunklock:math/isqrt_step