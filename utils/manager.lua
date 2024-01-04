local manager = {}

function manager:checkBattle(AMY_PREFIXO, playerPokemon, enemyPokemon)
    if playerPokemon.vida <= 0 then
        print("[PokeBattle] Voce perdeu esta batalha!")
        print(AMY_PREFIXO .. "Voce poderia ter me vencido!")
        print(AMY_PREFIXO .. "Calcule mais seus ataques na proxima.")
        return true
    elseif enemyPokemon.vida <= 0 then
        print("[PokeBattle] Voce venceu esta batalha!")
        print(AMY_PREFIXO .. "Parabens, eu devo treinar mais para te superar!")
        print(AMY_PREFIXO .. "Obrigado por me vencer!")
        return true
    end
    return false
end

function manager:getAttackName(pokemon, ataque)
    if ataque == 1 then
        return pokemon.primeiro_ataque
    elseif ataque == 2 then
        return pokemon.segundo_ataque
    elseif ataque == 3 then
        return pokemon.terceiro_ataque
    end
    return ""
end

function manager:getAttackDamage(pokemon, ataque)
    if ataque == 1 then
        return pokemon.primeiro_ataque_dano
    elseif ataque == 2 then
        return pokemon.segundo_ataque_dano
    elseif ataque == 3 then
        return pokemon.terceiro_ataque_dano
    end
    return 10
end

return manager