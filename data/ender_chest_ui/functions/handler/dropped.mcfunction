#> ender_chest_ui:handler/dropped
#@within tag/function player:dropped

#>
#@within
#  function ender_chest_ui:handler/dropped
#  function ender_chest_ui:handler/selected/dropped
  #declare tag ender_chest_ui.this

tag @s add ender_chest_ui.this
  execute as @e[type=item,nbt={Age: 0s, Item: {tag: {ender_chest_ui: {}}}},distance=..5,sort=nearest,limit=1] run function ender_chest_ui:handler/selected/dropped
tag @s remove ender_chest_ui.this
