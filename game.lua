local game = {}

local manager = require("utils.manager")
local utilities = require("utils.stringUtils")
local players = require("utils.players")

local thirdStarters = {
    require("pokemons.charmander"),
    require("pokemons.bulbasaur"),
    require("pokemons.squirtle")
}

local PROF_PREFIXO = "[Professor Carvalho] "
local AMY_PREFIXO = players:getEnemyName()
local PLAYER_PREFIXO = players.getPlayerName()

local playerRound = true;

function game:login(playerName)

    print(PROF_PREFIXO .. "Por favor, escreva o seu nickname: ")
    print("TIP > O seu nickname deve ter no maximo '16' caracteres!")

    local nickname = tostring(io.read())
    players:setPlayerName("[" .. string.sub(nickname, 0, 16) .. "] ")
    utilities:clearLines();

    game:load()
end

function game:load()

    print(PROF_PREFIXO .. "Ola jovem treinador, agora que iniciou-se sua jornada.")
    print(PROF_PREFIXO .. "Por favor, escolha o seu pokemon inicial:")
    print("1. Charmander 2. Bulbasaur 3. Squirtle")

    local select = tonumber(io.read())
    players:setPlayerPokemon(thirdStarters[select])
    players:setEnemyPokemon(thirdStarters[math.random(1, 3)])

    game:nextStep()
    utilities:clearLines();
end

function game:nextStep()
    print(PROF_PREFIXO .. "Seu inicial escolhido: " .. players:getPlayerPokemon().nome)

    print(PROF_PREFIXO .. "Agora que seu pokemon inicial foi escolhido.")
    print(PROF_PREFIXO .. "Voce deseja batalhar com a treinadora: Amy ?")
    print("1. Sim 2. Nao")
    
    local select2 = tonumber(io.read())
    if select2 == 1 then
        game:startBattle()
    elseif select2 == 2 then
        print(PROF_PREFIXO .. "Sua jornada chegou ao fim!")
    end

    players:setEnemyName("[Amy] ")
    utilities:clearLines();
end


function game:startBattle()

    local ENEMY_POKEMON = players:getEnemyPokemon()
    local PLAYER_POKEMON = players:getPlayerPokemon()

    print(AMY_PREFIXO .. "Parece que iremos batalhar, eu nao vou pegar leve!")
    print(AMY_PREFIXO .. ENEMY_POKEMON.nome .. " eu escolho voce!")
    stringUtils:toNextTime()

    game:fighting(players:getPlayerPokemon(), players:getEnemyPokemon())
end

function game:fighting(playerPokemon, enemyPokemon)

    ::REBBATLE::
    if manager:checkBattle(AMY_PREFIXO, playerPokemon, enemyPokemon) == true then
        return;
    end

    if playerRound == true then
        stringUtils:generateWindow(false, playerPokemon, enemyPokemon)

        local attack = tonumber(io.read())
        local attackUsed = manager:getAttackName(playerPokemon, attack)
        local attackDamage = manager:getAttackDamage(playerPokemon, attack)

        enemyPokemon = playerPokemon:atacar(enemyPokemon, attack)
        print("[PokeBattle] Voce usou " .. attackUsed .. " e causou " .. attackDamage .. " dano!")
        stringUtils:toNextTime()
        playerRound = false;
        goto REBBATLE

    elseif playerRound == false then
            stringUtils:generateWindow(true, playerPokemon, enemyPokemon)

            local attack = math.random(1, 3)
            local attackUsed = manager:getAttackName(enemyPokemon, attack)
            local attackDamage = manager:getAttackDamage(enemyPokemon, attack)
            
            playerPokemon = enemyPokemon:atacar(playerPokemon, attack)
            print("[PokeBattle] Amy usou " .. attackUsed .. " e causou " .. attackDamage .. " dano!")
            stringUtils:toNextTime()
            playerRound = true;
            goto REBBATLE
    end
end

return game