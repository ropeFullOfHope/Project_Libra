# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:load
# File Name: bossbars
# Function Name: ogvz:load/bossbars
# File Purpose: Creates bossbars used to display boss health or timers.
# Created By: ropeFullOfHope
# 
# Created On: 2023.06.30
# Last Modified On: 
# Last Modified By: 
#
# Credit to: 
#
# Comments: Wither boss comes with their own bossbar already.
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Shrine Health
bossbar add ogvz:shrine_health {"text":"\u1001","font":"ogvz:custom"}
bossbar set ogvz:shrine_health color blue
bossbar set ogvz:shrine_health max 12
bossbar set ogvz:shrine_health style notched_12
bossbar set ogvz:shrine_health visible false

# Boss timer
bossbar add ogvz:boss_timer "Time Remaning"
bossbar set ogvz:boss_timer max 36000
bossbar set ogvz:boss_timer style notched_10
bossbar set ogvz:boss_timer visible false

# Dragon
bossbar add ogvz:dragon_health "Ender Dragon"
bossbar set ogvz:dragon_health color pink
bossbar set ogvz:dragon_health max 200
bossbar set ogvz:dragon_health style progress
bossbar set ogvz:dragon_health visible false

# Guardian
bossbar add ogvz:guardian_health "Elder Guardian"
bossbar set ogvz:guardian_health color blue
bossbar set ogvz:guardian_health max 200
bossbar set ogvz:guardian_health style progress
bossbar set ogvz:guardian_health visible false

# Assasin timer
bossbar add ogvz:assassin_timer "Assassin Bloodlust"
bossbar set ogvz:assassin_timer color red
bossbar set ogvz:assassin_timer max 2400
bossbar set ogvz:assassin_timer style progress
bossbar set ogvz:assassin_timer visible false
