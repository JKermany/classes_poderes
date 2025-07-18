# Gerencia o tempo de vida de marcadores que representam efeitos e devem simplesmente desaparecer
scoreboard players remove @s block_lifetime 1
execute if score @s block_lifetime matches ..0 run kill @s