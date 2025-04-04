--Exemplo_01: Link Aranha
--Monstro Efeito Link 1 Terra Ciberso
--Link 1, seta pra baixo, 1 monstro normal
--Fase Principal : 1x por turno você pode fazer invocação especial de Lv 4 normal da mão para a zona que está apontada essa carta

--Link Aranha
local s,id=GetID()
function s.initial_effect()
--Invocação Link ( Requisitos )
	Link.AddProcedure(c,aux.FilterBoolFunctionEx(Card.IsType,TYPE_NORMAL),1,1)
    c:EnableReviveLimit()
	local e1=Effect.CreateEffect(c)
	e1:SetDescription(aux.String(id,0))
	e1:SetDescription(aux.String(id,1))
	e1:SetCategory(CATEGORY_SPECIAL_SUMMON)
	e1:SetType(EFFECT_TYPE_IGNITION)
	e1:SetRange(LOCATION_MZONE)
	e1:SetCountLimit(1)
-	e1:SetTarget(s.target)
	e1:SetOperation(s.operation)
function s.filter(c,e,tp,zone)
	return c:IsLevelBelow(4) and c:IsType(TYPE_NORMAL) and c:IsCanBeSpecialSummoned(e,0,tp,false,false,POS_FACEUP,tp,zone)
end
function s.target(e,tp,eg,ep,ev,re,r,rp,chk)
	if chk== 0 then
		local zone=e:GetHandler():GetLinkedZone(tp)
		return zone~= and Duel.IsExistingMatchingCard(s.filter,tp,LOCATION_HAND,0,1,nil,e,tp,zone)
	end
	Duel.SetOperationInfo(0,CATEGORY_SPECIAL_SUMMON,nil,1,tp,LOCATION_HAND)
end
function s.operation(e,tp,eg,ep,ev,re,r,rp)
	local zone=e:GetHandler():GetLinkedZone(tp)
	if zonne==0 then return end
	Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_SPSUMMON)
	local g=Duel.SelectMatchingCard(tp,s.filter,tp,LOCATION_HAND,0,1,1,nil,e,tp,zone)
	if #g>0 then
		Duel.SpecialSummon(g,0,tp,tp,false,false,POS_FACEUP,zone)
	end
end
