#> ender_chest_ui:main/
#@within
#  function ender_chest_ui:handler/opened_ender_chest
#  tag/function ender_chest_ui:dispatch/main

data modify storage : _ append value {Items: []}
  ## rescue items in ender_chest_ui
  data modify storage : _[-1].EnderItems set from entity @s EnderItems
  execute if entity @s[advancements={ender_chest_ui:slot={0=true}}] unless data storage : _[-1].EnderItems[{Slot: 0b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 0b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 0b}]
  execute if entity @s[advancements={ender_chest_ui:slot={1=true}}] unless data storage : _[-1].EnderItems[{Slot: 1b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 1b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 1b}]
  execute if entity @s[advancements={ender_chest_ui:slot={2=true}}] unless data storage : _[-1].EnderItems[{Slot: 2b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 2b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 2b}]
  execute if entity @s[advancements={ender_chest_ui:slot={3=true}}] unless data storage : _[-1].EnderItems[{Slot: 3b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 3b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 3b}]
  execute if entity @s[advancements={ender_chest_ui:slot={4=true}}] unless data storage : _[-1].EnderItems[{Slot: 4b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 4b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 4b}]
  execute if entity @s[advancements={ender_chest_ui:slot={5=true}}] unless data storage : _[-1].EnderItems[{Slot: 5b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 5b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 5b}]
  execute if entity @s[advancements={ender_chest_ui:slot={6=true}}] unless data storage : _[-1].EnderItems[{Slot: 6b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 6b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 6b}]
  execute if entity @s[advancements={ender_chest_ui:slot={7=true}}] unless data storage : _[-1].EnderItems[{Slot: 7b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 7b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 7b}]
  execute if entity @s[advancements={ender_chest_ui:slot={8=true}}] unless data storage : _[-1].EnderItems[{Slot: 8b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 8b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 8b}]
  execute if entity @s[advancements={ender_chest_ui:slot={9=true}}] unless data storage : _[-1].EnderItems[{Slot: 9b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 9b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 9b}]
  execute if entity @s[advancements={ender_chest_ui:slot={10=true}}] unless data storage : _[-1].EnderItems[{Slot: 10b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 10b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 10b}]
  execute if entity @s[advancements={ender_chest_ui:slot={11=true}}] unless data storage : _[-1].EnderItems[{Slot: 11b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 11b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 11b}]
  execute if entity @s[advancements={ender_chest_ui:slot={12=true}}] unless data storage : _[-1].EnderItems[{Slot: 12b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 12b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 12b}]
  execute if entity @s[advancements={ender_chest_ui:slot={13=true}}] unless data storage : _[-1].EnderItems[{Slot: 13b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 13b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 13b}]
  execute if entity @s[advancements={ender_chest_ui:slot={14=true}}] unless data storage : _[-1].EnderItems[{Slot: 14b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 14b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 14b}]
  execute if entity @s[advancements={ender_chest_ui:slot={15=true}}] unless data storage : _[-1].EnderItems[{Slot: 15b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 15b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 15b}]
  execute if entity @s[advancements={ender_chest_ui:slot={16=true}}] unless data storage : _[-1].EnderItems[{Slot: 16b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 16b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 16b}]
  execute if entity @s[advancements={ender_chest_ui:slot={17=true}}] unless data storage : _[-1].EnderItems[{Slot: 17b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 17b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 17b}]
  execute if entity @s[advancements={ender_chest_ui:slot={18=true}}] unless data storage : _[-1].EnderItems[{Slot: 18b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 18b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 18b}]
  execute if entity @s[advancements={ender_chest_ui:slot={19=true}}] unless data storage : _[-1].EnderItems[{Slot: 19b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 19b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 19b}]
  execute if entity @s[advancements={ender_chest_ui:slot={20=true}}] unless data storage : _[-1].EnderItems[{Slot: 20b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 20b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 20b}]
  execute if entity @s[advancements={ender_chest_ui:slot={21=true}}] unless data storage : _[-1].EnderItems[{Slot: 21b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 21b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 21b}]
  execute if entity @s[advancements={ender_chest_ui:slot={22=true}}] unless data storage : _[-1].EnderItems[{Slot: 22b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 22b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 22b}]
  execute if entity @s[advancements={ender_chest_ui:slot={23=true}}] unless data storage : _[-1].EnderItems[{Slot: 23b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 23b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 23b}]
  execute if entity @s[advancements={ender_chest_ui:slot={24=true}}] unless data storage : _[-1].EnderItems[{Slot: 24b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 24b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 24b}]
  execute if entity @s[advancements={ender_chest_ui:slot={25=true}}] unless data storage : _[-1].EnderItems[{Slot: 25b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 25b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 25b}]
  execute if entity @s[advancements={ender_chest_ui:slot={26=true}}] unless data storage : _[-1].EnderItems[{Slot: 26b}].tag.ender_chest_ui if data storage : _[-1].EnderItems[{Slot: 26b}] run data modify storage : _[-1].Items append from storage : _[-1].EnderItems[{Slot: 26b}]
  execute if data storage : _[-1].Items[-1] run function ender_chest_ui:rescue_items/
  
  ## dispatch save
  execute if entity @s[advancements={ender_chest_ui:is_unsafe=false}] run function #ender_chest_ui:dispatch/save
  
  ## dispatch action
  ### unsafe => action = -1(opened_ender_chest) // -2でもいいけどまあ-1にすると使いやすそう
  execute if entity @s[advancements={ender_chest_ui:is_unsafe=true}] run scoreboard players set @s ender_chest_ui.action -1
  function #ender_chest_ui:action

  ## restore
  data remove storage : _[-1].EnderItems
  function #ender_chest_ui:restore

  ## set unsafe flag
  execute if data storage : _[-1].EnderItems if entity @s[advancements={ender_chest_ui:is_unsafe=true}] run advancement revoke @s only ender_chest_ui:is_unsafe
  execute unless data storage : _[-1].EnderItems if entity @s[advancements={ender_chest_ui:is_unsafe=false}] run advancement grant @s only ender_chest_ui:is_unsafe
  execute if entity @s[advancements={ender_chest_ui:is_unsafe=true}] run function ender_chest_ui:main/contents_safety

  ## set rescue flags
  advancement revoke @s only ender_chest_ui:slot
  execute if data storage : _[-1].EnderItems[{Slot: 0b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 0
  execute if data storage : _[-1].EnderItems[{Slot: 1b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 1
  execute if data storage : _[-1].EnderItems[{Slot: 2b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 2
  execute if data storage : _[-1].EnderItems[{Slot: 3b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 3
  execute if data storage : _[-1].EnderItems[{Slot: 4b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 4
  execute if data storage : _[-1].EnderItems[{Slot: 5b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 5
  execute if data storage : _[-1].EnderItems[{Slot: 6b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 6
  execute if data storage : _[-1].EnderItems[{Slot: 7b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 7
  execute if data storage : _[-1].EnderItems[{Slot: 8b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 8
  execute if data storage : _[-1].EnderItems[{Slot: 9b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 9
  execute if data storage : _[-1].EnderItems[{Slot: 10b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 10
  execute if data storage : _[-1].EnderItems[{Slot: 11b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 11
  execute if data storage : _[-1].EnderItems[{Slot: 12b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 12
  execute if data storage : _[-1].EnderItems[{Slot: 13b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 13
  execute if data storage : _[-1].EnderItems[{Slot: 14b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 14
  execute if data storage : _[-1].EnderItems[{Slot: 15b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 15
  execute if data storage : _[-1].EnderItems[{Slot: 16b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 16
  execute if data storage : _[-1].EnderItems[{Slot: 17b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 17
  execute if data storage : _[-1].EnderItems[{Slot: 18b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 18
  execute if data storage : _[-1].EnderItems[{Slot: 19b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 19
  execute if data storage : _[-1].EnderItems[{Slot: 20b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 20
  execute if data storage : _[-1].EnderItems[{Slot: 21b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 21
  execute if data storage : _[-1].EnderItems[{Slot: 22b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 22
  execute if data storage : _[-1].EnderItems[{Slot: 23b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 23
  execute if data storage : _[-1].EnderItems[{Slot: 24b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 24
  execute if data storage : _[-1].EnderItems[{Slot: 25b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 25
  execute if data storage : _[-1].EnderItems[{Slot: 26b}].tag.ender_chest_ui run advancement grant @s only ender_chest_ui:slot 26
data remove storage : _[-1]

## reset
scoreboard players reset @s ender_chest_ui.action
