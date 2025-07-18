# Este arquivo é chamado por q_marker_effect.mcfunction quando é hora de aplicar veneno.

# MENSAGEM DE DEBUG: Confirma que esta função foi chamada
# tellraw @a {"text":"[DEBUG-VENENO] Aplicando veneno de marcador!","color":"yellow"}

# Aplica o efeito de Veneno em um raio de 1.5 blocos ao redor do marcador.
# Aumentamos a duração do veneno para 2 segundos (40 ticks) para que seja mais perceptível e constante.
# Exclui o próprio Químico (`tag=!class_chemist_user`).
effect give @e[type=!player,distance=..1.5] poison 40 0 true 
effect give @a[distance=..1.5,tag=!class_chemist_user] poison 40 0 true 