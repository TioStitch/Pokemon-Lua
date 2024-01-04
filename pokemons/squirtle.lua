local squirtle = {
    talk_name = "Squirtle Squirtle!!",
    nome = "Squirtle",
    vida = 19,
    tipo = "Agua",

    primeiro_ataque = "Jato de Agua",
    primeiro_ataque_dano = 8,
    segundo_ataque = "Escudo de Agua",
    segundo_ataque_dano = 0,
    terceiro_ataque = "Tornado D'agua",
    terceiro_ataque_dano = 3
}

function squirtle:atacar(playerPokemon, ataque)
    if ataque == 1 then
        playerPokemon.vida = playerPokemon.vida - squirtle.primeiro_ataque_dano
    elseif ataque == 2 then
         playerPokemon.vida = playerPokemon.vida - squirtle.segundo_ataque_dano
    elseif ataque == 3 then
        playerPokemon.vida = playerPokemon.vida - squirtle.terceiro_ataque_dano
    end
end

function squirtle:getAttackName(ataque)
    if ataque == 1 then
        return squirtle.primeiro_ataque
    elseif ataque == 2 then
        return squirtle.segundo_ataque
    elseif ataque == 3 then
        return squirtle.terceiro_ataque
    end
    return ""
end

function squirtle:getAttackDamage(ataque)
    if ataque == 1 then
        return squirtle.primeiro_ataque_dano
    elseif ataque == 2 then
        return squirtle.segundo_ataque_dano
    elseif ataque == 3 then
        return squirtle.terceiro_ataque_dano
    end
    return 10
end

return squirtle