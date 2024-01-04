local bulbasaur = {
    talk_name = "Bulbasaur...",
    nome = "Bulbasaur",
    vida = 16,
    tipo = "Planta",

    primeiro_ataque = "Chicote Selvagem",
    primeiro_ataque_dano = 7,
    segundo_ataque = "Absorver",
    segundo_ataque_dano = 2,
    terceiro_ataque = "Esporos Venenosos",
    terceiro_ataque_dano = 6
}

function bulbasaur:atacar(playerPokemon, ataque)
    if ataque == 1 then
        playerPokemon.vida = playerPokemon.vida - bulbasaur.primeiro_ataque_dano
    elseif ataque == 2 then
        playerPokemon.vida = playerPokemon.vida - bulbasaur.segundo_ataque_dano
    elseif ataque == 3 then
        playerPokemon.vida = playerPokemon.vida - bulbasaur.terceiro_ataque_dano
    end
end

return bulbasaur