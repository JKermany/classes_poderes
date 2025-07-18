# Define a classe do jogador como Químico (ID 2)
scoreboard players set @s player_class 2

# Reseta os cooldowns do Químico
scoreboard players set @s cooldown_chemist_Q 0
scoreboard players set @s chemist_Q_trail_duration 0

# Remove tags de classes anteriores e adiciona a tag da classe atual
tag @s remove class_jumper_user 
tag @s add class_chemist_user

# Remove todos os itens de classes anteriores (adicione os itens de todas as classes que você criar)
# clear @s <item>[minecraft:custom_data={...}]

# Dá o item para ativar a habilidade Q do Químico
# Usaremos um Ovo com nome para ativar a habilidade
give @s egg[minecraft:custom_data={chemist_Q_item:1b},minecraft:item_name='{"text":"Frasco de Veneno","color":"dark_purple","bold":true}'] 1 

tellraw @s {"text":"Sua classe agora é: Químico!","color":"dark_green","bold":true}