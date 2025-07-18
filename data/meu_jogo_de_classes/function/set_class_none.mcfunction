# Define a classe do jogador como 0 (nenhuma classe)
scoreboard players set @s player_class 0

# Reseta todos os scoreboards de cooldown (adicione todos os seus cooldowns aqui)
scoreboard players set @s cooldown_ability_1 0
scoreboard players set @s cooldown_ability_2 0
# ... (Repita para todos os seus scoreboards de cooldown) ...

# Reseta todos os scoreboards de uso de itens
scoreboard players set @s used_carrot_stick 0
scoreboard players set @s used_warped_fungus_on_a_stick 0
# ... (Repita para todos os seus scoreboards minecraft.used) ...

# Remove todas as tags de classe (você adicionará tags para cada classe mais tarde)
tag @s remove class_jumper_user
tag @s remove class_chemist_user
# ... (Repita para todas as tags de classe que você criar) ...

# Remove todos os itens de classe do inventário (adicione todos os seus itens customizados aqui)
clear @s carrot_on_a_stick[minecraft:custom_data={is_jump_item:1b}]
clear @s glass_bottle[minecraft:custom_data={is_fling_bottle:1b}]
# ... (Repita para todos os seus itens customizados) ...

# Redefine a vida máxima para o padrão (20)
attribute @s minecraft:generic.max_health get 20

# Remove toda a armadura (para o visual padrão)
item replace entity @s armor.head with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air

tellraw @s {"text":"Você saiu de todas as classes.","color":"gray","bold":true}