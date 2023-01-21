#> asset:sacred_treasure/2020.multitool_pickaxe/trigger/equip/3.main
#
# 神器のメイン処理部
#
# @within function
#   asset:sacred_treasure/2020.multitool_pickaxe/trigger/equip/2.check_condition
#   asset:sacred_treasure/2021.multitool_shovel/trigger/equip/2.check_condition
#   asset:sacred_treasure/2022.multitool_axe/trigger/equip/2.check_condition
#   asset:sacred_treasure/2023.multitool_hoe/trigger/equip/2.check_condition
#   asset:sacred_treasure/2024.multitool_shear/trigger/equip/2.check_condition

#> private
# @private
    #declare score_holder $1K4.Count

# メイン処理
    execute store result score $1K4.Count Temporary run data get storage asset:context Items.mainhand.tag.TSBE.EquipCount
    scoreboard players remove $1K4.Count Temporary 1
    execute if score $1K4.Count Temporary matches 1.. store result storage asset:temp 1K4.EquipCount int 1 run scoreboard players get $1K4.Count Temporary
    execute unless score $1K4.Count Temporary matches 1.. run data modify storage api: Argument.ID set value 2019
    execute unless score $1K4.Count Temporary matches 1.. run function api:sacred_treasure/replace/from_id

# リセット
    scoreboard players reset $1K4.Count Temporary
    data remove storage asset:temp 1K4.EquipCount