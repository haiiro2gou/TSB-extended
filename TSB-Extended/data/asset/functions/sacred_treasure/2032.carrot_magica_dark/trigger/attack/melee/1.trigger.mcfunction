#> asset:sacred_treasure/2032.carrot_magica_dark/trigger/attack/melee/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:2032} run function asset:sacred_treasure/2032.carrot_magica_dark/trigger/attack/melee/2.check_condition
