# Este arquivo é executado para jogadores da classe Químico quando o cooldown da habilidade Q é 0.

# Verifica se o jogador NÃO possui o item "Frasco de Veneno" (o ovo customizado)
execute if data entity @s Inventory[{id:"minecraft:egg",components:{"minecraft:custom_data":{chemist_Q_item:1b}}}] run return 0

# Se chegou até aqui, significa que o jogador NÃO tem o item.
# Então, o item é devolvido.
give @s egg[minecraft:custom_data={chemist_Q_item:1b},minecraft:item_name='{"text":"Frasco de Veneno","color":"dark_purple","bold":true}'] 1

tellraw @s {"text":"Seu Frasco de Veneno foi recarregado!","color":"green"}