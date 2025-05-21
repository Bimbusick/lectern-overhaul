summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},Tags:["set.item"]}
data modify entity @e[type=item,distance=..0.25,tag=set.item,limit=1] Item set from block ~ ~-0.5 ~ Book
tag @e[type=item,distance=..0.25,tag=set.item,limit=1] remove set.item

execute if block ~ ~-0.5 ~ lectern[facing=east] run fill ~ ~-0.5 ~ ~ ~-0.5 ~ lectern[facing=east]
execute if block ~ ~-0.5 ~ lectern[facing=west] run fill ~ ~-0.5 ~ ~ ~-0.5 ~ lectern[facing=west]
execute if block ~ ~-0.5 ~ lectern[facing=north] run fill ~ ~-0.5 ~ ~ ~-0.5 ~ lectern[facing=north]
execute if block ~ ~-0.5 ~ lectern[facing=south] run fill ~ ~-0.5 ~ ~ ~-0.5 ~ lectern[facing=south]