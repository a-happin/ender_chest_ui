#> ecui:core/tick
#@within tag/function player:tick

#>
#@private
#declare score_holder #tmp

execute store result score #tmp ecui.action run clear @s #lib:all{ecui: {}} 0
execute if score #tmp ecui.action matches 1.. run function ecui:core/calc_action_id
