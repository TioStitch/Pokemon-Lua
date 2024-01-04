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
    else
        return false
    end
    return false
end

return manager