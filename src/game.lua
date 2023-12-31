local game = {}

local charmander = {
    talk_name = "Char-Charmandeer!",
    nome = "Charmander",
    vida = 17,
    primeiro_ataque = "Rajada de Fogo",
    primeiro_ataque_dano = 8,
    segundo_ataque = "Mordida Flamejante",
    segundo_ataque_dano = 4,
    terceiro_ataque = "Incandescencia",
    terceiro_ataque_dano = 2
}

local bulbasaur = {
    talk_name = "Bulbasaur...",
    nome = "Bulbasaur",
    vida = 16,
    primeiro_ataque = "Chicote Selvagem",
    primeiro_ataque_dano = 7,
    segundo_ataque = "Absorver",
    segundo_ataque_dano = 2,
    terceiro_ataque = "Esporos Venenosos",
    terceiro_ataque_dano = 6
}

local squirtle = {
    talk_name = "Squirtle Squirtle!!",
    nome = "Squirtle",
    vida = 19,
    primeiro_ataque = "Jato de Agua",
    primeiro_ataque_dano = 8,
    segundo_ataque = "Escudo de Agua",
    segundo_ataque_dano = 0,
    terceiro_ataque = "Tornado D'agua",
    terceiro_ataque_dano = 3
}

local playerPokemon = {}
local enemyPokemon = {}

local PROF_PREFIXO = "[Professor Carvalho] "
local PLAYER_PREFIXO = ""
local playerRound = true;
function game:load(playerName)

    PLAYER_PREFIXO = playerName

    print(PROF_PREFIXO .. "Ola jovem treinador, agora que iniciou-se sua jornada.")
    print(PROF_PREFIXO .. "Por favor, escolha o seu pokemon inicial:")
    print("1. Charmander 2. Bulbasaur 3. Squirtle")

    local select = tonumber(io.read())
    if select == 1 then
        playerPokemon = charmander
        enemyPokemon = squirtle
    elseif select == 2 then
        playerPokemon = bulbasaur
        enemyPokemon = charmander
    else if select == 3 then
        playerPokemon = squirtle
        enemyPokemon = bulbasaur
         end
    end

    game:nextStep()
end

function game:nextStep()
    print(PROF_PREFIXO .. "Seu inicial escolhido: " .. playerPokemon.nome)

    print(PROF_PREFIXO .. "Agora que seu pokemon inicial foi escolhido.")
    print(PROF_PREFIXO .. "Voce deseja batalhar com a treinadora: Amy ?")
    print("1. Sim 2. Nao")
    
    local select2 = tonumber(io.read())
    if select2 == 1 then
        game:startBattle()
    elseif select2 == 2 then
        print(PROF_PREFIXO .. "Sua jornada chegou ao fim!")
    end
end

local AMY_PREFIXO = "[Amy] "
function game:startBattle()

    print(AMY_PREFIXO .. enemyPokemon.nome .. " eu escolho voce!")
    print(AMY_PREFIXO .. "-> [" .. enemyPokemon.nome .. "] " .. enemyPokemon.talk_name)
    print(PLAYER_PREFIXO .. playerPokemon.nome .. " eu escolho voce!")
    print(PLAYER_PREFIXO .. "-> [" .. playerPokemon.nome .. "] " .. playerPokemon.talk_name)
    print(PLAYER_PREFIXO .. "Amy! Prepare-se para perder para mim!")
    print(AMY_PREFIXO .. "Entao veremos!")

    game:fighting()
end

function game:fighting()

    ::REBBATLE::
    if playerPokemon.vida <= 0 then
        print("[PokeBattle] Parece que voce perdeu esta batalha!")
        print("[PokeBattle] Infelizmente nao pode ser um treinador.")
    elseif enemyPokemon.vida <= 0 then
        print("[PokeBattle] Voce ganhou esta batalha!")
        print("[PokeBattle] Agora tornou-se um treinador oficialmente.")
    else
        if playerRound == true then
        print("")
        print("----------------(Detalhes)----------------")
        print("Pokemon: " .. playerPokemon.nome)
        print("Sua vida:" .. playerPokemon.vida)
        print("------------------------------------------")
        print("[PokeBattle] Esta na sua vez de batalhar!")
        print("[PokeBattle] Selecione um dos ataques abaixo:")
        print("1. " .. playerPokemon.primeiro_ataque .. " - Dano " .. playerPokemon.primeiro_ataque_dano)
        print("2. " .. playerPokemon.segundo_ataque .. " - Dano " .. playerPokemon.segundo_ataque_dano)
        print("3. " .. playerPokemon.terceiro_ataque .. " - Dano " ..playerPokemon.terceiro_ataque_dano)
        print("------------------------------------------")
        print("")

        local attack = tonumber(io.read())
        local attackUsed = ""
        local attackDamage = 2
        if attack == 1 then
            attackDamage = playerPokemon.primeiro_ataque_dano
            attackUsed = playerPokemon.primeiro_ataque
        elseif attack == 2 then
            attackDamage = playerPokemon.segundo_ataque_dano
            attackUsed = playerPokemon.segundo_ataque
        elseif attack == 3 then
            attackDamage = playerPokemon.terceiro_ataque_dano
            attackUsed = playerPokemon.terceiro_ataque
         end
        enemyPokemon.vida = (enemyPokemon.vida - attackDamage)

        print("[PokeBattle] Voce usou " .. attackUsed .. " e causou " .. attackDamage .. " dano!")

        playerRound = false;
        goto REBBATLE
    elseif playerRound == false then
            print("")
            print("----------------(Oponente)----------------")
            print("Pokemon: " .. enemyPokemon.nome)
            print("Vida atual:" .. enemyPokemon.vida)
            print("[PokeBattle] Amy podera te atacar agora!")
            print("[PokeBattle] Um ata:")
            print("------------------------------------------")

            local attack = math.random(1, 3)
            local attackUsed = ""
            local attackDamage = 2
            if attack == 1 then
                attackDamage = enemyPokemon.primeiro_ataque_dano
                attackUsed = enemyPokemon.primeiro_ataque
            elseif attack == 2 then
                attackDamage = enemyPokemon.segundo_ataque_dano
                attackUsed = enemyPokemon.segundo_ataque
            elseif attack == 3 then
                attackDamage = enemyPokemon.terceiro_ataque_dano
                attackUsed = enemyPokemon.terceiro_ataque
             end
            playerPokemon.vida = (playerPokemon.vida - attackDamage)
            
            print("[PokeBattle] Amy usou " .. attackUsed .. " e causou " .. attackDamage .. " dano!")
            print("[PokeBattle] Deseja prosseguir ?")
            print("Aperte enter para prosseguir!")

            io.read()
            playerRound = true;
            goto REBBATLE
        end
    end
end


function game:split(inputstr, sep)
    if sep == nil then
        sep = ":"
    end
    local t = {}
    for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
        table.insert(t, str)
    end
    return t
end



return game