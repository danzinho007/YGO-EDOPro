local s,id=GetID()
function s.initial_effect(c)
    -- Chama cartaTerreno no início do duelo
    local e1=Effect.CreateEffect(c)
    e1:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
    e1:SetCode(EVENT_STARTUP)
    e1:SetOperation(s.cartaTerreno)
    Duel.RegisterEffect(e1,0)

    -- Aumento de ATK ao atacar
    local e2=Effect.CreateEffect(c)
    e2:SetType(EFFECT_TYPE_SINGLE+EFFECT_TYPE_TRIGGER_F)
    e2:SetCode(EVENT_ATTACK_ANNOUNCE)
    e2:SetOperation(s.atkup)
    c:RegisterEffect(e2)
    
    -- Verificar se pode ser usado como material
    local e3=Effect.CreateEffect(c)
    e3:SetType(EFFECT_TYPE_SINGLE+EFFECT_TYPE_CONTINUOUS)
    e3:SetCode(EVENT_SUMMON_SUCCESS)
    e3:SetOperation(s.check_material)
    c:RegisterEffect(e3)
end

-- Função que ativa um terreno aleatório no início do duelo
function s.cartaTerreno(e,tp,eg,ep,ev,re,r,rp)
    local terrenos = {100000001, 100000002, 100000003, 100000004, 100000005}
    local terrenoID = terrenos[math.random(#terrenos)]
    local tc = Duel.CreateToken(tp, terrenoID)
    Duel.MoveToField(tc, tp, tp, LOCATION_FZONE, POS_FACEUP, true)
    tc:AddCounter(0x109, 6)
end

-- Aumenta o ATK em 5000 ao atacar
function s.atkup(e,tp,eg,ep,ev,re,r,rp)
    local c=e:GetHandler()
    if c:IsFaceup() then
        local e1=Effect.CreateEffect(c)
        e1:SetType(EFFECT_TYPE_SINGLE)
        e1:SetCode(EFFECT_UPDATE_ATTACK)
        e1:SetValue(5000)
        e1:SetReset(RESET_EVENT+RESETS_STANDARD_DISABLE+RESET_PHASE+PHASE_END)
        c:RegisterEffect(e1)
    end
end

-- Verifica se pode ser usado como material após a invocação
function s.check_material(e,tp,eg,ep,ev,re,r,rp)
    local allowed_level = s.can_be_used_as_material(tp)
    if allowed_level then
        Duel.Hint(HINT_MESSAGE, tp, "Esta carta pode ser usada para invocar um monstro de nível " .. allowed_level .. "!")
    end
end

-- Função para verificar se pode ser usado como material
function s.can_be_used_as_material(tp)
    local tc = Duel.GetFieldCard(tp, LOCATION_MZONE, 2)
    if tc and tc:IsFaceup() and tc:IsPosition(POS_FACEUP_ATTACK) then
        local lvl = tc:GetLevel()
        local next_level = {[1]=4, [4]=6, [6]=8, [8]=10, [10]=12}
        return next_level[lvl] or nil
    end
    return nil
end
