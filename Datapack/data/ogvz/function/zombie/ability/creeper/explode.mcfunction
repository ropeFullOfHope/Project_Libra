# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: explode
# Function Name: ogvz:zombie/ability/aquatic/explode
# File Purpose: Explode the player.
# Created By: ropeFullOfHope
# 
# Created On: 2024.12.06
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Remove the item.
item replace entity @s[gamemode=!creative,tag=temp.use.mainhand] weapon.mainhand with minecraft:air
item replace entity @s[gamemode=!creative,tag=temp.use.offhand] weapon.offhand with minecraft:air

execute summon minecraft:marker run tag @s add ogvz.marker.explode

tag @n[type=minecraft:marker,tag=ogvz.marker.explode] add ogvz.state.wait_0
tag @n[type=minecraft:marker,tag=ogvz.marker.explode] add ogvz.kill_on_reload

# Explode.
summon minecraft:creeper ~ ~ ~ {ExplosionRadius:3b,Fuse:0,attributes:[{id:"minecraft:scale",base:0.0625}]}
