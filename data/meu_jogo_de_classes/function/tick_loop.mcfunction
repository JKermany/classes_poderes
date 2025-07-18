# Gerenciamento de Cooldowns de Habilidades Gerais
scoreboard players remove @a cooldown_ability_1 1
scoreboard players set @a[scores={cooldown_ability_1=..0}] cooldown_ability_1 0

scoreboard players remove @a cooldown_ability_2 1
scoreboard players set @a[scores={cooldown_ability_2=..0}] cooldown_ability_2 0

scoreboard players remove @a cooldown_ability_3 1
scoreboard players set @a[scores={cooldown_ability_3=..0}] cooldown_ability_3 0


# Gerenciamento de Cooldowns e Duração da Habilidade Q do Químico
scoreboard players remove @a cooldown_chemist_Q 1
scoreboard players set @a[scores={cooldown_chemist_Q=..0}] cooldown_chemist_Q 0

# ESTA É A LINHA CRÍTICA PARA A CONTAGEM REGRESSIVA DA DURAÇÃO DA HABILIDADE
scoreboard players remove @a chemist_Q_trail_duration 1
scoreboard players set @a[scores={chemist_Q_trail_duration=..0}] chemist_Q_trail_duration 0


# MENSAGEM DE DEBUG: Mostra a duração restante da habilidade do Químico
execute as @a[scores={player_class=2,chemist_Q_trail_duration=1..}] run tellraw @s {"text":"[DEBUG-DURACAO] Duração restante: ","color":"gray","extra":[{"score":{"name":"@s","objective":"chemist_Q_trail_duration"},"color":"light_purple"}]}


# Lógica de Habilidades por Classe

# Lógica da Classe Químico (ID 2)
execute as @a[scores={player_class=2}] at @s run function meu_jogo_de_classes:chemist/q_ability_start
execute as @a[scores={player_class=2,chemist_Q_trail_duration=1..}] at @s run function meu_jogo_de_classes:chemist/q_ability_process
execute as @a[scores={player_class=2,chemist_Q_trail_duration=0},tag=q_trail_active] at @s run function meu_jogo_de_classes:chemist/q_ability_stop

# NOVO: Devolve o item da habilidade Q se o cooldown acabou e o jogador não o tem
execute as @a[scores={player_class=2,cooldown_chemist_Q=0}] at @s run function meu_jogo_de_classes:class_templates/chemist/give_q_item_back

# Processa todos os marcadores de veneno ativos criados pelo Químico
execute as @e[type=marker,tag=chemist_poison_marker,scores={block_lifetime=1..}] at @s run function meu_jogo_de_classes:chemist/q_marker_effect


# Chama a função de gerenciamento de classes (vida e armadura)
execute as @a run function meu_jogo_de_classes:class_manager


# Limpeza de entidades temporárias

# Nuvens de efeito do Pulador (se você re-adicionar o Pulador)
kill @e[type=area_effect_cloud,tag=jump_boost_trigger]

# Marcadores da cola do Químico (se você adicionar a habilidade de cola)
kill @e[type=marker,tag=glue_marker]

# Gerencia o tempo de vida de marcadores que representam blocos que desaparecem (ex: classe Arquiteto)
execute as @e[type=marker,tag=temp_block_marker,scores={block_lifetime=1..}] run function meu_jogo_de_classes:cleanup/manage_temp_block_despawn

# Gerencia o tempo de vida de marcadores que representam efeitos (ex: rastro de veneno do Químico)
execute as @e[type=marker,tag=chemist_poison_marker,scores={block_lifetime=1..}] run function meu_jogo_de_classes:cleanup/manage_marker_lifetime