# Gerencia o tempo de vida de marcadores que representam blocos que devem desaparecer
scoreboard players remove @s block_lifetime 1
execute if score @s block_lifetime matches ..0 run setblock ~ ~ ~ air
execute if score @s block_lifetime matches ..0 run kill @s