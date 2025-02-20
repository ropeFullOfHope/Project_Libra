# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: active_detect
# Function Name: ogvz:tick/active_detect
# File Purpose: Main branch for all right-click items/abilities (active items/abilities).
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.09
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: Tests for and executes functions from right-clicking a retextured carrot on a stick. Also handles secondary attacks.
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute unless entity @s[scores={ogvz.rclick.use=1..}] run return 0

scoreboard players set @s ogvz.rclick.use 0

execute unless items entity @s weapon.* minecraft:carrot_on_a_stick run return 0

execute unless entity @s[scores={ogvz.rclick.cooldown=0}] run return 0

scoreboard players set @s ogvz.rclick.cooldown 5

tag @s add temp.use
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick run tag @s add temp.use.mainhand
execute if items entity @s[tag=!temp.use.mainhand] weapon.offhand minecraft:carrot_on_a_stick run tag @s add temp.use.offhand

execute store result score @s[tag=temp.use.mainhand] ogvz.rclick.active_id run data get entity @s SelectedItem.components."minecraft:custom_data".active_id
execute store result score @s[tag=temp.use.offhand] ogvz.rclick.active_id run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".active_id

### Admin tools (1xxx)


### Discs (2xxx)
# Dwarf discs (200x)
execute as @s[tag=!ogvz.dwarf.class,tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2000}] at @s run function ogvz:dwarf/disc/builder
execute as @s[tag=!ogvz.dwarf.class,tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2001}] at @s run function ogvz:dwarf/disc/blacksmith
execute as @s[tag=!ogvz.dwarf.class,tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2002}] at @s run function ogvz:dwarf/disc/tailor
execute as @s[tag=!ogvz.dwarf.class,tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2003}] at @s run function ogvz:dwarf/disc/baker
execute as @s[tag=!ogvz.dwarf.class,tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2004}] at @s run function ogvz:dwarf/disc/alchemist
execute as @s[tag=!ogvz.dwarf.class,tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2005}] at @s run function ogvz:dwarf/disc/enchanter
# Hero discs (201x)
execute as @s[tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2010}] at @s run function ogvz:dwarf/disc/hero/dragon_warrior
execute as @s[tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2011}] at @s run function ogvz:dwarf/disc/hero/wither_warrior
execute as @s[tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2012}] at @s run function ogvz:dwarf/disc/hero/assassin_slayer
execute as @s[tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2013}] at @s run function ogvz:dwarf/disc/hero/dwarven_guard
# Zombie discs (21xx)
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2100}] at @s run function ogvz:zombie/disc/zombie_variant/zombie
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2101}] at @s run function ogvz:zombie/disc/zombie_variant/husk
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2102}] at @s run function ogvz:zombie/disc/zombie_variant/vindicator
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2103}] at @s run function ogvz:zombie/disc/zombie_variant/drowned
#execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2110}] at @s run function ogvz:zombie/disc/skeleton_variant/skeleton
#execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2111}] at @s run function ogvz:zombie/disc/skeleton_variant/wither_skeleton
#execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2112}] at @s run function ogvz:zombie/disc/skeleton_variant/pillager
#execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2113}] at @s run function ogvz:zombie/disc/skeleton_variant/guardian
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2120}] at @s run function ogvz:zombie/disc/creeper
#execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2121}] at @s run function ogvz:zombie/disc/spider
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2130}] at @s run function ogvz:zombie/disc/wolf
#execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2131}] at @s run function ogvz:zombie/disc/ocelot
#execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2132}] at @s run function ogvz:zombie/disc/chicken_nugget
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2133}] at @s run function ogvz:zombie/disc/snowman
#execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2134}] at @s run function ogvz:zombie/disc/chillager
#execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2135}] at @s run function ogvz:zombie/disc/bee
#execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2136}] at @s run function ogvz:zombie/disc/phantom
#execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2137}] at @s run function ogvz:zombie/disc/blaze
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2140}] at @s run function ogvz:zombie/disc/piglin
#execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2141}] at @s run function ogvz:zombie/disc/silverfish
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2150}] at @s run function ogvz:zombie/disc/hoglin
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2160}] at @s run function ogvz:zombie/disc/golem
#execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2161}] at @s run function ogvz:zombie/disc/enderman
#execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2170}] at @s run function ogvz:zombie/disc/ghast
#execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2171}] at @s run function ogvz:zombie/disc/ravager
#execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2172}] at @s run function ogvz:zombie/disc/johnny

### Dwarf items (3xxx)
# Dwarf books (30xx)
execute as @s[tag=ogvz.dwarf.class.builder,scores={ogvz.rclick.active_id=3000}] at @s run function ogvz:dwarf/item/summoning_book/builder
execute as @s[tag=ogvz.dwarf.class.blacksmith,scores={ogvz.rclick.active_id=3001}] at @s run function ogvz:dwarf/item/summoning_book/blacksmith
execute as @s[tag=ogvz.dwarf.class.tailor,scores={ogvz.rclick.active_id=3002}] at @s run function ogvz:dwarf/item/summoning_book/tailor
execute as @s[tag=ogvz.dwarf.class.baker,scores={ogvz.rclick.active_id=3003}] at @s run function ogvz:dwarf/item/summoning_book/baker
execute as @s[tag=ogvz.dwarf.class.alchemist,scores={ogvz.rclick.active_id=3004}] at @s run function ogvz:dwarf/item/summoning_book/alchemist
execute as @s[tag=ogvz.dwarf.class.enchanter,scores={ogvz.rclick.active_id=3005}] at @s run function ogvz:dwarf/item/summoning_book/enchanter
execute as @s[tag=ogvz.dwarf,scores={ogvz.rclick.active_id=3006}] at @s run function ogvz:dwarf/item/legendary_book
# Dwarf items (31xx)
execute as @s[tag=ogvz.mana,scores={ogvz.rclick.active_id=3100}] at @s run function ogvz:dwarf/item/magic_potion/regeneration
execute as @s[tag=ogvz.mana,scores={ogvz.rclick.active_id=3101}] at @s run function ogvz:dwarf/item/magic_potion/swiftness
execute as @s[tag=ogvz.mana,scores={ogvz.rclick.active_id=3102}] at @s run function ogvz:dwarf/item/magic_potion/strength
execute as @s[tag=ogvz.mana,scores={ogvz.rclick.active_id=3103}] at @s run function ogvz:dwarf/item/magic_potion/leaping
execute as @s[tag=ogvz.mana,scores={ogvz.rclick.active_id=3104}] at @s run function ogvz:dwarf/item/pearl_rod
execute as @s[scores={ogvz.rclick.active_id=3105}] at @s run function ogvz:dwarf/item/water_wand
execute as @s[scores={ogvz.rclick.active_id=3106}] at @s run function ogvz:dwarf/item/fertilizer

### Dwarf hero items (4xxx)
# Dragon Warrior (40xx)
execute as @s[tag=ogvz.dwarf.class.hero.dragon_warrior,scores={ogvz.rclick.active_id=4000}] at @s run function ogvz:dwarf/item/hero/dragon_warrior/conjure_wall
execute as @s[tag=ogvz.dwarf.class.hero.dragon_warrior,scores={ogvz.rclick.active_id=4001}] at @s run function ogvz:dwarf/item/hero/dragon_warrior/dragon_scale
execute as @s[tag=ogvz.dwarf.class.hero.dragon_warrior,scores={ogvz.rclick.active_id=4002}] at @s run function ogvz:dwarf/item/hero/dragon_warrior/dwarven_ruby

# Wither Warrior (41xx)
execute as @s[tag=ogvz.dwarf.class.hero.wither_warrior,scores={ogvz.rclick.active_id=4101}] at @s run function ogvz:dwarf/item/hero/wither_warrior/phantom_slash

# Assassin Slayer (42xx)
execute as @s[tag=ogvz.dwarf.class.hero.assassin_slayer,scores={ogvz.rclick.active_id=4200}] at @s run function ogvz:dwarf/item/hero/assassin_slayer/assassinate
execute as @s[tag=ogvz.dwarf.class.hero.assassin_slayer,scores={ogvz.rclick.active_id=4201}] at @s run function ogvz:dwarf/item/hero/assassin_slayer/cloak_of_shadows
execute as @s[tag=ogvz.dwarf.class.hero.assassin_slayer,scores={ogvz.rclick.active_id=4202}] at @s run function ogvz:dwarf/item/hero/assassin_slayer/mana_star

# Dwarven Guard (43xx)
execute as @s[tag=ogvz.dwarf.class.hero.dwarven_guard,scores={ogvz.rclick.active_id=4300}] at @s run function ogvz:dwarf/item/hero/dwarven_guard/elder_guardian_eye
execute as @s[tag=ogvz.dwarf.class.hero.dwarven_guard,scores={ogvz.rclick.active_id=4301}] at @s run function ogvz:dwarf/item/hero/dwarven_guard/oceans_pearl
execute as @s[tag=ogvz.dwarf.class.hero.dwarven_guard,scores={ogvz.rclick.active_id=4302}] at @s run function ogvz:dwarf/item/hero/dwarven_guard/glowing_shell

### Dwarf legendary items (5xxx)


### Zombie abilities (6xxx)
# Zombie variants (600x)
# Zombie (601x)
# Husk (602x)
# Vindicator (603x)
# Drowned (604x)
# Skeleton variants (610x)
# Skeleton (611x)
# Wither skeleton (612x)
# Pillager (613x)
# Guardian (614x)
execute as @s[tag=ogvz.zombie.class.skeleton_variant.guardian,scores={ogvz.rclick.active_id=6140}] at @s run function ogvz:zombie/ability/skeleton_variant/guardian/beam
# Creeper (620x)
execute as @s[tag=ogvz.zombie.class.creeper,scores={ogvz.rclick.active_id=6200}] at @s run function ogvz:zombie/ability/creeper/explode
# Spider (621x)
# Blaze (630x)
# Chillager (631x)
# Ocelot (632x)
# Phantom (633x)
# Snowman (634x)
execute as @s[tag=ogvz.zombie.class.snowman,scores={ogvz.rclick.active_id=6340}] at @s run function ogvz:zombie/ability/snowman/snowball_barrage
execute as @s[tag=ogvz.zombie.class.snowman,scores={ogvz.rclick.active_id=6341}] at @s run function ogvz:zombie/ability/snowman/freeze
# Wolf (635x)
execute as @s[tag=ogvz.zombie.class.wolf,scores={ogvz.rclick.active_id=6350}] at @s run function ogvz:zombie/ability/wolf/howl
# Piglin (640x)
# Silverfish (641x)
# Hoglin (650x)
# Enderman (660x)
# Golem (661x)
execute as @s[tag=ogvz.zombie.class.golem,scores={ogvz.rclick.active_id=6610}] at @s run function ogvz:zombie/ability/golem/fissure
execute as @s[tag=ogvz.zombie.class.golem,scores={ogvz.rclick.active_id=6611}] at @s run function ogvz:zombie/ability/golem/leap
# Aquatic zombies (690x)

### Zombie boss abilities (7xxx)


### Zombie nature given abilities (8xxx)


### Other (9xxx)
execute as @s[tag=!ogvz.joined,scores={ogvz.rclick.active_id=9000}] at @s run function ogvz:misc/join_game
#execute as @s[tag=ogvz.zombie,scores={ogvz.rclick.active_id=9001}] at @s run function ogvz:zombie/give_discs
#execute as @s[tag=ogvz.zombie,scores={ogvz.rclick.active_id=9002}] at @s run function ogvz:zombie/enderman/portal_teleport

# Remove tags
tag @s remove temp.use
tag @s remove temp.use.mainhand
tag @s remove temp.use.offhand
