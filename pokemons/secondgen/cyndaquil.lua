local cyndaquil = {
    talk_name = "Cyndaquil...",
    nome = "Cyndaquil",
    vida = 16,
    tipo = "Fogo",

    primeiro_ataque = "Chama",
    primeiro_ataque_dano = 6,
    segundo_ataque = "Tornado Flamejante",
    segundo_ataque_dano = 8,
    terceiro_ataque = "Fogo Luminoso",
    terceiro_ataque_dano = 10
}

function cyndaquil:atacar(playerPokemon, ataque)
    if ataque == 1 then
        playerPokemon.vida = playerPokemon.vida - cyndaquil.primeiro_ataque_dano
    elseif ataque == 2 then
        playerPokemon.vida = playerPokemon.vida - cyndaquil.segundo_ataque_dano
    elseif ataque == 3 then
        playerPokemon.vida = playerPokemon.vida - cyndaquil.terceiro_ataque_dano
    end
end

function cyndaquil:getAttackName(ataque)
    if ataque == 1 then
        return cyndaquil.primeiro_ataque
    elseif ataque == 2 then
        return cyndaquil.segundo_ataque
    elseif ataque == 3 then
        return cyndaquil.terceiro_ataque
    end
    return ""
end

function cyndaquil:getAttackDamage(ataque)
    if ataque == 1 then
        return cyndaquil.primeiro_ataque_dano
    elseif ataque == 2 then
        return cyndaquil.segundo_ataque_dano
    elseif ataque == 3 then
        return cyndaquil.terceiro_ataque_dano
    end
    return 10
end

return cyndaquil