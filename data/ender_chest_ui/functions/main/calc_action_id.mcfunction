#> ender_chest_ui:main/calc_action_id
#@within tag/function ender_chest_ui:dispatch/main

## restore ender_chest_ui.action
scoreboard players set @s ender_chest_ui.action 0

execute store success score $ ender_chest_ui.action run clear @s #ender_chest_ui:any{ender_chest_ui: {32768: 1b}} 0
execute if score $ ender_chest_ui.action matches 1.. run scoreboard players add @s ender_chest_ui.action 32768

execute store success score $ ender_chest_ui.action run clear @s #ender_chest_ui:any{ender_chest_ui: {16384: 1b}} 0
execute if score $ ender_chest_ui.action matches 1.. run scoreboard players add @s ender_chest_ui.action 16384

execute store success score $ ender_chest_ui.action run clear @s #ender_chest_ui:any{ender_chest_ui: {8192: 1b}} 0
execute if score $ ender_chest_ui.action matches 1.. run scoreboard players add @s ender_chest_ui.action 8192

execute store success score $ ender_chest_ui.action run clear @s #ender_chest_ui:any{ender_chest_ui: {4096: 1b}} 0
execute if score $ ender_chest_ui.action matches 1.. run scoreboard players add @s ender_chest_ui.action 4096

execute store success score $ ender_chest_ui.action run clear @s #ender_chest_ui:any{ender_chest_ui: {2048: 1b}} 0
execute if score $ ender_chest_ui.action matches 1.. run scoreboard players add @s ender_chest_ui.action 2048

execute store success score $ ender_chest_ui.action run clear @s #ender_chest_ui:any{ender_chest_ui: {1024: 1b}} 0
execute if score $ ender_chest_ui.action matches 1.. run scoreboard players add @s ender_chest_ui.action 1024

execute store success score $ ender_chest_ui.action run clear @s #ender_chest_ui:any{ender_chest_ui: {512: 1b}} 0
execute if score $ ender_chest_ui.action matches 1.. run scoreboard players add @s ender_chest_ui.action 512

execute store success score $ ender_chest_ui.action run clear @s #ender_chest_ui:any{ender_chest_ui: {256: 1b}} 0
execute if score $ ender_chest_ui.action matches 1.. run scoreboard players add @s ender_chest_ui.action 256

execute store success score $ ender_chest_ui.action run clear @s #ender_chest_ui:any{ender_chest_ui: {128: 1b}} 0
execute if score $ ender_chest_ui.action matches 1.. run scoreboard players add @s ender_chest_ui.action 128

execute store success score $ ender_chest_ui.action run clear @s #ender_chest_ui:any{ender_chest_ui: {64: 1b}} 0
execute if score $ ender_chest_ui.action matches 1.. run scoreboard players add @s ender_chest_ui.action 64

execute store success score $ ender_chest_ui.action run clear @s #ender_chest_ui:any{ender_chest_ui: {32: 1b}} 0
execute if score $ ender_chest_ui.action matches 1.. run scoreboard players add @s ender_chest_ui.action 32

execute store success score $ ender_chest_ui.action run clear @s #ender_chest_ui:any{ender_chest_ui: {16: 1b}} 0
execute if score $ ender_chest_ui.action matches 1.. run scoreboard players add @s ender_chest_ui.action 16

execute store success score $ ender_chest_ui.action run clear @s #ender_chest_ui:any{ender_chest_ui: {8: 1b}} 0
execute if score $ ender_chest_ui.action matches 1.. run scoreboard players add @s ender_chest_ui.action 8

execute store success score $ ender_chest_ui.action run clear @s #ender_chest_ui:any{ender_chest_ui: {4: 1b}} 0
execute if score $ ender_chest_ui.action matches 1.. run scoreboard players add @s ender_chest_ui.action 4

execute store success score $ ender_chest_ui.action run clear @s #ender_chest_ui:any{ender_chest_ui: {2: 1b}} 0
execute if score $ ender_chest_ui.action matches 1.. run scoreboard players add @s ender_chest_ui.action 2

execute store success score $ ender_chest_ui.action run clear @s #ender_chest_ui:any{ender_chest_ui: {1: 1b}} 0
execute if score $ ender_chest_ui.action matches 1.. run scoreboard players add @s ender_chest_ui.action 1


## clear item
clear @s #ender_chest_ui:any{ender_chest_ui: {}}
