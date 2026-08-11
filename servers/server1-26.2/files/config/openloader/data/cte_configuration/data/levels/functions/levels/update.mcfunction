# The throttled body of levels:levels/levels - runs once every 40 ticks.
# #lvlTimer is a fake player, so it does not show up in the tab list display.
scoreboard players set #lvlTimer Level 0
execute as @a store result score @s Level run data get entity @s ForgeCaps.mmorpg:entity_data.level
