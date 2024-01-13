--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
--Criado por DanMorishima ( Github : danzinho007 )

--[[message
Opponent's Starting LP: 2600
When "Amazement Attendant Comica" is Summoned, you can set 1 "Attraction" Trap Card directly from your Deck yo your Spell & Trap 
Zone! Think carefully about which monster you target with that Trap Card.
You can Special Summon "Amazement Administrator Arlekino" from you hand if a Trap Card is activated.
You can also basish any number of "Attraction" Trap Cards from your Graveyard to destroy that many cards your opponent controls!
]]

Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,2600,0,0)

--Hand (yours)
Debug.AddCard(67314110,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(29762407,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(94821366,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(92650018,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(92650018,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Main Deck
Debug.AddCard(92650018,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Monster Zones (yours)

--Spell & Trap Zones (yours)

--Monster Zones (opponent's)
Debug.AddCard(79856792,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)

--Spell & Trap Zones (opponent's)
Debug.AddCard(44095762,1,1,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(44095762,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(44095762,1,1,LOCATION_SZONE,3,POS_FACEDOWN)

Debug.ReloadFieldEnd()
aux.BeginPuzzle()
