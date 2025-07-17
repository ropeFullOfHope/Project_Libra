# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:load
# File Name: setup
# Function Name: ogvz:load/setup
# File Purpose: General initializations.
# Created By: ropeFullOfHope
# 
# Created On: 2023.06.30
# Last Modified On: 
# Last Modified By: 
#
# Credit to: 
#
# Comments: 
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# General setup.
difficulty hard
tag @a remove ogvz.initialized
time set 1000t

# Kill all entities with kill on reload tag.
kill @e[tag=ogvz.kill_on_reload]

# Remove all force-loaded chunks.
forceload remove all

# Force load chunk 0 0.
execute in minecraft:overworld run forceload add 0 0
