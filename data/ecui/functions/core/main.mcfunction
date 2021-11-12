#> ecui:core/main
#@within function ecui:core/calc_action_id
#@within function ecui:core/opened_ender_chest

#>
#@private
#declare storage _

## rescue items lost by ecui
data modify storage _ stack append value {Items: []}
  data modify storage _ stack[-1].EnderItems set from entity @s EnderItems
    execute if score @s ecui.slot0 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 0b}] unless data storage _ stack[-1].EnderItems[{Slot: 0b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 0b}]
    execute if score @s ecui.slot1 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 1b}] unless data storage _ stack[-1].EnderItems[{Slot: 1b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 1b}]
    execute if score @s ecui.slot2 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 2b}] unless data storage _ stack[-1].EnderItems[{Slot: 2b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 2b}]
    execute if score @s ecui.slot3 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 3b}] unless data storage _ stack[-1].EnderItems[{Slot: 3b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 3b}]
    execute if score @s ecui.slot4 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 4b}] unless data storage _ stack[-1].EnderItems[{Slot: 4b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 4b}]
    execute if score @s ecui.slot5 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 5b}] unless data storage _ stack[-1].EnderItems[{Slot: 5b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 5b}]
    execute if score @s ecui.slot6 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 6b}] unless data storage _ stack[-1].EnderItems[{Slot: 6b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 6b}]
    execute if score @s ecui.slot7 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 7b}] unless data storage _ stack[-1].EnderItems[{Slot: 7b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 7b}]
    execute if score @s ecui.slot8 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 8b}] unless data storage _ stack[-1].EnderItems[{Slot: 8b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 8b}]
    execute if score @s ecui.slot9 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 9b}] unless data storage _ stack[-1].EnderItems[{Slot: 9b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 9b}]
    execute if score @s ecui.slot10 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 10b}] unless data storage _ stack[-1].EnderItems[{Slot: 10b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 10b}]
    execute if score @s ecui.slot11 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 11b}] unless data storage _ stack[-1].EnderItems[{Slot: 11b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 11b}]
    execute if score @s ecui.slot12 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 12b}] unless data storage _ stack[-1].EnderItems[{Slot: 12b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 12b}]
    execute if score @s ecui.slot13 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 13b}] unless data storage _ stack[-1].EnderItems[{Slot: 13b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 13b}]
    execute if score @s ecui.slot14 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 14b}] unless data storage _ stack[-1].EnderItems[{Slot: 14b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 14b}]
    execute if score @s ecui.slot15 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 15b}] unless data storage _ stack[-1].EnderItems[{Slot: 15b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 15b}]
    execute if score @s ecui.slot16 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 16b}] unless data storage _ stack[-1].EnderItems[{Slot: 16b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 16b}]
    execute if score @s ecui.slot17 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 17b}] unless data storage _ stack[-1].EnderItems[{Slot: 17b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 17b}]
    execute if score @s ecui.slot18 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 18b}] unless data storage _ stack[-1].EnderItems[{Slot: 18b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 18b}]
    execute if score @s ecui.slot19 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 19b}] unless data storage _ stack[-1].EnderItems[{Slot: 19b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 19b}]
    execute if score @s ecui.slot20 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 20b}] unless data storage _ stack[-1].EnderItems[{Slot: 20b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 20b}]
    execute if score @s ecui.slot21 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 21b}] unless data storage _ stack[-1].EnderItems[{Slot: 21b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 21b}]
    execute if score @s ecui.slot22 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 22b}] unless data storage _ stack[-1].EnderItems[{Slot: 22b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 22b}]
    execute if score @s ecui.slot23 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 23b}] unless data storage _ stack[-1].EnderItems[{Slot: 23b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 23b}]
    execute if score @s ecui.slot24 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 24b}] unless data storage _ stack[-1].EnderItems[{Slot: 24b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 24b}]
    execute if score @s ecui.slot25 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 25b}] unless data storage _ stack[-1].EnderItems[{Slot: 25b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 25b}]
    execute if score @s ecui.slot26 matches 1 if data storage _ stack[-1].EnderItems[{Slot: 26b}] unless data storage _ stack[-1].EnderItems[{Slot: 26b}].tag.ecui run data modify storage _ stack[-1].Items append from storage _ stack[-1].EnderItems[{Slot: 26b}]
  execute if data storage _ stack[-1].Items[0] run function shulker_loot:restore/give
data remove storage _ stack[-1]

## save
execute if entity @s[scores={ecui.safety=1..}] run function #ecui:save

## action
function #ecui:action

## set unsafe flag
loot replace entity @s enderchest.0 loot ecui:core/unsafe

## restore
function #ecui:restore

## check unsafe flag
execute store result score @s ecui.safety unless data entity @s EnderItems[0].tag.ecui{safety: false}
execute unless entity @s[scores={ecui.safety=1..}] run loot replace entity @s enderchest.0 1 loot empty

## set rescue flag
data modify storage _ EnderItems set from entity @s EnderItems
  execute store success score @s ecui.slot0 if data storage _ EnderItems[{Slot: 0b}].tag.ecui
  execute store success score @s ecui.slot1 if data storage _ EnderItems[{Slot: 1b}].tag.ecui
  execute store success score @s ecui.slot2 if data storage _ EnderItems[{Slot: 2b}].tag.ecui
  execute store success score @s ecui.slot3 if data storage _ EnderItems[{Slot: 3b}].tag.ecui
  execute store success score @s ecui.slot4 if data storage _ EnderItems[{Slot: 4b}].tag.ecui
  execute store success score @s ecui.slot5 if data storage _ EnderItems[{Slot: 5b}].tag.ecui
  execute store success score @s ecui.slot6 if data storage _ EnderItems[{Slot: 6b}].tag.ecui
  execute store success score @s ecui.slot7 if data storage _ EnderItems[{Slot: 7b}].tag.ecui
  execute store success score @s ecui.slot8 if data storage _ EnderItems[{Slot: 8b}].tag.ecui
  execute store success score @s ecui.slot9 if data storage _ EnderItems[{Slot: 9b}].tag.ecui
  execute store success score @s ecui.slot10 if data storage _ EnderItems[{Slot: 10b}].tag.ecui
  execute store success score @s ecui.slot11 if data storage _ EnderItems[{Slot: 11b}].tag.ecui
  execute store success score @s ecui.slot12 if data storage _ EnderItems[{Slot: 12b}].tag.ecui
  execute store success score @s ecui.slot13 if data storage _ EnderItems[{Slot: 13b}].tag.ecui
  execute store success score @s ecui.slot14 if data storage _ EnderItems[{Slot: 14b}].tag.ecui
  execute store success score @s ecui.slot15 if data storage _ EnderItems[{Slot: 15b}].tag.ecui
  execute store success score @s ecui.slot16 if data storage _ EnderItems[{Slot: 16b}].tag.ecui
  execute store success score @s ecui.slot17 if data storage _ EnderItems[{Slot: 17b}].tag.ecui
  execute store success score @s ecui.slot18 if data storage _ EnderItems[{Slot: 18b}].tag.ecui
  execute store success score @s ecui.slot19 if data storage _ EnderItems[{Slot: 19b}].tag.ecui
  execute store success score @s ecui.slot20 if data storage _ EnderItems[{Slot: 20b}].tag.ecui
  execute store success score @s ecui.slot21 if data storage _ EnderItems[{Slot: 21b}].tag.ecui
  execute store success score @s ecui.slot22 if data storage _ EnderItems[{Slot: 22b}].tag.ecui
  execute store success score @s ecui.slot23 if data storage _ EnderItems[{Slot: 23b}].tag.ecui
  execute store success score @s ecui.slot24 if data storage _ EnderItems[{Slot: 24b}].tag.ecui
  execute store success score @s ecui.slot25 if data storage _ EnderItems[{Slot: 25b}].tag.ecui
  execute store success score @s ecui.slot26 if data storage _ EnderItems[{Slot: 26b}].tag.ecui
data remove storage _ EnderItems

## reset
scoreboard players reset @s ecui.action
