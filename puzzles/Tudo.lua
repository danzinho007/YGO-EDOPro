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
--Main Deck (yours)
Debug.AddCard(160002000,0,0,LOCATION_DECK,0,POS_FACEDOWN) --Carta no deck sempre virada pra baixo

--Extra Deck (yours)
Debug.AddCard(67231737,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160002000,0,0,LOCATION_HAND,0,POS_FACEDOWN) --Carta na mão virada pra baixo

--GY (yours)
Debug.AddCard(160002000,0,0,LOCATION_GRAVE,0,POS_FACEUP) --Carta no cemitério é sempre virada pra cima

--Banished (yours)
Debug.AddCard(160002000,0,0,LOCATION_REMOVED,0,POS_FACEDOWN) --Carta Banida é sempre virada pra baixo

--Monster Zones (yours)
Debug.AddCard(160002000,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true) --Carta em modo de Ataque virada pra cima
Debug.AddCard(160002000,0,0,LOCATION_MZONE,1,POS_FACEDOWN_ATTACK,true) --Carta em modo de Ataque virada pra baixo
Debug.AddCard(160002000,0,0,LOCATION_MZONE,3,POS_FACEUP_DEFENSE,true) --Carta em modo de defesa virada pra cima
Debug.AddCard(160002000,0,0,LOCATION_MZONE,4,POS_FACEDOWN_DEFENSE,true) --Carta em modo de defesa virada pra baixo
Debug.AddCard(160002000,0,0,LOCATION_MZONE,6,POS_FACEUP_ATTACK,true) --Carta na Zona Link virada pra cima em modo de ataque

--Spell & Trap Zones (yours)
Debug.AddCard(22702055,0,0,LOCATION_FZONE,0,POS_FACEUP) --Zona de Campo
Debug.AddCard(16178681,0,0,LOCATION_PZONE,1,POS_FACEUP) --Zona de Pêndulo lado direito
Debug.AddCard(160002041,0,0,LOCATION_SZONE,3,POS_FACEDOWN) --Zona de Magias e armadilhas
Debug.AddCard(16178681,0,0,LOCATION_PZONE,0,POS_FACEUP) --Zona de Pẽndulo lado esquerdo

--Oponente !!!
--Main Deck (opponent's)
Debug.AddCard(160002000,1,1,LOCATION_DECK,0,POS_FACEDOWN) --Carta no deck do oponente sempre virada pra baixo

--Hand (opponent's)
Debug.AddCard(160002000,1,1,LOCATION_HAND,0,POS_FACEDOWN) --Carta na mão do oponente

--GY (opponent's)
Debug.AddCard(160002000,1,1,LOCATION_GRAVE,0,POS_FACEUP) --Carta no cemitério sempre virada pra cima

--Banished (opponent's)
Debug.AddCard(160002000,1,1,LOCATION_REMOVED,0,POS_FACEDOWN) --Carta banida sempre virada pra baixo

--Monster Zones (opponent's)
Debug.AddCard(160002000,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK,true) --Carta em modo de Ataque virada pra cima
Debug.AddCard(160002000,1,1,LOCATION_MZONE,3,POS_FACEDOWN_ATTACK,true) --Carta em modo de Ataque virada pra baixo
Debug.AddCard(160002000,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE,true) --Carta em modo de Defesa virada pra cima
Debug.AddCard(160002000,1,1,LOCATION_MZONE,1,POS_FACEDOWN_DEFENSE,true) --Carta em modo de Defesa virada pra baix
Debug.AddCard(160002000,0,0,LOCATION_MZONE,6,POS_FACEUP_ATTACK,true) --Carta na Zona Link virada pra cima em modo de ataque

--Spell & Trap Zones (opponent's)
Debug.AddCard(160002041,1,1,LOCATION_SZONE,0,POS_FACEDOWN) --Zona de Magias e Armadilhas

Debug.ReloadFieldEnd()
aux.BeginPuzzle()
