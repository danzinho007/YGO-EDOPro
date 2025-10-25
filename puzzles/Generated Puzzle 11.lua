--Criado por DanMorishima ( Github : danzinho007 )

--[[message
Opponent's Starting LP: 9999
História do Victor
Faça a Invocação-Fusão de "Goldem do Mecanismo Antigo Definito" com o efeito de "Duelo do Mecanismo Antigo"!
Dica:
"Duelo do Mecanismo Antigo é uma carta de armadilha, mas você pode colocá-la em seu campo com face para cima com o efeito de "Comandante do Mecanismo Antigo" ativável no Cemitério!
Supreendentemente, a combinação desta carta com o efeito de "Tanqueiro do Mecanismo Antigo" dará a você um "Goldem do Mecanismo Antigo Definitivo" com 5000 de Ataque, não afetado pelos efeitos de monstros do oponente e capaz de fazer 3 ataques"
]]

Debug.SetAIName("Tour Guide From the Underworld") --Nome do Oponente
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,4000,0,0) -- Seus pontos de vida
Debug.SetPlayerInfo(1,9900,0,0) -- Pontos de Vida do oponente
Debug.ShowHint("Vença em 1 turno!") --Mensagem que vai aparecer, a pessoa precisa clicar em OK pra continuar

--Main Deck (yours)
Debug.AddCard(53541822,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(27483935,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Extra Deck (yours)
Debug.AddCard(12652643,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(91098230,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(83104731,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(83104731,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(64603182,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Banished (yours)
--Debug.AddCard(46986414,0,0,LOCATION_REMOVED,0,POS_FACEDOWN)

--Monster Zones (yours)
--Debug.AddCard(46986414,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
--Debug.AddCard(46986414,0,0,LOCATION_MZONE,3,POS_FACEDOWN_ATTACK,true)
--Debug.AddCard(46986414,0,0,LOCATION_MZONE,4,POS_FACEUP_DEFENSE,true)
--Debug.AddCard(46986414,0,0,LOCATION_MZONE,1,POS_FACEDOWN_DEFENSE,true)
--Debug.AddCard(93672138,0,0,LOCATION_MZONE,6,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (yours)
--Debug.AddCard(43785278,0,0,LOCATION_PZONE,0,POS_FACEUP)
--Debug.AddCard(65518099,0,0,LOCATION_PZONE,1,POS_FACEUP)
--Debug.AddCard(55144522,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
--Debug.AddCard(22702055,0,0,LOCATION_FZONE,0,POS_FACEUP)

--OPONENTE
--Main Deck (opponent's)
--Debug.AddCard(46986414,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--Extra Deck (yours)
--Debug.AddCard(5829717,1,1,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (opponent's)
--Debug.AddCard(46986414,1,1,LOCATION_HAND,0,POS_FACEDOWN)

--GY (opponent's)
--Debug.AddCard(46986414,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Banished (opponent's)
--Debug.AddCard(46986414,1,1,LOCATION_REMOVED,0,POS_FACEDOWN)

--Monster Zones (opponent's)
--4 Canto Esquerdo
--3 Esquerda
--2 Meio
--1 Direita
--0 Canto Direito
--5 Meio direita
Debug.AddCard(05556499,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(62873545,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(04335645,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's) 
--1 Canto Esquerdo
--2 Canto Direito
Debug.AddCard(62279055,1,1,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(44095762,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(75902998,1,1,LOCATION_SZONE,1,POS_FACEDOWN)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()
