local chikorita = {
    talk_name = "Chikorita...",
    nome = "Chikorita",
    vida = 16,
    tipo = "Planta",

    primeiro_ataque = "Chicote Selvagem",
    primeiro_ataque_dano = 7,
    segundo_ataque = "Super Crescimento",
    segundo_ataque_dano = 0,
    terceiro_ataque = "Guarda Folha",
    terceiro_ataque_dano = 0
}

function chikorita:atacar(playerPokemon, ataque)
    if ataque == 1 then
        playerPokemon.vida = playerPokemon.vida - chikorita.primeiro_ataque_dano
    elseif ataque == 2 then
        playerPokemon.vida = playerPokemon.vida - chikorita.segundo_ataque_dano
    elseif ataque == 3 then
        playerPokemon.vida = playerPokemon.vida - chikorita.terceiro_ataque_dano
    end
end

function chikorita:getAttackName(ataque)
    if ataque == 1 then
        return chikorita.primeiro_ataque
    elseif ataque == 2 then
        return chikorita.segundo_ataque
    elseif ataque == 3 then
        return chikorita.terceiro_ataque
    end
    return ""
end

function chikorita:getAttackDamage(ataque)
    if ataque == 1 then
        return chikorita.primeiro_ataque_dano
    elseif ataque == 2 then
        return chikorita.segundo_ataque_dano
    elseif ataque == 3 then
        return chikorita.terceiro_ataque_dano
    end
    return 10
end

return chikorita