--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)



--Main Deck (yours)
Debug.AddCard(33396948,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(44519536,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(7902349,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(8124921,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(70903634,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Zona de Monstros
Debug.AddCard(70791313,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Hand (yours)
Debug.AddCard(423705,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(69243953,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(70791313,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()
