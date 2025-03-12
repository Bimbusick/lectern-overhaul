scoreboard players remove *distance math 1

execute if block ~ ~ ~ lectern[has_book=false] align xyz positioned ~.5 ~1 ~.5 unless entity @e[type=marker,tag=lectern.book,distance=..0.5] run function lecternoverhaul:find_lectern/check_interaction

execute if score *distance math matches 1.. if block ~ ~ ~ #lecternoverhaul:not_solid positioned ^ ^ ^0.25 run function lecternoverhaul:find_lectern/loop
