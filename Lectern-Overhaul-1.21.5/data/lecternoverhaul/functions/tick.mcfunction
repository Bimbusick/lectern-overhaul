execute as @a[predicate=lecternoverhaul:items/book,predicate=lecternoverhaul:flags/shift] at @s run function lecternoverhaul:find_lectern/init

execute as @e[type=interaction,tag=lectern.place.book] at @s run function lecternoverhaul:find_lectern/interaction_tick

execute as @e[type=marker,tag=lectern.book] at @s run function lecternoverhaul:book_core/tick