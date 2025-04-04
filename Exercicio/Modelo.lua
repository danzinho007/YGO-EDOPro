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

==================================
--Modelo explicativo:
--Nome em Japones
--Nome em Ingles
--Nome em Portugues
--Exemplo ??
--Categoria da carta / Atributo / Tipo / Ataque / Defesa
--Quantos monstros pra ser invocado ?
--Efeito da carta

local s,id=GetID()
function s.initial_effect()

--Invocação Link (Requisitos)
--Requisitos= Tipo de carta, Nivel e Quantidade
	Link.AddProcedure(c,aux.FilterBoolFunctionEx(Card.IsType,TYPE_NORMAL),1,1)
--Pode ser invocada de outras formas ?
--Se () = somente especial
    c:EnableReviveLimit()

--Invocação XYZ (Requisitos)
--Requisitos= Qual monstro serve como matéria, nível requerido dos materiais e número de materiais necessários
	Xyz.AddProcedure(c,nil,1,3)
--Pode ser invocada de outras formas ?
--Se () = somente especial
	c:EnableReviveLimit()

	local e1=Effect.CreateEffect(c)
--Categorias de efeitos da carta:
--Se a carta tiver 1 efeito crie só 1
--Pra identificar isso precisa olhar na banco de dados
	e1:SetDescription(aux.String(id,0))
	e1:SetDescription(aux.String(id,1))

--Categoria da carta:
--O que a carta faz
--Ver Categoria
	e1:SetCategory()

--Tipo de carta:
--Efeito da carta
--Ver Categoria > Tipo
	e1:SetType(Ver e1:SetType)

--Alvo no campo:
--Escolhe 1 carta pra fazer algo
    e1:SetProperty(EFFECT_FLAG_CARD_TARGET)

--Alcance da carta:
--Vai invocar em qual lugar do campo ?
	e1:SetRange()

--Condição pra ser ativada
--Exemplo: Estar em tal fase de batalha
    e1:SetCondition(s.condition)

--Custo pra ser ativada
--Exemplo: Alguns monstros XYZ precisam desassociar 1 matéria pra ativar algo
    e1:SetCost(s.cost)

--Limite da carta:
--Quantas vezes pode ser ativado?
    e1:SetCountLimit()

--Chama função que verifica se pode ser ativado:
	e1:SetTarget(s.target)

--Chama função que executa algo:
	e1:SetOperation(s.operation)

--Função condição
--Verifica se tem os requisitos pra ativar
function s.condition(e,tp,eg,ep,ev,re,r,rp)
    return 
end    

--Condição pra ser ativada
--Exemplo: Monstro XYZ verifica se tem matéria pra ativar 
function s.cost(e,tp,eg,ep,ev,re,r,rp,chk)
    if chk==0 then return 
    e:GetHandler()
end
--Função filtro ( ver FuncaoFiltro)
--Não é chamada diretamente no código, sim pelo sistema do jogo
--Carta invoca especialmente algo
--Exemplo: Link Aranha ( 001.lua)
function s.filter(c,e,tp,zone)
	return c:IsLevelBelow(4)
end

--Função alvo
--Verificar o efeito
function s.target(e,tp,eg,ep,ev,re,r,rp,chk)
--Verifica se o efeito pode ser ativado
    if chk==0 then
        local 
        return
    end
--Prepara pra ativação
    Duel.SetOperationInfo()
end

--Função operação
--Executa o efeito da carta
function s.operation(e,tp,eg,ep,ev,re,r,rp)
	local
	if
	Duel.Hint()
	local
	if
		Duel.SpecialSummon()
	end
end

