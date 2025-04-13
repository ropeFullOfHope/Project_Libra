# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: snowball_barage_hit
# Function Name: ogvz:zombie/ability/snowman/snowball_barage_hit
# File Purpose: Deal damage to players around the snowball barrage.
# Created By: ropeFullOfHope
# 
# Created On: 2025.03.02
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute on origin run tag @s add temp.origin

execute positioned ~-1.3 ~-2.5 ~-1.3 as @a[dx=1.0,dy=1.6,dz=1.0] run damage @s[tag=ogvz.dwarf] 12 ogvz:snowball by @p[tag=temp.origin]
execute positioned ~-1.3 ~-2.5 ~-1.3 as @a[dx=1.0,dy=1.6,dz=1.0] run damage @s[tag=ogvz.zombie] 1.2 ogvz:snowball by @p[tag=temp.origin]

execute on origin run tag @s remove temp.origin

kill @s
