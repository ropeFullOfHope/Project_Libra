# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:load
# File Name: bossbars
# Function Name: dvz:load/bossbars
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

# Boss timer
bossbar add dvz:boss_timer "Timer"
bossbar set dvz:boss_timer max 36000
bossbar set dvz:boss_timer style notched_10
bossbar set dvz:boss_timer visible false

# Dragon
bossbar add dvz:dragon_health "Ender Dragon"
bossbar set dvz:dragon_health color pink
bossbar set dvz:dragon_health max 200
bossbar set dvz:dragon_health style progress
bossbar set dvz:dragon_health visible false

# Guardian
bossbar add dvz:guardian_health "Elder Guardian"
bossbar set dvz:guardian_health color blue
bossbar set dvz:guardian_health max 200
bossbar set dvz:guardian_health style progress
bossbar set dvz:guardian_health visible false

# Assasin timer
bossbar add dvz:assassin_timer "Assassin Bloodlust"
bossbar set dvz:assassin_timer color red
bossbar set dvz:assassin_timer max 2400
bossbar set dvz:assassin_timer style progress
bossbar set dvz:assassin_timer visible false