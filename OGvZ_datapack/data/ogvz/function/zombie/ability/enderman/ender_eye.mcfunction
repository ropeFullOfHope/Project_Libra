execute as @s[tag=ogvz.zombie.teleporting] at @s run return run function ogvz:zombie/ability/enderman/ender_eye_cancel

execute unless entity @e[type=minecraft:marker,tag=ogvz.marker.ender_portal] run title @s actionbar [ \
  "", \
  {"text":"[Ender Eye]","bold":true,"color":"red"}, \
  {"text":" There is no ender portal to teleport to!","color":"red"}, \
]
execute unless entity @e[type=minecraft:marker,tag=ogvz.marker.ender_portal] run return 0

execute if entity @s[scores={ogvz.zombie.ender_eye.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Ender Eye]","bold":true,"color":"red"}, \
  {"text":" You have ","color":"red"}, \
  {"score":{"name":"@s","objective":"ogvz.zombie.ender_eye.cooldown.seconds"},"bold":true,"color":"red"}, \
  {"text":" seconds remaining!","color":"red"} \
]
execute if entity @s[scores={ogvz.zombie.ender_eye.cooldown.seconds=1..}] run return 0

scoreboard players set @s ogvz.zombie.ender_eye.cooldown.seconds 15

# Teleport the player instantly and return if the player is near zombie spawn.
execute if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn,distance=..32] as @s at @s run return run function ogvz:zombie/ability/enderman/ender_eye_teleport

title @s actionbar [ \
  "", \
  {"text":"[Ender Eye]","bold":true,"color":"light_purple"}, \
  {"text":" Teleporting...","color":"light_purple"} \
]

playsound minecraft:block.portal.trigger player @a ~ ~ ~ 1 0.8

tag @s add ogvz.zombie.teleporting

scoreboard players set @s ogvz.zombie.ender_eye.warmup.seconds 5

attribute @s minecraft:movement_speed modifier add ogvz.ender_eye.teleporting.movement_speed -1 add_multiplied_total
attribute @s minecraft:jump_strength modifier add ogvz.ender_eye.teleporting.jump_strength -1 add_multiplied_total

effect give @s minecraft:nausea 8 0 true
