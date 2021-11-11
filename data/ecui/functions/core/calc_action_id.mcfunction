#> ecui:core/calc_action_id
#@within function ecui:core/tick

#>
#@private
#declare score_holder #tmp

## restore ecui.action
scoreboard players set @s ecui.action 0

### 1
execute store success score #tmp ecui.action run clear @s #lib:all{ecui: {1: true}} 0
execute if score #tmp ecui.action matches 1.. run scoreboard players add @s ecui.action 1

### 2
execute store success score #tmp ecui.action run clear @s #lib:all{ecui: {2: true}} 0
execute if score #tmp ecui.action matches 1.. run scoreboard players add @s ecui.action 2

### 4
execute store success score #tmp ecui.action run clear @s #lib:all{ecui: {4: true}} 0
execute if score #tmp ecui.action matches 1.. run scoreboard players add @s ecui.action 4

### 8
execute store success score #tmp ecui.action run clear @s #lib:all{ecui: {8: true}} 0
execute if score #tmp ecui.action matches 1.. run scoreboard players add @s ecui.action 8

### 16
execute store success score #tmp ecui.action run clear @s #lib:all{ecui: {16: true}} 0
execute if score #tmp ecui.action matches 1.. run scoreboard players add @s ecui.action 16

### 32
execute store success score #tmp ecui.action run clear @s #lib:all{ecui: {32: true}} 0
execute if score #tmp ecui.action matches 1.. run scoreboard players add @s ecui.action 32

### 64
execute store success score #tmp ecui.action run clear @s #lib:all{ecui: {64: true}} 0
execute if score #tmp ecui.action matches 1.. run scoreboard players add @s ecui.action 64

### 128
execute store success score #tmp ecui.action run clear @s #lib:all{ecui: {128: true}} 0
execute if score #tmp ecui.action matches 1.. run scoreboard players add @s ecui.action 128

### 256
execute store success score #tmp ecui.action run clear @s #lib:all{ecui: {256: true}} 0
execute if score #tmp ecui.action matches 1.. run scoreboard players add @s ecui.action 256

### 512
execute store success score #tmp ecui.action run clear @s #lib:all{ecui: {512: true}} 0
execute if score #tmp ecui.action matches 1.. run scoreboard players add @s ecui.action 512

### 1024
execute store success score #tmp ecui.action run clear @s #lib:all{ecui: {1024: true}} 0
execute if score #tmp ecui.action matches 1.. run scoreboard players add @s ecui.action 1024

### 2048
execute store success score #tmp ecui.action run clear @s #lib:all{ecui: {2048: true}} 0
execute if score #tmp ecui.action matches 1.. run scoreboard players add @s ecui.action 2048

### 4096
execute store success score #tmp ecui.action run clear @s #lib:all{ecui: {4096: true}} 0
execute if score #tmp ecui.action matches 1.. run scoreboard players add @s ecui.action 4096

### 8192
execute store success score #tmp ecui.action run clear @s #lib:all{ecui: {8192: true}} 0
execute if score #tmp ecui.action matches 1.. run scoreboard players add @s ecui.action 8192

### 16384
execute store success score #tmp ecui.action run clear @s #lib:all{ecui: {16384: true}} 0
execute if score #tmp ecui.action matches 1.. run scoreboard players add @s ecui.action 16384

### 32768
execute store success score #tmp ecui.action run clear @s #lib:all{ecui: {32768: true}} 0
execute if score #tmp ecui.action matches 1.. run scoreboard players add @s ecui.action 32768

## clear item
clear @s #lib:all{ecui: {}}

## action
function ecui:core/main
