# Runs every tick from #minecraft:tick, but the actual read is throttled.
# "data get entity" forces the game to build the player's ENTIRE save-nbt (inventory plus every
# mod's capability data) just to read one number, so doing it every tick for every player was
# costing ~11% of the server thread. The Level score only feeds the tab list, so 2s is plenty.
scoreboard players add #lvlTimer Level 1
execute if score #lvlTimer Level matches 200.. run function levels:levels/update
