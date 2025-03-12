scoreboard players remove @s math 1
execute if score @s math matches ..0 run kill @s

execute if data entity @s interaction run function lecternoverhaul:find_lectern/click