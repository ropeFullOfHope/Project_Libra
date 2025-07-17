# Damage the dwarf if the shrine is gone.
execute unless entity @e[type=minecraft:marker,tag=ogvz.marker.shrine] run damage @s 4 ogvz:outside_shrine_range

# Damage the dwarf if they are too far from shrine.
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:128}}}} run damage @s 4 ogvz:outside_shrine_range

# Damage the dwarf if they are too close to zombie spawn.
execute at @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{max:32}}}} run damage @s 4 ogvz:inside_zombie_spawn_range
