advancement revoke @s only ogvz:misc/player_hurt_while_teleporting_ender_eye

title @s actionbar [ \
  "", \
  {"text":"[Ender Eye]","bold":true,"color":"light_purple"}, \
  {"text":" Canceled!","color":"light_purple"} \
]

stopsound @a player minecraft:block.portal.trigger

playsound minecraft:block.respawn_anchor.deplete player @s ~ ~ ~ 1 1

tag @s remove ogvz.zombie.teleporting

scoreboard players set @s ogvz.zombie.ender_eye.warmup.seconds 0
scoreboard players set @s ogvz.zombie.ender_eye.warmup.ticks 0

attribute @s minecraft:movement_speed modifier remove ogvz.ender_eye.teleporting.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.ender_eye.teleporting.jump_strength

effect clear @s minecraft:nausea
