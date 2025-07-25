title @s actionbar [ \
  "", \
  {"text":"[Ender Eye]","bold":true,"color":"light_purple"}, \
  {"text":" Teleported!","color":"light_purple"} \
]

tag @s remove ogvz.zombie.teleporting

attribute @s minecraft:movement_speed modifier remove ogvz.ender_eye.teleporting.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.ender_eye.teleporting.jump_strength

execute at @e[type=minecraft:marker,tag=ogvz.marker.ender_portal,limit=1,sort=random] run tp @s ~ ~ ~

playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 1 2
execute at @s run playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 1 2

particle minecraft:reverse_portal ~ ~1 ~ 0.25 0.5 0.25 0.1 50
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.25 0.5 0.25 0.1 50
