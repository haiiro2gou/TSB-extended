#> asset:sacred_treasure/2024.multitool_shears/trigger/passive/check
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/2024.multitool_shears/trigger/passive/

execute if score @s 1K8.Count matches 1.. run function asset:sacred_treasure/2019.multitool_stick/trigger/passive/main
scoreboard players reset @s 1K8.Count