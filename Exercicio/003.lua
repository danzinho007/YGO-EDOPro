--Modelo Raiz:
--Nome em Japones / Nome em Ingles / Nome em Portugues
--Exemplo ??: Nome da Carta
--Categoria da carta / Atributo / Tipo / Ataque / Defesa
--Quantos monstros pra ser invocado ?
--Efeito da carta
local s,id=GetID()
function s.initial_effect()
--Invocação Link (Requisitos)
	Link.AddProcedure(c,aux.FilterBoolFunctionEx(Card.IsType,TYPE_NORMAL),1,1)
    c:EnableReviveLimit()
--Invocação XYZ (Requisitos)
	Xyz.AddProcedure(c,nil,1,3)
	c:EnableReviveLimit()
	local e1=Effect.CreateEffect(c)
	e1:SetDescription(aux.String(id,0))
	e1:SetDescription(aux.String(id,1))
	e1:SetCategory()
	e1:SetType()
    e1:SetProperty()
	e1:SetRange()
	e1:SetCountLimit()
-	e1:SetTarget(s.target)
	e1:SetOperation(s.operation)
function s.condition(e,tp,eg,ep,ev,re,r,rp)
    return Duel.GetCurrentPhase()
end  
function s.cost(e,tp,eg,ep,ev,re,r,rp,chk)
    if chk==0 then return ... end
end
function s.filter(c,e,tp,zone)
	return c:IsLevelBelow(4)
end
function s.target(e,tp,eg,ep,ev,re,r,rp,chk)
    if chk==0 then
        local 
        return
    end
    Duel.SetOperationInfo()
end
function s.operation(e,tp,eg,ep,ev,re,r,rp)
	local
	if
	Duel.Hint()
	local
	if
		Duel.SpecialSummon()
	end
end
