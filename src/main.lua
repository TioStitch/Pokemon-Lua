local gameApi = require("game")

local function startGame()
    print("[Pokemon Lua] Seja bem-vindo ao nosso jogo.")
    print("[Pokemon Lua] Deseja continuar ?")
    print("1. Continuar 2. Recusar")

    local accept = tonumber(io.read())
    if accept == 1 then
        print("[Pokemon Lua] Iniciando jogo...")
        gameApi:load("[TioStitch] ")
    elseif accept == 2 then
        print("[Pokemon Lua] Ate mais!")
    else
        print("[Pokemon Lua] Algo deu errado!")
    end
end


startGame()