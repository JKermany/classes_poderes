# Inicializa o scoreboard para a ID da classe do jogador
scoreboard objectives add player_class dummy

# Inicializa scoreboards para estatísticas de uso de itens (para detecção de clique direito fácil)
scoreboard objectives add used_carrot_stick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add used_warped_fungus_on_a_stick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add used_snowball minecraft.used:minecraft.snowball
scoreboard objectives add used_egg minecraft.used:minecraft.egg
scoreboard objectives add used_honey_bottle minecraft.used:minecraft.honey_bottle
scoreboard objectives add used_glass_bottle minecraft.used:minecraft.glass_bottle
scoreboard objectives add used_end_rod minecraft.used:minecraft.end_rod
scoreboard objectives add used_ender_eye minecraft.used:minecraft.ender_eye
scoreboard objectives add used_written_book minecraft.used:minecraft.written_book
scoreboard objectives add used_spider_eye minecraft.used:minecraft.spider_eye
scoreboard objectives add used_pig_spawn_egg minecraft.used:minecraft.pig_spawn_egg

# Scoreboards para gerenciamento de cooldowns (um para cada habilidade ou por classe)
scoreboard objectives add cooldown_ability_1 dummy
scoreboard objectives add cooldown_ability_2 dummy
scoreboard objectives add cooldown_ability_3 dummy

# Scoreboards específicos do Químico
scoreboard objectives add cooldown_chemist_Q dummy
scoreboard objectives add chemist_Q_trail_duration dummy
scoreboard objectives add poison_tick_rate dummy

# Scoreboard para gerenciar o tempo de vida de blocos temporários ou marcadores
scoreboard objectives add block_lifetime dummy



# Mensagem de carregamento do datapack
tellraw @a {"text":"[Datapack de Classes] Base Carregada!","color":"green","bold":true}