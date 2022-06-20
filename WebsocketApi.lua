--> Variables <--

getgenv().websocket = nil;

local Players = game:GetService("Players")
local Player = Players.LocalPlayer


local module = {}

--> Player Functions <--

function module.Player()
   return Player
end

function module.Character()
   return Player.Character
end

function module.ChangePosition(position)
   Player.Character:FindFirstChild"HumanoidRootPart".CFrame = position
end

--> Websocket Functions <--

function module.WConnect(adress)
    getgenv().websocket =  syn.Websocket.connect(adress)
    return getgenv().websocket
end

function module.WSend(msg)
   getgenv().websocket:Send(msg)
end

function module.WListen(func)
   func()
end   

return module 
