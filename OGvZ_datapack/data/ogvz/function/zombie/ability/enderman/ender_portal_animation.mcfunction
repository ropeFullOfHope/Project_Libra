execute as @s[scores={ogvz.marker.ender_portal.animation.ticks=0}] at @s run function ogvz:zombie/ability/enderman/ender_portal_animation/start

execute as @s[scores={ogvz.marker.ender_portal.animation.ticks=15}] at @s run function ogvz:zombie/ability/enderman/ender_portal_animation/create_middle_circle

execute as @s[scores={ogvz.marker.ender_portal.animation.ticks=30}] at @s run function ogvz:zombie/ability/enderman/ender_portal_animation/create_outer_circle

execute as @s[scores={ogvz.marker.ender_portal.animation.ticks=60}] at @s run function ogvz:zombie/ability/enderman/ender_portal_animation/open_portal

scoreboard players add @s ogvz.marker.ender_portal.animation.ticks 1
