--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
--Criado por DanMorishima ( Github : danzinho007 )

--[[message
Duel Links Março 2025
Opponent's Starting LP: 6200

Enviar "Dragão Vermelho Arquidemônio com Cicatriz" ao Cemitério como matéria para a InvocaçãoSincro de um Monstro Sincro Dragão de Trevas permite que você destrua todos os ataques em Posição de Ataque controlado pelo oponente!

"Abrasador Dragão Vermelho Arquidemônio do Abismo" tem ume efeito utilizável durante o turno de qualquer jogador, o qual neutraliza os efeitos de 1 carta com face para cima controlado pelo oponente até o fim do turno"
]]

Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,6200,0,0)

--Main Deck (yours)
Debug.AddCard(25784595,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(77360173,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Extra Deck (yours)
Debug.AddCard(87451661,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(9753964,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(70902743,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(62991792,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(62991792,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(77360173,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--Monster Zones (opponent's)
Debug.AddCard(2322421,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)
Debug.AddCard(14017402,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(60800381,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(98427577,1,1,LOCATION_SZONE,2,POS_FACEDOWN)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()
