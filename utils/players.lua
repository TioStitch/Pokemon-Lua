local players = {
    player = {
        name = "",
        pokemon = nil
    },
    
    enemy = {
        name = "[Amy]",
        pokemon = nil
    }
}



function players:getPlayerName()
    return players.player.name
end

function players:getEnemyName()
    return players.enemy.name
end

function players:getPlayerPokemon()
    return players.player.pokemon
end

function players:getEnemyPokemon()
    return players.enemy.pokemon
end

function players:setPlayerName(playerName)
    players.player.name = playerName
end

function players:setEnemyName(enemyName)
    players.enemy.name = enemyName
end

function players:setPlayerPokemon(pokemonType)
    players.player.pokemon = pokemonType
end

function players:setEnemyPokemon(pokemonType)
    players.enemy.pokemon = pokemonType
end

return players