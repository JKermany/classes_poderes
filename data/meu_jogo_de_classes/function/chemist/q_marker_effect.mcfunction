# Este arquivo é executado POR CADA marcador de veneno ativo.

# Geração de Partículas Roxas
particle dust{color:[0.502,0.000,0.502],scale:1} ~ ~0.5 ~ 0.2 0.2 0.2 0 5 normal

# Aplica o efeito de Veneno apenas quando o contador de ticks chega a 0 ou menos
execute if score @s poison_tick_rate matches ..0 run function meu_jogo_de_classes:chemist/apply_poison_from_marker

# Reseta o contador de ticks para 20 (1 segundo) após aplicar o veneno
execute if score @s poison_tick_rate matches ..0 run scoreboard players set @s poison_tick_rate 20

# Decrementa o contador de ticks para o veneno neste marcador
scoreboard players remove @s poison_tick_rate 1
scoreboard players set @s[scores={poison_tick_rate=..0}] poison_tick_rate 0 