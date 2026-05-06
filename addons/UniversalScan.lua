local funcs = {}

function funcs.GetLocalPlayer() 
    return game.Players.LocalPlayer
end
function funcs.GetLocalCharacter()
    return game.Players.LocalPlayer.Character
end
function funcs.GetPlayers()
    local tabel = {}
    for i,v in pairs(game.Players:GetPlayers()) do
        table.insert(tabel, v)
    end
    return tabel
end
function funcs.GetCharacters()
    local tabel = {}
    for i,v in pairs(game.Players:GetPlayers()) do
        if v.Character then
        table.insert(tabel, v.Character)
        end
    end
    return tabel
end
function funcs.GetPrimaryPart(s)
    return game.Players[s].Character.PrimaryPart
end
return funcs
