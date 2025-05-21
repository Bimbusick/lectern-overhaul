playsound minecraft:item.book.put block @a ~ ~0.5 ~

summon marker ~ ~1 ~ {Tags:["lectern.book","set.data"]}

execute if block ~ ~ ~ lectern[facing=north] positioned ~ ~1 ~ rotated 180 0 run function lecternoverhaul:place_book/summon_book {rotation:0f}
execute if block ~ ~ ~ lectern[facing=south] positioned ~ ~1 ~ rotated 0 0 run function lecternoverhaul:place_book/summon_book {rotation:180f}
execute if block ~ ~ ~ lectern[facing=west] positioned ~ ~1 ~ rotated 90 0 run function lecternoverhaul:place_book/summon_book {rotation:270f}
execute if block ~ ~ ~ lectern[facing=east] positioned ~ ~1 ~ rotated 270 0 run function lecternoverhaul:place_book/summon_book {rotation:90f}

execute on target positioned ~ ~1 ~ run function lecternoverhaul:place_book/find_book_in_hand
scoreboard players set @e[type=marker,tag=lectern.book,tag=set.data,distance=..1.5,limit=1] page 0
tag @e[type=marker,tag=lectern.book,tag=set.data,distance=..1.5,limit=1] remove set.data

kill @s