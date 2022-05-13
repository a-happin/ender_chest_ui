#> ender_chest_ui:handler/selected/dropped
#@within function ender_chest_ui:handler/dropped

## restore ender_chest_ui.action
execute store result score @a[tag=ender_chest_ui.this] ender_chest_ui.action run data get entity @s Item.tag.ender_chest_ui.id

## kill item
kill @s

## dispatch
execute as @a[tag=ender_chest_ui.this] run function ender_chest_ui:main/
