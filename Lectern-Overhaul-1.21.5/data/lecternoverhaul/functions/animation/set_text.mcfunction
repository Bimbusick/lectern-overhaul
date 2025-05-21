execute store result storage lecternoverhaul:temp set_text.index int 1 run scoreboard players get @e[type=marker,tag=lectern.book,distance=..0.5,limit=1] page
function lecternoverhaul:animation/set_text_macros with storage lecternoverhaul:temp set_text
data remove storage lecternoverhaul:temp set_text

execute if score @e[type=marker,tag=lectern.book,distance=..0.5,limit=1] page matches 1.. run data modify entity @s alignment set value "left"
execute if score @e[type=marker,tag=lectern.book,distance=..0.5,limit=1] page matches 0 run data modify entity @s alignment set value "center"