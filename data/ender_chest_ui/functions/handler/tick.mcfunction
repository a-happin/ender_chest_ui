#> ender_chest_ui:handler/tick
#@within tag/function player:tick

execute store result score $ ender_chest_ui.action run clear @s #ender_chest_ui:any{ender_chest_ui: {}} 0
execute if score $ ender_chest_ui.action matches 1.. run function ender_chest_ui:handler/selected/picked_up
