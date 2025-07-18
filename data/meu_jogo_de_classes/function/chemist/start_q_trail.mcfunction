# Inicia a duração do rastro (15 segundos = 300 ticks)
scoreboard players set @s chemist_Q_trail_duration 300

# Inicia o cooldown da habilidade Q (25 segundos = 500 ticks)
scoreboard players set @s cooldown_chemist_Q 500

# Adiciona uma tag para indicar que o rastro está ativo
tag @s add q_trail_active

tellraw @s {"text":"Rastro de Veneno ativado!","color":"light_purple","bold":true}