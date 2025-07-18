# Garante que apenas jogadores com uma classe válida sejam processados
execute as @s[scores={player_class=1..}] run function meu_jogo_de_classes:class_manager_process

# Define a vida e armadura para a classe 0 (sem classe)
execute as @s[scores={player_class=0}] run attribute @s minecraft:generic.max_health get 20
execute as @s[scores={player_class=0}] run item replace entity @s armor.head with minecraft:air
execute as @s[scores={player_class=0}] run item replace entity @s armor.chest with minecraft:air
execute as @s[scores={player_class=0}] run item replace entity @s armor.legs with minecraft:air
execute as @s[scores={player_class=0}] run item replace entity @s armor.feet with minecraft:air