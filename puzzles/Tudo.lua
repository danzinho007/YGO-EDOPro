--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
--Criado por DanMorishima ( Github : danzinho007 )

--[[message
Mensagem que vai aparecer no Desafio
]]

Debug.SetAIName("Tour Guide From the Underworld") --Nome do Oponente
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,8000,0,0) -- Seus pontos de vida
Debug.SetPlayerInfo(1,8000,0,0) -- Pontos de Vida do oponente
Debug.ShowHint("Vença em 1 turno!") --Mensagem que vai aparecer, a pessoa precisa clicar em OK pra continuar

--Você !!!
--Main Deck (yours) Carta no deck sempre virada pra baixo
Debug.AddCard(10667321,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Mag Ancient Rules
Debug.AddCard(10667321,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10667321,0,0,LOCATION_DECK,0,POS_FACEDOWN) 
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Mag Pot of Greed
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN) 
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Mag Pot of Greed
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN) 
Debug.AddCard(04538826,0,0,LOCATION_DECK,0,POS_FACEDOWN) 
Debug.AddCard(49064413,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Rit-8 The Masked 
Debug.AddCard(94377247,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- MagRit Curse Masked
Debug.AddCard(83968380,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Arm Jar of Greeed
Debug.AddCard(83968380,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(38999506,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- 8 Cosmo Queen
Debug.AddCard(37576645,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Arm Reckless Greed
Debug.AddCard(37576645,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(37576645,0,0,LOCATION_DECK,0,POS_FACEDOWN) 
Debug.AddCard(33782437,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Mag One Day of Peace 
Debug.AddCard(33782437,0,0,LOCATION_DECK,0,POS_FACEDOWN) 
Debug.AddCard(95788410,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- 8 Rabridagon
Debug.AddCard(95788410,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(95788410,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(87979586,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- 4 Angel
Debug.AddCard(43096270,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Alexandrite 
Debug.AddCard(43096270,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Mag Pot of Greed
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Mag Pot of Greed
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN) 
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN) 
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(43422537,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Mag Double Summon

--Quarta puxada
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN) 
--Terceira Puxada
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Mag Pot of Greed
Debug.AddCard(69247929,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- 4 Gene-Warped
--Segunda Puxada
Debug.AddCard(69247929,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- 4 Gene- Warped
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Mag Pot of Greed 
--Primeira Puxada
Debug.AddCard(55144522,0,0,LOCATION_DECK,0,POS_FACEDOWN) -- Mag Pot of Greed

--Extra Deck (yours)
Debug.AddCard(23995346,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(24151924,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(94130731,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(39272762,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(33782437,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Carta na mão virada pra baixo
Debug.AddCard(69145169,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(89631139,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(89631139,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(89631139,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(24094653,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160002000,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Carta no cemitério é sempre virada pra cima

--Banished (yours)
Debug.AddCard(160002000,0,0,LOCATION_REMOVED,0,POS_FACEDOWN) --Carta Banida é sempre virada pra baixo

--Monster Zones (yours)
Debug.AddCard(69247929,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true) -- Carta em modo de Ataque virada pra cima
-- Debug.AddCard(160002000,0,0,LOCATION_MZONE,1,POS_FACEDOWN_ATTACK,true) --Carta em modo de Ataque virada pra baixo
-- Debug.AddCard(160002000,0,0,LOCATION_MZONE,3,POS_FACEUP_DEFENSE,true) --Carta em modo de defesa virada pra cima
-- Debug.AddCard(160002000,0,0,LOCATION_MZONE,4,POS_FACEDOWN_DEFENSE,true) --Carta em modo de defesa virada pra baixo
Debug.AddCard(21593987,0,0,LOCATION_MZONE,0,POS_FACEUP_ATTACK,true) -- Efe-4 Makyura 
-- Debug.AddCard(160002000,0,0,LOCATION_MZONE,6,POS_FACEUP_ATTACK,true) Carta na Zona Link virada pra cima em modo de ataque

--Spell & Trap Zones (yours)
Debug.AddCard(70335319,0,0,LOCATION_PZONE,0,POS_FACEUP) --Zona de Pẽndulo lado esquerdo
--Debug.AddCard(22702055,0,0,LOCATION_FZONE,0,POS_FACEUP) --Zona de Campo
Debug.AddCard(97417863,0,0,LOCATION_PZONE,1,POS_FACEUP) --Zona de Pêndulo lado direito
Debug.AddCard(160002041,0,0,LOCATION_SZONE,3,POS_FACEDOWN) --Zona de Magias e armadilhas

--Oponente !!!
--Main Deck (opponent's)
Debug.AddCard(160002000,1,1,LOCATION_DECK,0,POS_FACEDOWN) --Carta no deck do oponente sempre virada pra baixo
Debug.AddCard(160002000,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160002000,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--Hand (opponent's)
Debug.AddCard(160002000,1,1,LOCATION_HAND,0,POS_FACEDOWN) --Carta na mão do oponente

--GY (opponent's)
Debug.AddCard(160002000,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Carta no cemitério sempre virada pra cima

--Banished (opponent's)
Debug.AddCard(160002000,1,1,LOCATION_REMOVED,0,POS_FACEDOWN) --Carta banida sempre virada pra baixo

--Monster Zones (opponent's)
Debug.AddCard(77252217,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK,true)
Debug.AddCard(160002000,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK,true) --Carta em modo de Ataque virada pra cima
Debug.AddCard(160002000,1,1,LOCATION_MZONE,3,POS_FACEDOWN_ATTACK,true) --Carta em modo de Ataque virada pra baixo
Debug.AddCard(160002000,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true) --Carta em modo de Defesa virada pra cima
Debug.AddCard(160002000,1,1,LOCATION_MZONE,1,POS_FACEDOWN_DEFENSE,true) --Carta em modo de Defesa virada pra baix
--Debug.AddCard(160002000,0,0,LOCATION_MZONE,5,POS_FACEUP_ATTACK,true) --Carta na Zona Link virada pra cima em modo de ataque

--Spell & Trap Zones (opponent's)
Debug.AddCard(160002041,1,1,LOCATION_SZONE,0,POS_FACEDOWN) --Zona de Magias e Armadilhas

Debug.ReloadFieldEnd()
aux.BeginPuzzle()
