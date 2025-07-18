# Detecta o clique direito no item Q do Químico (Ovo) quando não está em cooldown
execute as @s[scores={used_egg=1..,cooldown_chemist_Q=0}] at @s unless score @s chemist_Q_trail_duration matches 1.. run function meu_jogo_de_classes:chemist/start_q_trail

# Reseta a estatística de uso do item Q do Químico (Ovo)
scoreboard players set @s[scores={used_egg=1..}] used_egg 0 