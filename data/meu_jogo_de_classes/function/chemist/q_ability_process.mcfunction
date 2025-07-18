# Invoca um marcador invisível no local do Químico
# Este marcador representa um ponto no rastro de veneno.
summon marker ~ ~ ~ {Tags:["chemist_poison_marker"]}

# Define a duração de vida do marcador (6 segundos = 120 ticks)
scoreboard players set @e[type=marker,tag=chemist_poison_marker,limit=1,sort=nearest] block_lifetime 120

# Inicializa o contador de ticks de veneno para o novo marcador.
# Começa em 1 para aplicar veneno no primeiro tick, depois reseta para 20 (1 segundo).
scoreboard players set @e[type=marker,tag=chemist_poison_marker,limit=1,sort=nearest] poison_tick_rate 1