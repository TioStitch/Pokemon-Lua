stringUtils = {}

function stringUtils:clearLines()
    for i = 1, 10 do
        print()
    end
end

function stringUtils:toNextTime()
    print("[PokeBattle] Deseja prosseguir ?")
    print("Aperte enter para prosseguir!")

    io.read()
end

function stringUtils:generateWindow(isAmy, playerPokemon, enemyPokemon)
    local isPlaying = ""
    local atualPokemon = ""
    if isAmy == true then
        isPlaying = "Amy"
        atualPokemon = enemyPokemon
    else
        isPlaying = "Sua vez"
        atualPokemon = playerPokemon
    end

    print("------------(Detalhes - " .. isPlaying .. ")-----------")
    print("Pokemon atual: " .. atualPokemon.nome)
    print("Vida restante:" .. atualPokemon.vida)
    print("------------------------------------------")

    if isAmy == false then
        print("[PokeBattle] Esta na sua vez de batalhar!")
        print("[PokeBattle] Selecione um dos ataques abaixo:")

        print("1. " .. atualPokemon.primeiro_ataque .. " - Dano " .. atualPokemon.primeiro_ataque_dano)
        print("2. " .. atualPokemon.segundo_ataque .. " - Dano " .. atualPokemon.segundo_ataque_dano)
        print("3. " .. atualPokemon.terceiro_ataque .. " - Dano " ..atualPokemon.terceiro_ataque_dano)
    else
        print("[PokeBattle] Agora Amy podera te atacar!")
        print("[PokeBattle] Um ataque aleatorio sera usado:")
    end

end

return stringUtils