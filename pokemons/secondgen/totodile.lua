local totodile = {
    talk_name = "Totodile...",
    nome = "Totodile",
    vida = 16,
    tipo = "Agua",

    primeiro_ataque = "Diluvio",
    primeiro_ataque_dano = 6,
    segundo_ataque = "Tempestade",
    segundo_ataque_dano = 8,
    terceiro_ataque = "Forca Absoluta",
    terceiro_ataque_dano = 10
}

function totodile:atacar(playerPokemon, ataque)
    if ataque == 1 then
        playerPokemon.vida = playerPokemon.vida - totodile.primeiro_ataque_dano
    elseif ataque == 2 then
        playerPokemon.vida = playerPokemon.vida - totodile.segundo_ataque_dano
    elseif ataque == 3 then
        playerPokemon.vida = playerPokemon.vida - totodile.terceiro_ataque_dano
    end
end

return totodile