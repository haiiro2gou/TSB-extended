#> asset:sacred_treasure/2007.rainbow_priming_drawn/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/2007.rainbow_priming_drawn/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    execute as @s[tag=1JR.Melee] run data modify storage asset:sacred_treasure IgnoreItemUpdate set value true
    function asset:sacred_treasure/common/use/mainhand
    scoreboard players set @s 1JR.CoolTime 14

# 近接攻撃
    execute as @s[tag=1JR.Melee] run function asset:sacred_treasure/2007.rainbow_priming_drawn/trigger/4.damage

# 形態変化
    execute as @s[tag=!1JR.Melee] run function asset:sacred_treasure/2007.rainbow_priming_drawn/trigger/5.change

# ループ
    schedule function asset:sacred_treasure/2007.rainbow_priming_drawn/trigger/schedule_loop 1t replace

# リセット
    tag @s remove 1JR.Melee