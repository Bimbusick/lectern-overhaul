scoreboard players reset *distance math

execute positioned ~ ~-1 ~ as @e[type=interaction,tag=lectern.place.book,distance=..0.5] run scoreboard players add @s math 1
execute positioned ~ ~-1 ~ unless entity @e[type=interaction,tag=lectern.place.book,distance=..0.5] run function lecternoverhaul:find_lectern/summon_interaction