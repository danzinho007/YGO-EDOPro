--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Spell & Trap Zones (yours)
Debug.AddCard(22702055,0,0,LOCATION_FZONE,0,POS_FACEUP)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()