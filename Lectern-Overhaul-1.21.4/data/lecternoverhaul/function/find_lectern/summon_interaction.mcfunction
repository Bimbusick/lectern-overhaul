summon interaction ~ ~ ~ {Tags:["lectern.place.book","set.score"],width:1.01f,height:1.125f,response:1b}
scoreboard players set @e[type=interaction,tag=lectern.place.book,tag=set.score,distance=..0.5,limit=1] math 2
tag @e[type=interaction,tag=lectern.place.book,tag=set.score,distance=..0.5,limit=1] remove set.score