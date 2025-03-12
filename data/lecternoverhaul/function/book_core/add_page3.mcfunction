$summon item_display ~ ~ ~ {Tags:["lectern.book.page","set.score"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[-0.195f,0f,0f,0.981f],translation:[-0.15625f,0.08f,-0.137f],scale:[1f,1f,1f]},item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":{"strings":["148802"]}}},interpolation_duration:3,Rotation:[$(rotation)f,0f]}
scoreboard players set @e[type=item_display,tag=lectern.book.page,tag=set.score,limit=1,distance=..0.5] timer -1
tag @e[type=item_display,tag=lectern.book.page,tag=set.score,limit=1,distance=..0.5] remove set.score

playsound minecraft:item.book.page_turn block @a ~ ~ ~ 1 0.3