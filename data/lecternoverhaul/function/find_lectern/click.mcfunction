tag @s add save.interaction
execute on target if entity @s[predicate=lecternoverhaul:items/book,predicate=lecternoverhaul:flags/shift] run tag @e[type=interaction,tag=save.interaction,distance=..64,limit=1] add interacted
tag @s remove save.interaction

execute if entity @s[tag=interacted] run function lecternoverhaul:place_book/init