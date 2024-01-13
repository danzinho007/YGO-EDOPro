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

Debug.SetAIName("Tour Guide From the Underworld") --Nome do Oponente
Debug.ReloadFieldBegin(DUEL_MODE_RUSH+DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI+DUEL_PSEUDO_SHUFFLE,0)
Debug.SetPlayerInfo(0,6000,0,0) -- Seus pontos de vida
Debug.SetPlayerInfo(1,6000,0,0) -- Pontos de Vida do oponente
Debug.ShowHint("Vença em 1 turno!") --Mensagem que vai aparecer, a pessoa precisa clicar em OK pra continuar

--Main Deck (yours)
Debug.AddCard(160002000,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(160002000,0,0,LOCATION_DECK,0,POS_FACEDOWN)

--Extra Deck (yours)
Debug.AddCard(160319001,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160411003,0,0,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160411003,0,0,LOCATION_GRAVE,0,POS_FACEUP)

--Banished (yours)
Debug.AddCard(160002000,0,0,LOCATION_REMOVED,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(160002000,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(160002000,0,0,LOCATION_MZONE,3,POS_FACEDOWN_ATTACK,true)
Debug.AddCard(160002000,0,0,LOCATION_MZONE,1,POS_FACEDOWN_DEFENSE,true)

--Spell & Trap Zones (yours)
Debug.AddCard(160411003,0,0,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(160411003,0,0,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(160411003,0,0,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(160003052,0,0,LOCATION_FZONE,0,POS_FACEUP)

--OPONENTE
--Main Deck (yours)
Debug.AddCard(160002000,1,1,LOCATION_DECK,0,POS_FACEDOWN)

--Extra Deck (yours)
Debug.AddCard(160319001,1,1,LOCATION_EXTRA,0,POS_FACEDOWN)

--Hand (yours)
Debug.AddCard(160411003,1,1,LOCATION_HAND,0,POS_FACEDOWN)

--GY (yours)
Debug.AddCard(160411003,1,1,LOCATION_GRAVE,0,POS_FACEUP)

--Banished (yours)
Debug.AddCard(160002000,1,1,LOCATION_REMOVED,0,POS_FACEDOWN)

--Monster Zones (yours)
Debug.AddCard(160002000,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(160002000,1,1,LOCATION_MZONE,3,POS_FACEDOWN_ATTACK,true)
Debug.AddCard(160002000,1,1,LOCATION_MZONE,1,POS_FACEDOWN_DEFENSE,true)

--Spell & Trap Zones (yours)
Debug.AddCard(160411003,1,1,LOCATION_SZONE,1,POS_FACEDOWN)
Debug.AddCard(160411003,1,1,LOCATION_SZONE,2,POS_FACEDOWN)
Debug.AddCard(160411003,1,1,LOCATION_SZONE,3,POS_FACEDOWN)
Debug.AddCard(160003052,1,1,LOCATION_FZONE,0,POS_FACEUP)

Debug.ReloadFieldEnd()
Duel.SetLP(0,4000)
Duel.SetLP(1,4000)
aux.BeginPuzzle()
