--Modelo Raiz:
--Nome em Japones / Inglês / Português
--Exemplo_02: Tiragon Bebê
--Monstro Efeito XYZ Terra Dragão
--3 monstros de nível 1
--Efeito 
-- Durante sua Fase Principal 1: Você pode desassociar 1 matéria xyz desta carta e depois escolher 1 monstro nível 1 que você controle, ele pode atacar diretamente o oponente
local s,id=GetID()
function s.initial_effect()
--Invocação XYZ
    Xyz.AddProcedure(c,nil,1,3)
    c:EnableReviveLimit()
	local e1=Effect.CreateEffect(c)
	e1:SetDescription(aux.String(id,0))
	--e1:SetCategory(CATEGORY_SPECIAL_SUMMON)
	e1:SetType(EFFECT_TYPE_IGNITION)
    e1:SetProperty(EFFECT_FLAG_CARD_TARGET)
    e1:SetRange(LOCATION_MZONE)
    --e1:SetCountLimit()
    e1:SetCondition(s.condition)
    e1:SetCost(s.cost)
	e1:SetCountLimit(1)
-	e1:SetTarget(s.target)
	e1:SetOperation(s.operation)
    c:RegisterEffect(e1,false,REGISTER_FLAG_DETACH_XMAT)
function s.condition(e,tp,eg,ep,ev,re,r,rp)
    return Duel.GetCurrentPhase()==PHASE_MAIN1
end
function s.cost(e,tp,eg,ep,ev,re,r,rp,chk)
if chk==0 then return e:GetHandler():CheckRemoveOverlayCard(tp,1,REASON_COST) end
    e:GetHandler():RemoveOverlayCard(tp,1,1,REASON_COST)
end
function s.filter(c)
    return c:IsFaceup() and c:GetLevel()==1 and c:GetEffectCount(EFFECT_DIRECT_ATTACK)==0
end
function s.target(e,tp,eg,ep,ev,re,r,rp,chk,chkc)
    if chkc then return chkc:IsControler(tp) and chkc:IsLocation(LOCATION_MZONE) and s.filter(chkc) end
    if chk==0 then return Duel.IsExistingTarget(s.filter,tp,LOCATION_MZONE,0,1,nil) end
    Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_FACEUP)
    Duel.SelectTarget(tp,s.filter,tp,LOCATION_MZONE,0,1,1,nil)
end
function s.operation(e,tp,eg,ep,ev,re,r,rp,chk)
--Pega o primeiro alvo selecionado pelo efeito — no caso, aquele monstro Nível 1 com a face para cima que o jogador escolheu na função target.
    local tc=Duel.GetFirstTarget()
--Verifica se:
--O monstro ainda está com a face para cima;
--E ainda está no campo e ligado ao efeito, ou seja, não foi destruído ou movido antes do efeito resolver.
    if tc:IsFaceup() and tc:IsRelateToEffect(e) then
        local e1=Effect.CreateEffect(e:GetHandler())
--Efeito afeta somente 1 carta escolhida:
        e1:SetType(EFFECT_TYPE_SINGLE)
--Efeito que permite a carta escolhida atacar diretamente:
        e1:SetCode(EFFECT_DIRECT_ATTACK)
--Efeito de atacar diretamente dura até o final do turno ou até o monstro sair do campo / ser virado pra baixo
        e1:SetReset(RESET_EVENT+RESETS_STANDARD)
--Registra o efeito e agora o monstro escolhido pode atacar diretamente nesse turno :
        tc:RegisterEffect(e1)
    end
end