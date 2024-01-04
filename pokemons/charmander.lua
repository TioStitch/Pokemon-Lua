local charmander = {
    talk_name = "Char-Charmandeer!",
    nome = "Charmander",
    vida = 17,
    tipo = "Fogo",

    primeiro_ataque = "Rajada de Fogo",
    primeiro_ataque_dano = 8,
    segundo_ataque = "Mordida Flamejante",
    segundo_ataque_dano = 4,
    terceiro_ataque = "Incandescencia",
    terceiro_ataque_dano = 2
}

function charmander:atacar(playerPokemon, ataque)
    if ataque == 1 then
        playerPokemon.vida = playerPokemon.vida - charmander.primeiro_ataque_dano
    elseif ataque == 2 then
          playerPokemon.vida = playerPokemon.vida - charmander.segundo_ataque_dano
    elseif ataque == 3 then
        playerPokemon.vida = playerPokemon.vida - charmander.terceiro_ataque_dano
    end
    return playerPokemon
end

function charmander:getAttackName(ataque)
    if ataque == 1 then
        return charmander.primeiro_ataque
    elseif ataque == 2 then
        return charmander.segundo_ataque
    elseif ataque == 3 then
        return charmander.terceiro_ataque
    end
    return ""
end

function charmander:getAttackDamage(ataque)
    if ataque == 1 then
        return charmander.primeiro_ataque_dano
    elseif ataque == 2 then
        return charmander.segundo_ataque_dano
    elseif ataque == 3 then
        return charmander.terceiro_ataque_dano
    end
    return 10
end

return charmander