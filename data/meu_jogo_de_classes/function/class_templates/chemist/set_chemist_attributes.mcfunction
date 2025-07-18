# Define a vida máxima do Químico (ex: 24 = 12 corações)
attribute @s minecraft:generic.max_health get 24

# Aplica a armadura visual do Químico (ex: armadura de couro roxa)
item replace entity @s armor.head with minecraft:leather_helmet[unbreakable={},minecraft:dyed_color={rgb:8388736},minecraft:item_name='{"text":"Capuz de Químico","color":"dark_purple","bold":true}']
item replace entity @s armor.chest with minecraft:leather_chestplate[unbreakable={},minecraft:dyed_color={rgb:8388736},minecraft:item_name='{"text":"Túnica de Químico","color":"dark_purple","bold":true}']
item replace entity @s armor.legs with minecraft:leather_leggings[unbreakable={},minecraft:dyed_color={rgb:8388736},minecraft:item_name='{"text":"Calças de Químico","color":"dark_purple","bold":true}']
item replace entity @s armor.feet with minecraft:leather_boots[unbreakable={},minecraft:dyed_color={rgb:8388736},minecraft:item_name='{"text":"Botas de Químico","color":"dark_purple","bold":true}']