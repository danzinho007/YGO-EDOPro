--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Extra Deck (yours)
Debug.AddCard(90448279,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(23995347,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK,true) -- Dragão
Debug.AddCard(37542782,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(80117527,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true) -- XYZ ataca

Debug.AddCard(05318639,0,0,LOCATION_SZONE,3,POS_FACEDOWN) --Zona de Magias e armadilhas

--Monster Zones (opponent's)
Debug.AddCard(46986415,1,1,LOCATION_MZONE,3,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(511004341,1,1,LOCATION_SZONE,2,POS_FACEDOWN)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()
