--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Spell & Trap Zones (yours)
Debug.AddCard(16178681,0,0,LOCATION_PZONE,0,POS_FACEUP)
Debug.AddCard(16178681,0,0,LOCATION_PZONE,1,POS_FACEUP)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()