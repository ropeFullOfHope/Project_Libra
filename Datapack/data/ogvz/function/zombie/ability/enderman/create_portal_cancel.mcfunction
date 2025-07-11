advancement revoke @s only ogvz:misc/player_hurt_while_creating_portal

title @s actionbar [ \
  "", \
  {"text":"[Create Portal]","bold":true,"color":"light_purple"}, \
  {"text":" Canceled!","color":"light_purple"} \
]

stopsound @a player minecraft:block.portal.trigger

playsound minecraft:block.respawn_anchor.deplete player @s ~ ~ ~ 1 1

tag @s remove ogvz.zombie.class.enderman.creating_portal
tag @s remove ogvz.zombie.class.enderman.creating_portal.above
tag @s remove ogvz.zombie.class.enderman.creating_portal.below

scoreboard players set @s ogvz.enderman.create_portal.warmup.seconds 0
scoreboard players set @s ogvz.enderman.create_portal.warmup.ticks 0

attribute @s minecraft:movement_speed modifier remove ogvz.enderman.create_portal.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.enderman.create_portal.jump_strength
