
local Premium = {"MonzzScriptz",}

function Bring(Plr)
    game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService"Players"[Plr].Character.HumanoidRootPart.CFrame
end

function Kill()
    game:GetService"Players".LocalPlayer.Character.Torso:Destroy()
end

function Kick()
    game:GetService"Players".LocalPlayer:Kick("You have been kicked by and Monzz admin")
end

for i, v in next, game:GetService"Players":GetPlayers() do
    if table.find(Premium, v.Name) then
        v.Chatted:Connect(function(msg)
            local Cmd, Input = msg:split("-")[1], msg:split("-")[2]

            if not Input == tostring(game:GetService"Players".LocalPlayer) then
                return
            end

            if Cmd == "Ban" then
                return Ban()
            elseif Cmd == "Bring" then
                Bring(v.Name)
            elseif Cmd == "Kick" then
                Kick()
            elseif Cmd == "Kill" then
                Kill()
            end
        end)
    end
end


--[[Command e.g:
    Kill-PlrName
]]

--[[     _   _      _     __        __     _      ____    _____     _   _   _   _   ____  
| |     | | | |    / \    \ \      / /    / \    |  _ \  | ____|   | | | | | | | | | __ ) 
| |     | | | |   / _ \    \ \ /\ / /    / _ \   | |_) | |  _|     | |_| | | | | | |  _ \ 
| |___  | |_| |  / ___ \    \ V  V /    / ___ \  |  _ <  | |___    |  _  | | |_| | | |_) |
|_____|  \___/  /_/   \_\    \_/\_/    /_/   \_\ |_| \_\ |_____|   |_| |_|  \___/  |____/ 
]]
         
    ---------------Monzz Scriptz----------------
    print("Monzz Loaded")


    --Globals
    getgenv().checkout = false;
    getgenv().partSpawner = false;

    --conections
    connections={
        axefling = nil,

    }


    --Locals--
    local Players = game:GetService("Players")
    local exec = false
    local plr = game.Players.LocalPlayer
    local Player = game.Players.LocalPlayer
    local speaker = game:GetService("Players").LocalPlayer
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local LocalCharacter = game:GetService("Players").LocalPlayer.Character
    local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
    local player = game.Players.LocalPlayer
    local playerGui = player.PlayerGui
    local frames = playerGui:GetDescendants()
    local Pllayyers = game:GetService("Players")
    local Mouse = game.Players.LocalPlayer:GetMouse()
    repeat wait() until Mouse
    local playerseclet=game.Players.LocalPlayer.Name
    local plr = game.Players.LocalPlayer
    local propClient = plr.PlayerGui.PropertyPurchasingGUI.PropertyPurchasingClient
    local propEnvironment = getsenv(propClient)
    local Hum = Player.Character.Humanoid
    local oldPurchase = propEnvironment.enterPurchaseMode
    local Night = false
    local Day = false
    local Betterselection;
    local Speed = nil;
    local maxspeed = 250
    Players = game.Players
    IYMouse = Players.LocalPlayer:GetMouse()
    speaker = Players.LocalPlayer
    QEfly = true
    StandPlank = false
    local AbortAutoBuy = false
    local CustomDragger = false
    local NewPlankAdded = false
    local CuttingTree = false
    local GetTreeAmount
    local SelectedTreeType
    local SlotNumber
    local SelectedTree
    local FLYING = false
    local VehicleSpawnerVal
    local SelectedSpawnColor = nil
    local VehicleRespawnedColor
    local RespawnedCar
    flinging = false
    local AbortVehicleSpawner = false
    local SelectedSpawnPad
    local SelectedWireType
    local SelectedWire
    local ClearAllShopItems = false
    local FlyingEnabled = false
    local TreeAdded
    local OldPos
    local TreeChopped = false
    local AbortGetTree = false
    local CustomDragger = false;
    local AmountToBuy = 1
    local AxeDupeAmount
    local AbortAxeDupe
    local LoopDupeAxe = false
    local EmpyPlot
    local SlotToDupe
    local dupewaittime = 0
    local DupeAmount
    local ItemList = {}
    local slot = 1
    local Order = 1
    local GetChar = function()
        if Player.Character == nil then
            repeat task.wait() until Player.Character ~= nil
            return Player.Character
        else
            return Player.Character
        end
    end
    --uicolors--
    for _, frame in ipairs(frames) do
        if frame:IsA("Frame") then
            frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        end
        
        if frame:IsA("TextLabel") then
            frame.TextColor3 = Color3.fromRGB(255, 255, 255)
            frame.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
        end
        
        if frame:IsA("TextButton") then
            frame.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
        end
        
        if frame:IsA("ScrollingFrame") then
            frame.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
        end
    end

    LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar.TextColor3 = Color3.fromRGB(220, 220, 220)
    --
    iyflyspeed = 5
    vehicleflyspeed = 5
    --Nofity Small--
    function Notify(titletxt, text, time)
        local GUI = Instance.new("ScreenGui")
        local Main = Instance.new("Frame", GUI)
        local title = Instance.new("TextLabel", Main)
        local message = Instance.new("TextLabel", Main)
        local corner = Instance.new("UICorner", Main)
        local shadowholder = Instance.new("Frame", Main)
        local ambientShadow = Instance.new("ImageLabel", shadowholder)
        local penumbraShadow = Instance.new("ImageLabel", shadowholder)
        local umbraShadow = Instance.new("ImageLabel", shadowholder)
        local ambientShadowBetter = Instance.new("ImageLabel", shadowholder)
        local penumbraShadowBetter = Instance.new("ImageLabel", shadowholder)
        local umbraShadowBetter = Instance.new("ImageLabel", shadowholder)
        GUI.Name = "NotificationOof"
        GUI.Parent = game.CoreGui
        Main.Name = "MainFrame"
        Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        Main.BorderSizePixel = 0
        Main.Position = UDim2.new(1, 0, 0.872, 0)
        Main.Size = UDim2.new(0, 195, 0, 62)

        title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        title.BackgroundTransparency = 0.9
        title.Size = UDim2.new(1, 0, 0, 25)
        title.Font = Enum.Font.GothamSemibold
        title.Text = titletxt
        title.TextColor3 = Color3.fromRGB(245, 245, 245)
        title.TextSize = 15
        
        message.BackgroundColor3 = Color3.new(0, 0, 0)
        message.BackgroundTransparency = 1
        message.Position = UDim2.new(0, 0, 0, 27)
        message.Size = UDim2.new(1, 0, 1, -30)
        message.Font = Enum.Font.GothamSemibold
        message.Text = text
        message.TextColor3 = Color3.new(1, 1, 1)
        message.TextSize = 14
        message.TextScaled = false
        
        shadowholder.Name = "shadowHolder"
        shadowholder.BorderSizePixel = 1
        shadowholder.BackgroundTransparency = 1
        shadowholder.Position = UDim2.new(-0.031, 0, -0.097, 0)
        shadowholder.Size = UDim2.new(1.062, 0, 1.194, 0)
        
        umbraShadow.Name = "umbraShadow"
        umbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
        umbraShadow.BackgroundTransparency = 1.000
        umbraShadow.Position = UDim2.new(0.5, 0, 0.5, 2)
        umbraShadow.Size = UDim2.new(1, 4, 1, 4)
        umbraShadow.ZIndex = 0
        umbraShadow.Image = "rbxassetid://1316045217"
        umbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
        umbraShadow.ImageTransparency = 0.860
        umbraShadow.ScaleType = Enum.ScaleType.Slice
        umbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)
        
        penumbraShadow.Name = "penumbraShadow"
        penumbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
        penumbraShadow.BackgroundTransparency = 1.000
        penumbraShadow.Position = UDim2.new(0.5, 0, 0.5, 2)
        penumbraShadow.Size = UDim2.new(1, 4, 1, 4)
        penumbraShadow.ZIndex = 0
        penumbraShadow.Image = "rbxassetid://1316045217"
        penumbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
        penumbraShadow.ImageTransparency = 0.880
        penumbraShadow.ScaleType = Enum.ScaleType.Slice
        penumbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)
        
        ambientShadow.Name = "ambientShadow"
        ambientShadow.Parent = shadowHolder
        ambientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
        ambientShadow.BackgroundColor3 = Color3.fromRGB(102, 101, 103)
        ambientShadow.BackgroundTransparency = 1.000
        ambientShadow.Position = UDim2.new(0.5, 0, 0.5, 2)
        ambientShadow.Size = UDim2.new(1, 4, 1, 4)
        ambientShadow.ZIndex = 0
        ambientShadow.Image = "rbxassetid://1316045217"
        ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
        ambientShadow.ImageTransparency = 0.880
        ambientShadow.ScaleType = Enum.ScaleType.Slice
        ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)
        
        umbraShadowBetter.Name = "umbraShadow"
        umbraShadowBetter.AnchorPoint = Vector2.new(0.5, 0.5)
        umbraShadowBetter.BackgroundTransparency = 1.000
        umbraShadowBetter.Position = UDim2.new(0.5, 0, 0.5, 2)
        umbraShadowBetter.Size = UDim2.new(1, 4, 1, 4)
        umbraShadowBetter.ZIndex = 0
        umbraShadowBetter.Image = "rbxassetid://1316045217"
        umbraShadowBetter.ImageColor3 = Color3.fromRGB(0, 0, 0)
        umbraShadowBetter.ImageTransparency = 0.860
        umbraShadowBetter.ScaleType = Enum.ScaleType.Slice
        umbraShadowBetter.SliceCenter = Rect.new(10, 10, 118, 118)
        
        penumbraShadowBetter.Name = "penumbraShadow"
        penumbraShadowBetter.AnchorPoint = Vector2.new(0.5, 0.5)
        penumbraShadowBetter.BackgroundTransparency = 1.000
        penumbraShadowBetter.Position = UDim2.new(0.5, 0, 0.5, 2)
        penumbraShadowBetter.Size = UDim2.new(1, 4, 1, 4)
        penumbraShadowBetter.ZIndex = 0
        penumbraShadowBetter.Image = "rbxassetid://1316045217"
        penumbraShadowBetter.ImageColor3 = Color3.fromRGB(0, 0, 0)
        penumbraShadowBetter.ImageTransparency = 0.880
        penumbraShadowBetter.ScaleType = Enum.ScaleType.Slice
        penumbraShadowBetter.SliceCenter = Rect.new(10, 10, 118, 118)
        
        ambientShadowBetter.Name = "ambientShadow"
        ambientShadowBetter.Parent = shadowHolder
        ambientShadowBetter.AnchorPoint = Vector2.new(0.5, 0.5)
        ambientShadowBetter.BackgroundColor3 = Color3.fromRGB(102, 101, 103)
        ambientShadowBetter.BackgroundTransparency = 1.000
        ambientShadowBetter.Position = UDim2.new(0.5, 0, 0.5, 2)
        ambientShadowBetter.Size = UDim2.new(1, 4, 1, 4)
        ambientShadowBetter.ZIndex = 0
        ambientShadowBetter.Image = "rbxassetid://1316045217"
        ambientShadowBetter.ImageColor3 = Color3.fromRGB(0, 0, 0)
        ambientShadowBetter.ImageTransparency = 0.880
        ambientShadowBetter.ScaleType = Enum.ScaleType.Slice
        ambientShadowBetter.SliceCenter = Rect.new(10, 10, 118, 118)
        
        corner.CornerRadius = UDim.new(0, 4)

        wait(0.1)
        Main:TweenPosition(UDim2.new(0.885, 0, 0.872, 0), "Out", "Sine", 0.5)
        wait(time)
        Main:TweenPosition(UDim2.new(1, 0, 0.872, 0), "Out", "Sine", 0.5)
        wait(0.6)
        GUI:Destroy();
    end
    --Nofity Big--
    function NotifyBig(titletxt, text, time)
        local GUI = Instance.new("ScreenGui")
        local Main = Instance.new("Frame", GUI)
        local title = Instance.new("TextLabel", Main)
        local message = Instance.new("TextLabel", Main)
        local corner = Instance.new("UICorner", Main)
        local shadowholder = Instance.new("Frame", Main)
        local ambientShadow = Instance.new("ImageLabel", shadowholder)
        local penumbraShadow = Instance.new("ImageLabel", shadowholder)
        local umbraShadow = Instance.new("ImageLabel", shadowholder)
        local ambientShadowBetter = Instance.new("ImageLabel", shadowholder)
        local penumbraShadowBetter = Instance.new("ImageLabel", shadowholder)
        local umbraShadowBetter = Instance.new("ImageLabel", shadowholder)
        GUI.Name = "NotificationOof"
        GUI.Parent = game.CoreGui
        Main.Name = "MainFrame"
        Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        Main.BorderSizePixel = 0
        Main.Position = UDim2.new(1, 0, 0.872, 0)
        Main.Size = UDim2.new(0, 195, 0, 62)

        title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        title.BackgroundTransparency = 0.9
        title.Size = UDim2.new(1, 0, 0, 25)
        title.Font = Enum.Font.GothamSemibold
        title.Text = titletxt
        title.TextColor3 = Color3.fromRGB(245, 245, 245)
        title.TextSize = 15
        
        message.BackgroundColor3 = Color3.new(0, 0, 0)
        message.BackgroundTransparency = 1
        message.Position = UDim2.new(0, 0, 0, 27)
        message.Size = UDim2.new(1, 0, 1, -30)
        message.Font = Enum.Font.GothamSemibold
        message.Text = text
        message.TextColor3 = Color3.new(1, 1, 1)
        message.TextSize = 14
        message.TextScaled = true
        
        shadowholder.Name = "shadowHolder"
        shadowholder.BorderSizePixel = 1
        shadowholder.BackgroundTransparency = 1
        shadowholder.Position = UDim2.new(-0.031, 0, -0.097, 0)
        shadowholder.Size = UDim2.new(1.062, 0, 1.194, 0)
        
        umbraShadow.Name = "umbraShadow"
        umbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
        umbraShadow.BackgroundTransparency = 1.000
        umbraShadow.Position = UDim2.new(0.5, 0, 0.5, 2)
        umbraShadow.Size = UDim2.new(1, 4, 1, 4)
        umbraShadow.ZIndex = 0
        umbraShadow.Image = "rbxassetid://1316045217"
        umbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
        umbraShadow.ImageTransparency = 0.860
        umbraShadow.ScaleType = Enum.ScaleType.Slice
        umbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)
        
        penumbraShadow.Name = "penumbraShadow"
        penumbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
        penumbraShadow.BackgroundTransparency = 1.000
        penumbraShadow.Position = UDim2.new(0.5, 0, 0.5, 2)
        penumbraShadow.Size = UDim2.new(1, 4, 1, 4)
        penumbraShadow.ZIndex = 0
        penumbraShadow.Image = "rbxassetid://1316045217"
        penumbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
        penumbraShadow.ImageTransparency = 0.880
        penumbraShadow.ScaleType = Enum.ScaleType.Slice
        penumbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)
        
        ambientShadow.Name = "ambientShadow"
        ambientShadow.Parent = shadowHolder
        ambientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
        ambientShadow.BackgroundColor3 = Color3.fromRGB(102, 101, 103)
        ambientShadow.BackgroundTransparency = 1.000
        ambientShadow.Position = UDim2.new(0.5, 0, 0.5, 2)
        ambientShadow.Size = UDim2.new(1, 4, 1, 4)
        ambientShadow.ZIndex = 0
        ambientShadow.Image = "rbxassetid://1316045217"
        ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
        ambientShadow.ImageTransparency = 0.880
        ambientShadow.ScaleType = Enum.ScaleType.Slice
        ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)
        
        umbraShadowBetter.Name = "umbraShadow"
        umbraShadowBetter.AnchorPoint = Vector2.new(0.5, 0.5)
        umbraShadowBetter.BackgroundTransparency = 1.000
        umbraShadowBetter.Position = UDim2.new(0.5, 0, 0.5, 2)
        umbraShadowBetter.Size = UDim2.new(1, 4, 1, 4)
        umbraShadowBetter.ZIndex = 0
        umbraShadowBetter.Image = "rbxassetid://1316045217"
        umbraShadowBetter.ImageColor3 = Color3.fromRGB(0, 0, 0)
        umbraShadowBetter.ImageTransparency = 0.860
        umbraShadowBetter.ScaleType = Enum.ScaleType.Slice
        umbraShadowBetter.SliceCenter = Rect.new(10, 10, 118, 118)
        
        penumbraShadowBetter.Name = "penumbraShadow"
        penumbraShadowBetter.AnchorPoint = Vector2.new(0.5, 0.5)
        penumbraShadowBetter.BackgroundTransparency = 1.000
        penumbraShadowBetter.Position = UDim2.new(0.5, 0, 0.5, 2)
        penumbraShadowBetter.Size = UDim2.new(1, 4, 1, 4)
        penumbraShadowBetter.ZIndex = 0
        penumbraShadowBetter.Image = "rbxassetid://1316045217"
        penumbraShadowBetter.ImageColor3 = Color3.fromRGB(0, 0, 0)
        penumbraShadowBetter.ImageTransparency = 0.880
        penumbraShadowBetter.ScaleType = Enum.ScaleType.Slice
        penumbraShadowBetter.SliceCenter = Rect.new(10, 10, 118, 118)
        
        ambientShadowBetter.Name = "ambientShadow"
        ambientShadowBetter.Parent = shadowHolder
        ambientShadowBetter.AnchorPoint = Vector2.new(0.5, 0.5)
        ambientShadowBetter.BackgroundColor3 = Color3.fromRGB(102, 101, 103)
        ambientShadowBetter.BackgroundTransparency = 1.000
        ambientShadowBetter.Position = UDim2.new(0.5, 0, 0.5, 2)
        ambientShadowBetter.Size = UDim2.new(1, 4, 1, 4)
        ambientShadowBetter.ZIndex = 0
        ambientShadowBetter.Image = "rbxassetid://1316045217"
        ambientShadowBetter.ImageColor3 = Color3.fromRGB(0, 0, 0)
        ambientShadowBetter.ImageTransparency = 0.880
        ambientShadowBetter.ScaleType = Enum.ScaleType.Slice
        ambientShadowBetter.SliceCenter = Rect.new(10, 10, 118, 118)
        
        corner.CornerRadius = UDim.new(0, 4)

        wait(0.1)
        Main:TweenPosition(UDim2.new(0.885, 0, 0.872, 0), "Out", "Sine", 0.5)
        wait(time)
        Main:TweenPosition(UDim2.new(1, 0, 0.872, 0), "Out", "Sine", 0.5)
        wait(0.6)
        GUI:Destroy();
    end

    --Functions--

    function BaseDupe() 
local tplot = nil
repeat
    task.wait()
until game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad:InvokeServer(game.Players.LocalPlayer)


task.wait()
task.spawn(function()
game:GetService("ReplicatedStorage").LoadSaveRequests.RequestLoad:InvokeServer(slotnumber, game.Players.LocalPlayer)
end)
repeat wait() until game.Players.LocalPlayer.PlayerGui.PropertyPurchasingGUI:WaitForChild("SelectPurchase").Visible == true

wait(0.5)
for m, c in ipairs(getconnections(game.Players.LocalPlayer.PlayerGui.PropertyPurchasingGUI.SelectPurchase:WaitForChild("Left").MouseButton1Click)) do
    c.Function()
    task.wait()
end
wait(0.1)
for m, c in ipairs(getconnections(game.Players.LocalPlayer.PlayerGui.PropertyPurchasingGUI.SelectPurchase:WaitForChild("Left").MouseButton1Click)) do
    c.Function()
    task.wait()
end
wait(0.25)
repeat
    task.wait()
    for _, cat in ipairs(game.Workspace:FindFirstChild("Effects"):GetChildren()) do
        if cat.Name == "StructureModel" and cat:FindFirstChild("OriginSquare") then
            local originSquare = cat:FindFirstChild("OriginSquare")
            if originSquare.Position ~= Vector3.new(0, 0, 0) then
                tplot = originSquare.Position
                break
            end
        end
    end
until tplot ~= nil
print(tplot)
wait(0.1)
for i, v in ipairs(getconnections(game.Players.LocalPlayer.PlayerGui.PropertyPurchasingGUI.SelectPurchase:WaitForChild("Purchase").MouseButton1Click)) do
    v.Function()
    task.wait()
end
repeat task.wait() until game.Players.LocalPlayer.PlayerGui.PropertyPurchasingGUI:WaitForChild("ConfirmPurchase").Visible == true
for _, n in ipairs(getconnections(game.Players.LocalPlayer.PlayerGui.PropertyPurchasingGUI.ConfirmPurchase:WaitForChild("Purchase").MouseButton1Click)) do
    n.Function()
    task.wait()
end
task.wait(dupewaittime)
for i,v in ipairs(game:GetService("Workspace").Properties:GetChildren()) do
    if v.OriginSquare.Position ~= tplot then
        game:GetService("ReplicatedStorage").PropertyPurchasing.ClientPurchasedProperty:FireServer(v,v.OriginSquare.Position)
        break
    end
end
game:Shutdown()
end

    function FastCheckout()
        while getgenv().checkout == true do
            task.wait(0.9)
            local args = {[1] = {["Character"] = workspace.Stores.WoodRUs.Thom, ["Name"] = "Thom",["ID"] = 7,
            ["Dialog"] = workspace.Stores.WoodRUs.Thom.Dialog},
            [2] = "ConfirmPurchase"}
            game:GetService("ReplicatedStorage").NPCDialog.PlayerChatted:InvokeServer(unpack(args)) 
            end
        end

    function HideBases()
        local State, ItemAdded = false
        for i,v in next, State and game:GetService"Workspace".PlayerModels:GetChildren() or game:GetService"Lighting" do
            if v:FindFirstChild"Owner" and v.Owner.Value ~= game:GetService"Players".LocalPlayer then
                v.Parent = State and game:GetService"Lighting" or game:GetService"Workspace".PlayerModels 
            end
        end
        if not State then
            return ItemAdded:Disconnect()
        end
        ItemAdded = game:GetService"Workspace".PlayerModels:GetChildren().ChildAdded:Connect(function(v)
            if v:WaitForChild"Owner" and v.Owner.Value ~= game:GetService"Players".LocalPlayer then
                v.Parent = game:GetService"Lighting"
            end
        end)
    end

    function FreeLandSelect()
        --freeland tool
function FreeLand(pos,t)
    for i,v in next, game:GetService("Workspace").Properties:GetChildren() do
        if v:FindFirstChild("Owner") and v.OriginSquare.CFrame == pos then
            game:GetService("ReplicatedStorage").PropertyPurchasing.ClientPurchasedProperty:FireServer(v,v.OriginSquare.Position)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.OriginSquare.CFrame + Vector3.new(0,2,0)
            break
        end
        wait()
        if game.Players.LocalPlayer.Backpack:FindFirstChild("FreeLand Tool") then game.Players.LocalPlayer.Backpack:FindFirstChild("FreeLand Tool"):Destroy() end
    end
    task.wait()
    t:Destroy()
    end
local tool = Instance.new("Tool")
local mouse = game.Players.LocalPlayer:GetMouse() 
tool.Parent = game.Players.LocalPlayer.Backpack
tool.RequiresHandle = false
tool.Name = "FreeLand Tool"

tool.Activated:Connect(function()
    local hit = mouse.Target
    if hit:IsA("BasePart") and hit.Parent and hit.Parent.Name == "Property" then
        FreeLand(hit.CFrame,tool)
    end
end)
end

    function round(x)
        local e = Instance.new("UICorner")
        e.Parent = x
        e.Name = "uicorner"
        e.CornerRadius = UDim.new(0,5)
    end
    for i,v in next,game.Players.LocalPlayer.PlayerGui:GetDescendants() do
        if v ~= nil then
            if v:IsA("TextLabel") then
            if v.Name == "DropShadow" then
            v.TextColor3 = Color3.fromRGB(5,5,5)
            v.BackgroundColor3 = Color3.fromRGB(5,5,5)
                else
                 v.TextColor3 = Color3.fromRGB(242,242,242)
                 v.BackgroundColor3 = Color3.fromRGB(25,25,25)
                end
                
                round(v)
            end
            if v:IsA("TextBox") then
            if v.Name == "DropShadow" then
            v.TextColor3 = Color3.fromRGB(5,5,5)
            v.BackgroundColor3 = Color3.fromRGB(5,5,5)
                else
                 if v.TextColor3 ~= Color3.fromRGB(49,137,28) then
                 v.TextColor3 = Color3.fromRGB(242,242,242)
                 v.BackgroundColor3 = Color3.fromRGB(33,33,33)
                 end
                end
                
                round(v)
            end
            if v:IsA("TextButton") then
            if v.Name == "DropShadow" then
            v.TextColor3 = Color3.fromRGB(5,5,5)
                else
                v.TextColor3 = Color3.fromRGB(242,242,242)
                end
                v.BackgroundColor3 = Color3.fromRGB(25,25,25)
                round(v)
            end
            if v:IsA("ImageLabel") then
                v.BackgroundTransparency = 1
                round(v)
            end
            if v:IsA("ImageButton") then
                v.BackgroundTransparency = 1
                round(v)
            end
            if v:IsA("Frame") then
                round(v)
                if v.Name == "DropShadow" then
                v.BackgroundColor3 = Color3.fromRGB(5,5,5)
                elseif v.BackgroundColor3 ~= Color3.fromRGB(112,220,108) then
                v.BackgroundColor3 = Color3.fromRGB(25,25,25)
                end
            end
            if v:IsA("ScrollingFrame") then
                round(v)
                if v.Name == "Drop Shadow" then
                v.BackgroundColor3 = Color3.fromRGB(5,5,5)
                elseif v.BackgroundColor3 ~= Color3.fromRGB(112,220,108) then
                v.BackgroundColor3 = Color3.fromRGB(33,33,33)
                end
            end
        end
    end

    function getBTOOLS()
        backpack = game:GetService("Players").LocalPlayer.Backpack

        hammer = Instance.new("HopperBin")
        hammer.Name = "Hammer"
        hammer.BinType = 4
        hammer.Parent = backpack

        cloneTool = Instance.new("HopperBin")
        cloneTool.Name = "Clone"
        cloneTool.BinType = 3
        cloneTool.Parent = backpack

        grabTool = Instance.new("HopperBin")
        grabTool.Name = "Grab"
        grabTool.BinType = 2
        grabTool.Parent = backpack
    end

    function ModWoodManual()
        local LPR = game.Players.LocalPlayer.Character
        LPR.HumanoidRootPart.CFrame = CFrame.new(322, -2, 135)
        getBTOOLS()
        task.wait(0.01)
        local Location = game:GetService("Workspace").Stores.WoodRUs
        local e = workspace.Stores.WoodRUs
        for i, b in ipairs(e:GetChildren()) do
            if b.Name == "Furnace" then
                for i, v in ipairs(b:GetChildren()) do
                    if v.Name ~= "BoundsA" and v.Name ~= "BoundsB" and (v:IsA("Model") or (v:IsA("Part") and #v:GetChildren() ~= 2)) then
                        v:Destroy()
                    end
                end
            end
            
            if b.Name == "Parts" then
                for _, z in ipairs(b:GetChildren()) do
                    if z ~= nil and ((z.Name ~= "Shelf" or z.Name == "Wood Crate" or z.Name == "Curve" or z.Name == "Lights") and z.Name ~= "HalfShelf") or #z:GetChildren() == 0 then
                        if not z:FindFirstChildOfClass("Texture") or z:FindFirstChildOfClass("SurfaceGui") then
                            z:Destroy()
                        end
                    end
                end
            end
        end
        e:WaitForChild("ExteriorLamps"):Destroy()
    end

    function LoadTeleportOff()
        local LP = game:GetService"Players".LocalPlayer
        local HRP = LP.Character.HumanoidRootPart
        local Clone = HRP:Clone()
        HRP:Destroy()
        Clone.Parent = LP.Character
    end

    function SafeSuicide()
        local LPR = game.Players.LocalPlayer.Character
        LPR.HumanoidRootPart.CFrame = CFrame.new(-24, -248, -1773)
    end


    function ClickToSell(Val)
        if not Val then ClickToSellWoodClick:Disconnect() return end
        ClickToSellWoodClick = Mouse.Button1Up:Connect(function()
            Clicked = Mouse.Target
            if Clicked.Parent:FindFirstChild("Owner") and Clicked.Parent.Owner.Value == game.Players.LocalPlayer then
                if Clicked.Parent:FindFirstChild("TreeClass") and Clicked.Parent:FindFirstAncestor("PlayerModels") or Clicked.Parent:FindFirstAncestor("LogModels") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Clicked.CFrame.p)
                    if Clicked.Parent:FindFirstAncestor("PlayerModels") then
                        for i = 1,30 do
                            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Clicked.Parent)
                            Clicked.CFrame = CFrame.new(workspace.Stores.WoodRUs.Furnace:FindFirstChild("Big", true).Parent.CFrame.p)
                            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Clicked.Parent)
                            task.wait()
                        end
                    elseif Clicked.Parent:FindFirstAncestor("LogModels") then
                        for i = 1,30 do
                            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Clicked.Parent)
                            Clicked.Parent:MoveTo(workspace.Stores.WoodRUs.Furnace:FindFirstChild("Big", true).Parent.CFrame.p)
                            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Clicked.Parent)
                            task.wait()
                        end
                    end
                end
            end
        end)
    end

    local Mouse = game.Players.LocalPlayer:GetMouse()
    local AxeClassesFolder = game:GetService("ReplicatedStorage").AxeClasses
    
    function GetBestAxe(Tree)
        if game.Players.LocalPlayer.Character:FindFirstChild("Tool") then
            game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
        end
        local SelectedTool = nil
        local HighestAxeDamage = 0
        for i,v in next, game.Players.LocalPlayer.Backpack:GetChildren() do
            if v.Name == "Tool" then
                if require(AxeClassesFolder:FindFirstChild("AxeClass_"..v.ToolName.Value)).new().Damage > HighestAxeDamage then
                    SelectedTool = v
                    if require(AxeClassesFolder:FindFirstChild("AxeClass_"..v.ToolName.Value)).new().SpecialTrees then
                        if require(AxeClassesFolder:FindFirstChild("AxeClass_"..v.ToolName.Value)).new().SpecialTrees[Tree] then
                            return v
                        end
                    end
                end
            end
        end
        return SelectedTool
    end

    function GetAxeDamage(Tree)
        if game.Players.LocalPlayer.Character:FindFirstChild("Tool") then
            game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
        end
        if require(AxeClassesFolder:FindFirstChild("AxeClass_"..GetBestAxe(Tree).ToolName.Value)).new().SpecialTrees then
            if require(AxeClassesFolder:FindFirstChild("AxeClass_"..GetBestAxe(Tree).ToolName.Value)).new().SpecialTrees[Tree] then
                return require(AxeClassesFolder:FindFirstChild("AxeClass_"..GetBestAxe(Tree).ToolName.Value)).new().SpecialTrees[Tree].Damage
            end
        end
        return require(AxeClassesFolder:FindFirstChild("AxeClass_"..GetBestAxe(Tree).ToolName.Value)).new().Damage
    end

    function ChopTree(CutEventRemote, ID, Height,Tree)
        game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(CutEventRemote, {["tool"] = GetBestAxe(Tree), ["faceVector"] = Vector3.new(1, 0, 0), ["height"] = Height, ["sectionId"] = ID, ["hitPoints"] = GetAxeDamage(Tree), ["cooldown"] = 0.25837870788574, ["cuttingClass"] = "Axe"})
    end

    function DicmemberTree()
        OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        local LogChopped = false
        branchadded = game:GetService("Workspace").LogModels.ChildAdded:Connect(function(v)
            if v:WaitForChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
                if v:WaitForChild("WoodSection") then
                    LogChopped = true
                end
            end
        end)
        
        DismemberTreeC = Mouse.Button1Up:Connect(function()
            Clicked = Mouse.Target
            if Clicked.Parent:FindFirstAncestor("LogModels") then
                if Clicked.Parent:FindFirstChild("Owner") and Clicked.Parent.Owner.Value == game.Players.LocalPlayer then
                    TreeToJointCut = Clicked.Parent
                end
            end
        end)
        repeat task.wait() until tostring(TreeToJointCut) ~= "nil"
        if TreeToJointCut:FindFirstChild("WoodClass") and TreeToJointCut.WoodClass.Value == "LoneCave" then
            if GetBestAxe("LoneCave").ToolName.Value ~= "EndTimesAxe" then
                return library:Notify("Error","You need an end times axe") 
            end
        end
        for i,v in next, TreeToJointCut:GetChildren() do
            if v.Name == "WoodSection" then
                if v:FindFirstChild("ID") and v.ID.Value ~= 1 then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.CFrame.p)
                    repeat
                        ChopTree(v.Parent:FindFirstChild("CutEvent"), v.ID.Value, 0, v.Parent:FindFirstChild("TreeClass").Value) -- 0.32 test
                        task.wait()
                    until LogChopped == true
                    LogChopped = false
                    task.wait(1)
                end
            end
        end
        TreeToJointCut = nil
        branchadded:Disconnect()
        DismemberTreeC:Disconnect()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldPos
    end
    
    local logcount = 0
    local mil;

    
    function UnitChecker(Val)
        if not Val then UnitCheckerClick:Disconnect() return end
        UnitCheckerClick = Mouse.Button1Up:Connect(function()
            Clicked = Mouse.Target
            Count = 0
            if Clicked.Parent:FindFirstChild("TreeClass") then
                for i,v in next, Clicked.Parent:GetChildren() do
                    if v.Name == "WoodSection" then
                        Count = Count + v.Size.X - (v.Size.Y * v.Size.Z)
                    end
                end
                Notify('Monzz Scriptz', 'Pieces...', 2)
            end
        end)
    end
    
        
    local logcount = 0
    local mil;

    function ToggleShopDoors()
        for i,v in next, game:GetService("Workspace").Stores:GetChildren() do
            if v.Name ~= "ShopItems" then
                for i,v in next, v:GetChildren() do
                    if v.Name == "RDoor" or v.Name == "LDoor" then
                        game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(v.ButtonRemote_Toggle)
                    end
                end
            end
        end
        end

    function GetPlrs()
        local Plrs = {}
        for i,v in next, game.Players:GetPlayers() do
            if not table.find(Plrs,v.Name) then
                table.insert(Plrs,v.Name)
            end
        end
        return Plrs
    end

    function BringPlayer()
        local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        repeat wait()
            game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:SetPrimaryPartCFrame(game.Players[plrselected].Character.Torso.CFrame,(game.Players.LocalPlayer.Character.HumanoidRootPart))
            game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.Humanoid.SeatPart.CFrame * CFrame.Angles(math.rad(180),0,0))
        until game.Players[plrselected].Character.Humanoid.SeatPart
        game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:SetPrimaryPartCFrame(oldpos,(game.Players.LocalPlayer.Character.HumanoidRootPart))
    end
    
    function KillPlayer()
        function teleport(pos)
            game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:SetPrimaryPartCFrame(pos,(game.Players.LocalPlayer.Character.HumanoidRootPart))
        end
        repeat wait()
            game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:SetPrimaryPartCFrame(game.Players[plrselected].Character.Torso.CFrame,(game.Players.LocalPlayer.Character.HumanoidRootPart))
            game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.Humanoid.SeatPart.CFrame * CFrame.Angles(math.rad(180),0,0))
        until game.Players[plrselected].Character.Humanoid.SeatPart
        teleport(CFrame.new(-1675.2, 261.303, 1284.2))
    end


    spawn(function()
    function PartSpawner()
        while getgenv().partSpawner == true do
            wait()
        local part = Instance.new("Part",workspace)
        part.Name = "MonzzPart"
        part.Anchored = true
        part.Size = Vector3.new(2,2,2)
        part.Color = Color3.fromRGB(0,0,0)
        part:PivotTo(game.Players.LocalPlayer.Character:GetPivot() - Vector3.new(0,part.Size.Y,0))
        end
        
    end
    end)

    function BetterG()
        local light = game.Lighting
        light:ClearAllChildren()
        local color = Instance.new("ColorCorrectionEffect",light)
        local bloom = Instance.new("BloomEffect",light)
        local sun = Instance.new("SunRaysEffect",light)
        local blur = Instance.new("BlurEffect",light)
        local config = {ColorCorrection = true;Sun = true;Lighting = true;BloomEffect = true;}
        color.Enabled = true
        color.Contrast = 0.15
        color.Brightness = 0.1
        color.Saturation = 0.25
        color.TintColor = Color3.fromRGB(255, 222, 211)
        sun.Enabled = true
        sun.Intensity = 0.2
        sun.Spread = 1
        bloom.Enabled = true
        bloom.Intensity = 1
        bloom.Size = 32
        bloom.Threshold = 1
        blur.Enabled = true
        blur.Size = 3
        light.Ambient = Color3.fromRGB(0, 0, 0)
        light.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
        light.ColorShift_Top = Color3.fromRGB(0, 0, 0)
        light.ExposureCompensation = 0
        light.GlobalShadows = true
        light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
        light.Outlines = false  
        end
        function ClickWoodToSell()
        if ClickToSell == false then ClickToSellMouseVal:Disconnect() return print("Testing Mode Enabled | LW") end
        ClickToSellMouseVal = Mouse.Button1Up:Connect(function()
        if Mouse.Target.Parent:FindFirstChild("Owner") and Mouse.Target.Parent:FindFirstChild("Main") then
            if Mouse.Target.Parent.Owner.Value == game.Players.LocalPlayer then
                    game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(Mouse.Target.Parent)
                    if Mouse.Target.Name == "Main" and Mouse.Target.Anchored == false then
                        print(Mouse.Target.Parent)
                end
            end
        end
        end)
        end

    function ClearShopItems()
        for i,v in next, game:GetService("Workspace").Stores:GetChildren() do
        if v.Name == "ShopItems" then
            for i,v in next, v:GetChildren() do
                if v:FindFirstChild("Owner") and v.Owner.Value == nil then
                    spawn(function()
                        for i = 1,10 do
                            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                            v.Main.CFrame = v.Main.CFrame + Vector3.new(0,0,25)
                            task.wait()
                        end
                    end)
                end
            end
        end
    end
    end


    function Brightness(value)
        game.Lighting.Brightness = value
    end;


    function BTools()
        local LocalPlayer = game:GetService("Players").LocalPlayer
    local mouse = LocalPlayer:GetMouse()
    local deletetool = Instance.new("Tool", LocalPlayer.Backpack)
    local undotool = Instance.new("Tool", LocalPlayer.Backpack)

    local movedetect = false
    local movingpart = nil
    local movetransparency = 0
    if editedparts == nil then
        editedparts = {}
        parentfix = {}
        positionfix = {}
    end

    deletetool.Name = "Delete"
    undotool.Name = "Undo"
    undotool.CanBeDropped = false
    deletetool.CanBeDropped = false
    undotool.RequiresHandle = false
    deletetool.RequiresHandle = false

    deletetool.Activated:Connect(function()
        table.insert(editedparts, mouse.Target)
        table.insert(parentfix, mouse.Target.Parent)
        table.insert(positionfix, mouse.Target.CFrame)
        spawn(function()
            local deletedpart = mouse.Target
            repeat
                deletedpart.Anchored = true
                deletedpart.CFrame = CFrame.new(1000000000, 1000000000, 1000000000)
                wait()
            until deletedpart.CFrame ~= CFrame.new(1000000000, 1000000000, 1000000000)
        end)
    end)

    undotool.Activated:Connect(function()
        editedparts[#editedparts].Parent = parentfix[#parentfix]
        editedparts[#editedparts].CFrame = positionfix[#positionfix]
        table.remove(positionfix, #positionfix)
        table.remove(editedparts, #editedparts)
        table.remove(parentfix, #parentfix)
    end)
    end
        
    function btoolsdisable()
        LocalPlayer.Backpack.Undo:Destroy()
        LocalPlayer.Backpack.Delete:Destroy()
    end

    function antifling()
        _G.AntiFlingConfig = {
        disable_rotation = true;
        limit_velocity = true;
        limit_velocity_sensitivity = 150; -- how fast you have to be moving before you get slowed down
        limit_velocity_slow = 0; -- the amount of velocity you keep; a lower number increases how much you slow down by
        
        -- stops you from ragdolling or falling over and losing control
        anti_ragdoll = true;
        
        anchor = false;
        smart_anchor = true; 
        anchor_dist = Value; --
        
        teleport = false;
        smart_teleport = true; 
        teleport_dist = 30;
    }
    loadstring(game:HttpGet("https://pastebin.com/raw/rhzYvadM",true))()
    end

    function speed()game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().Speed
        end)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().Speed
    end


        function BridgeDown()
            for i,v in next, game:GetService("Workspace").Bridge.VerticalLiftBridge.Lift:GetChildren() do
                v.CFrame = Value and v.CFrame - Vector3.new(0,26,0) or v.CFrame + Vector3.new(0,26,0)
            end
        end

    function anyvehicle()
        game:GetService("Players").MrMaclintosh.PlayerScripts.SitPermissions:Destroy()
    end

    function Purchase(ID)
        spawn(function()
            game:GetService("ReplicatedStorage").NPCDialog.PlayerChatted:InvokeServer({["ID"] = ID,["Character"] = "name",["Name"] = "name",["Dialog"] = 'Dialog'}, "ConfirmPurchase");
        end)
    end

    function GetChar()
        local Player = game.Players.LocalPlayer
        if Player.Character == nil then
            repeat task.wait() until Player.Character ~= nil
            return Player.Character
        else
            return Player.Character
        end
    end

    function sFLY(vfly)
        repeat wait() until Players.LocalPlayer and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        repeat wait() until IYMouse
        if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

        local T = getRoot(Players.LocalPlayer.Character)
        local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
        local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
        local SPEED = 0

        local function FLY()
            FLYING = true
            local BG = Instance.new('BodyGyro')
            local BV = Instance.new('BodyVelocity')
            BG.P = 9e4
            BG.Parent = T
            BV.Parent = T
            BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            BG.cframe = T.CFrame
            BV.velocity = Vector3.new(0, 0, 0)
            BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
            task.spawn(function()
                repeat wait()
                    if not vfly and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                        Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
                    end
                    if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
                        SPEED = 50
                    elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
                        SPEED = 0
                    end
                    if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
                        BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                        lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
                    elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
                        BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                    else
                        BV.velocity = Vector3.new(0, 0, 0)
                    end
                    BG.cframe = workspace.CurrentCamera.CoordinateFrame
                until not FLYING
                CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
                lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
                SPEED = 0
                BG:Destroy()
                BV:Destroy()
                if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                    Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
                end
            end)
        end
        flyKeyDown = IYMouse.KeyDown:Connect(function(KEY)
            if KEY:lower() == 'w' then
                CONTROL.F = (vfly and vehicleflyspeed or iyflyspeed)
            elseif KEY:lower() == 's' then
                CONTROL.B = - (vfly and vehicleflyspeed or iyflyspeed)
            elseif KEY:lower() == 'a' then
                CONTROL.L = - (vfly and vehicleflyspeed or iyflyspeed)
            elseif KEY:lower() == 'd' then
                CONTROL.R = (vfly and vehicleflyspeed or iyflyspeed)
            elseif QEfly and KEY:lower() == 'e' then
                CONTROL.Q = (vfly and vehicleflyspeed or iyflyspeed)*2
            elseif QEfly and KEY:lower() == 'q' then
                CONTROL.E = -(vfly and vehicleflyspeed or iyflyspeed)*2
            end
            pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
        end)
        flyKeyUp = IYMouse.KeyUp:Connect(function(KEY)
            if KEY:lower() == 'w' then
                CONTROL.F = 0
            elseif KEY:lower() == 's' then
                CONTROL.B = 0
            elseif KEY:lower() == 'a' then
                CONTROL.L = 0
            elseif KEY:lower() == 'd' then
                CONTROL.R = 0
            elseif KEY:lower() == 'e' then
                CONTROL.Q = 0
            elseif KEY:lower() == 'q' then
                CONTROL.E = 0
            end
        end)
        FLY()
    end

    function nf()
        FLYING = false
        if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
        if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
            Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
        end
        pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
    end

    local function getPlots()
        local Properties = {}
        for _, v in next, workspace.Properties:GetChildren() do
            local Owner = v:FindFirstChild("Owner")
            if Owner and Owner.Value == nil then
                table.insert(Properties, v)
            end
        end
        return Properties[#Properties]
    end

    getsenv(propClient).enterPurchaseMode = function(...)
        if not skipLoading then
            return oldPurchase(...)
        end
        setupvalue(propEnvironment.rotate, 3, 0)
        setupvalue(oldPurchase, 10, getPlots())
        return
    end


    function BridgeUp()
        for i,v in pairs (game:GetService("Workspace").Bridge.VerticalLiftBridge.Weight:GetChildren()) do
            v.CFrame = Value and v.CFrame + Vector3.new(0,26,0) or v.CFrame - Vector3.new(0,26,0)
        end
    end


    function flip()
        local player = game.Players.LocalPlayer
        local humanoid = player.Character.Humanoid
        if humanoid.Seated then
        local CurrentSeat = player.Character.Humanoid.SeatPart
            if CurrentSeat and CurrentSeat.Parent.Type.Value == "Vehicle" then
        CurrentSeat.CFrame = CurrentSeat.CFrame * CFrame.Angles(math.rad(-180), 0, 0) + Vector3.new(0, 5, 0),1000,CurrentSeat.CFrame
        end
        end
    end

    function BetterFly()
        repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
        local mouse = game.Players.LocalPlayer:GetMouse()
        repeat wait() until mouse
        local plr = game.Players.LocalPlayer
        local torso = plr.Character.Torso
        local flying = false
        local deb = true
        local ctrl = {f = 0, b = 0, l = 0, r = 0}
        local lastctrl = {f = 0, b = 0, l = 0, r = 0}
        local speed = 5000

        function Fly()
        local bg = Instance.new("BodyGyro", torso)
        bg.P = 9e4
        bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        bg.cframe = torso.CFrame
        local bv = Instance.new("BodyVelocity", torso)
        bv.velocity = Vector3.new(0,0.1,0)
        bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
        repeat wait()
        plr.Character.Humanoid.PlatformStand = true
        if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
        speed = maxspeed
        elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
            speed = 0
        end
        if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
        bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
        lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
        elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
        bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*0.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
        else
        bv.velocity = Vector3.new(0,0,0)
        end
        bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*speed/maxspeed),0,0)
        until not flying
        ctrl = {f = 0, b = 0, l = 0, r = 0}
        lastctrl = {f = 0, b = 0, l = 0, r = 0}
        speed = 0
        bg:Destroy()
        bv:Destroy()
        plr.Character.Humanoid.PlatformStand = false
        end
        mouse.KeyDown:connect(function(key)
        if key:lower() == "q" and FlyingEnabled == true then
        if flying then flying = false
        else
        flying = true
        Fly()
        end
        elseif key:lower() == "w" then
        ctrl.f = 1
        elseif key:lower() == "s" then
        ctrl.b = -1
        elseif key:lower() == "a" then
        ctrl.l = -1
        elseif key:lower() == "d" then
        ctrl.r = 1
        end
        end)
        mouse.KeyUp:connect(function(key)
        if key:lower() == "w" then
        ctrl.f = 0
        elseif key:lower() == "s" then
        ctrl.b = 0
        elseif key:lower() == "a" then
        ctrl.l = 0
        elseif key:lower() == "d" then
        ctrl.r = 0
        end
        end)
        Fly()
    end
    game.Players.LocalPlayer.CharacterAdded:Connect(BetterFly)
    BetterFly()


    game.Lighting.Changed:connect(function()
        if Day then
            game.Lighting.TimeOfDay = "7:00:00"
        elseif Night then
            game.Lighting.TimeOfDay = "24:00:00"
        end
    end)


    function noclip()
        Clip = false
        local function Nocl()
            if Clip == false and game.Players.LocalPlayer.Character ~= nil then
                for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                        v.CanCollide = false
                    end
                end
            end
            wait(0.21) -- basic optimization
        end
        Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
    end


    function clip()
        if Noclip then Noclip:Disconnect() end
        Clip = true
    end


    function VehicleSpeed(Val)
        for i,v in next, game:GetService("Workspace").PlayerModels:GetChildren() do
            if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
                if v:FindFirstChild("Type") and v.Type.Value == "Vehicle" then
                    if v:FindFirstChild("Configuration") then
                        v.Configuration.MaxSpeed.Value = Val
                    end
                end
            end
        end
    end


    function AntiAFK(Val)
        if not Val then AFKVal:Disconnect() return end
        AFKVal = game:GetService("Players").LocalPlayer.Idled:connect(function()
            game:GetService("VirtualInputManager"):SendKeyEvent(true, "W", false, game)
                wait()
            game:GetService("VirtualInputManager"):SendKeyEvent(false, "W", false, game)
        end)
    end

    function getRoot(char)
        local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
        return rootPart
    end

    function is_in_frame(screenpos, frame)
        local xPos = frame.AbsolutePosition.X
        local yPos = frame.AbsolutePosition.Yisinframe

        local xSize = frame.AbsoluteSize.X
        local ySize = frame.AbsoluteSize.Y

        local check1 = screenpos.X >= xPos and screenpos.X <= xPos + xSize
        local check2 = screenpos.X <= xPos and screenpos.X >= xPos + xSize

        local check3 = screenpos.Y >= yPos and screenpos.Y <= yPos + ySize
        local check4 = screenpos.Y <= yPos and screenpos.Y >= yPos + ySize

        local finale = (check1 and check3) or (check2 and check3) or (check1 and check4) or (check2 and check4)

        return finale
    end


    function count_backpack()
        local backpack = game.Players.LocalPlayer.Backpack:GetChildren()
        local count = 0
        for i,v in pairs(backpack) do
            count = count + 1
        end
        return count - 1
    end


    function Light(Val)
        if Val == false then game.Players.LocalPlayer.Character.Torso.PointLight:Destroy() return end
        local PL = Instance.new("PointLight",game.Players.LocalPlayer.Character:FindFirstChild("Torso"))
        PL.Range = 100
        PL.Brightness = 1
        PL.Shadows = false
    end

    function dupe_load(slot)
        if not game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad:InvokeServer(game:GetService("Players").LocalPlayer) then
            repeat task.wait() until  game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad:InvokeServer(game:GetService("Players").LocalPlayer)
        end
        if slot then
            skipLoading = true
        end
        game:GetService("ReplicatedStorage").LoadSaveRequests.RequestLoad:InvokeServer(slot,game.Players.LocalPlayer)
        if game:GetService("Players").LocalPlayer.CurrentSaveSlot.Value == slot then
        end
    end

    function GoldenBluePrintDupe(Slot)
        local Slot = slotnumber
        game:GetService("ReplicatedStorage").LoadSaveRequests.RequestLoad:InvokeServer(Slot,game:GetService("Players").LocalPlayer)
        task.wait(14)
        FreeLand()
        game:GetService("ReplicatedStorage").LoadSaveRequests.RequestSave:FireServer(Slot, game:GetService("Players").LocalPlayer)
    end

    local VoidPlr = function()
        local VF = Instance.new("VectorForce", game:GetService"Players".LocalPlayer.Character.HumanoidRootPart)
        local AM = Instance.new("Attachment", game:GetService"Players".LocalPlayer.Character.HumanoidRootPart)
    
        VF.Attachment0 = AM
    
        VF.Force = Vector3.new(555000, 555000, 555000) 
        VF.ApplyAtCenterOfMass = true
        task.wait(.5)
        VF:Destroy()
    end
        function AxeDupeLoop(Slot)
            while getgenv().loopDupe == true do
                wait(70)
                AxeDupe(Slot)
            end
        end
    
    function AxeDupe(Slot)
        local Slot = slotnumber
        repeat wait() until game.ReplicatedStorage.LoadSaveRequests.ClientMayLoad:InvokeServer(game.Players.LocalPlayer)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-24, -248, -1773)
        task.wait(2)
        wait(dupertimer)
        task.wait(2)
        game:GetService("ReplicatedStorage").LoadSaveRequests.RequestLoad:InvokeServer(Slot,game:GetService("Players").LocalPlayer)
        repeat task.wait() until game:GetService("Players").LocalPlayer.OwnsProperty.Value == true
        repeat task.wait() until game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad:InvokeServer(game:GetService("Players").LocalPlayer)
        wait(0.5)
    end

    function Dragger()
        game.Workspace.ChildAdded:connect(function(a)
            if a.Name == "Dragger" then
                local bg = a:WaitForChild("BodyGyro")
                local bp = a:WaitForChild("BodyPosition")
                repeat
                    if CustomDragger then
                        task.wait()
                        bp.P = 120000
                        bp.D = 1000
                        bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
                        bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                    else
                        wait()
                        bp.P = 10000
                        bp.D = 800
                        bp.maxForce = Vector3.new(17000, 17000, 17000)
                        bg.maxTorque = Vector3.new(200, 200, 200)
                    end
                until not a
            end
        end)
    end

    local AllPlayers = {game.Players.LocalPlayer.Name}
        for i,v in next,game.Players:GetPlayers() do
            if not table.find(AllPlayers,v.Name) then
        table.insert(AllPlayers,v.Name)
    end
    end


    function TeleportToPlayer(Plr)
        for i,v in next, game.Players:GetPlayers() do
            if tostring(v.Name) == Plr then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Character.HumanoidRootPart.CFrame.p)
                print("")
                break
            end
        end
    end



    function TeleportToBase(Plr)
        for i,v in next, game:GetService("Workspace").Properties:GetChildren() do
            if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == Plr then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.OriginSquare.CFrame + Vector3.new(0,2,0)
                break
            end
        end
    end


    function LoadSlot(slot)
        if not game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad:InvokeServer(game:GetService("Players").LocalPlayer) then
            repeat task.wait() until  game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad:InvokeServer(game:GetService("Players").LocalPlayer)
        end
        local skipLoading = skil.skipLoading
        game:GetService("ReplicatedStorage").LoadSaveRequests.RequestLoad:InvokeServer(slot,game.Players.LocalPlayer)
        if game:GetService("Players").LocalPlayer.CurrentSaveSlot.Value == slot then
            Notify("Fast Load | LW", 'Slot Succesfully Loaded!'..slot, 2)
        end
    end


    function FreeLand()
        for i,v in next, game:GetService("Workspace").Properties:GetChildren() do
            if v:FindFirstChild("Owner") and v.Owner.Value == nil then
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientPurchasedProperty:FireServer(v,v.OriginSquare.Position)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.OriginSquare.CFrame + Vector3.new(0,2,0)
                break
            end
        end
    end



    function SellSoldSign()
        for i,v in next, game:GetService("Workspace").PlayerModels:GetChildren() do
            if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
                if v:FindFirstChild("ItemName") and v.ItemName.Value == "PropertySoldSign" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Main.CFrame.p) + Vector3.new(0,0,2)
                    game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(v,"Take down sold sign")
                    for i = 1,30 do
                        game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
                        v.Main.CFrame = CFrame.new(314.54, -0.5, 86.823)
                        task.wait()
                    end
                end
            end
        end
    end


    function MaxLand()
        for s,d in pairs(workspace.Properties:GetChildren()) do
            if d:FindFirstChild("Owner") and d:FindFirstChild("OriginSquare") and d.Owner.Value == game.Players.LocalPlayer then
                local PlotPos = d.OriginSquare.Position
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X + 40, PlotPos.Y, PlotPos.Z))
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X - 40, PlotPos.Y, PlotPos.Z))
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X , PlotPos.Y, PlotPos.Z + 40))
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X , PlotPos.Y, PlotPos.Z - 40))
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X + 40 , PlotPos.Y, PlotPos.Z + 40))
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X + 40 , PlotPos.Y, PlotPos.Z - 40))
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X - 40 , PlotPos.Y, PlotPos.Z + 40))
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X - 40 , PlotPos.Y, PlotPos.Z - 40))
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X + 80 , PlotPos.Y, PlotPos.Z))
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X - 80 , PlotPos.Y, PlotPos.Z))
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X , PlotPos.Y, PlotPos.Z + 80))
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X , PlotPos.Y, PlotPos.Z - 80))
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X + 80 , PlotPos.Y, PlotPos.Z + 80))
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X + 80 , PlotPos.Y, PlotPos.Z - 80))
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X - 80 , PlotPos.Y, PlotPos.Z + 80))
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X - 80 , PlotPos.Y, PlotPos.Z - 80))
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X + 40 , PlotPos.Y, PlotPos.Z + 80))
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X - 40 , PlotPos.Y, PlotPos.Z + 80))
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X + 80 , PlotPos.Y, PlotPos.Z + 40))
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X + 80 , PlotPos.Y, PlotPos.Z - 40))
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X - 80 , PlotPos.Y, PlotPos.Z + 40))
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X - 80 , PlotPos.Y, PlotPos.Z - 40))
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X + 40 , PlotPos.Y, PlotPos.Z - 80))
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty:FireServer(d,CFrame.new(PlotPos.X - 40 , PlotPos.Y, PlotPos.Z - 80))
            end
        end
    end

    local ReplicatedStorage = game:GetService("ReplicatedStorage")

    --
    local TeleportReliablity = 30
    local OldCharacterPos;

    BringObject = function(Model, Position, TeleportSettings)
        if not Player.Character then return end
        
        local Character = Player.Character
        
        local ToTeleportBeforeBringing = TeleportSettings[1]
        local ToTeleportAfterBringing  = TeleportSettings[2]
        
        if not Model.PrimaryPart then
            Model.PrimaryPart = Model:FindFirstChild("Main") or Model:FindFirstChild("WoodSection") 
        end    
        
        if not Model.PrimaryPart then return end
        
        if ToTeleportBeforeBringing then
            Character.HumanoidRootPart.Anchored = true
            for i = 1,10 do
                Character.Humanoid.Sit = false
                if (Character.HumanoidRootPart.Position - Model.PrimaryPart.Position).Magnitude > 17 then
                    Character:SetPrimaryPartCFrame(CFrame.new(Model.PrimaryPart.Position + Vector3.new(5,3,5))) 
                end
                game:GetService("RunService").Stepped:Wait()
            end
            Character.HumanoidRootPart.Anchored = false
        end
        
        for i = 1,TeleportReliablity do
            if not Model.PrimaryPart then break end
            Character.Humanoid.Sit = false    
                
            game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(Model)
            Model:SetPrimaryPartCFrame(Position)
            game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(Model)
            
            for _,v in pairs(Model:GetChildren()) do
                if v:IsA("BasePart") or v:IsA("Part") then
                    v.Velocity = Vector3.new(0,15,0)
                    v.RotVelocity = Vector3.new(0,0,0)
                end    
            end
            game:GetService("RunService").Stepped:Wait()
        end
        
        wait(0.1)
        
        if ToTeleportAfterBringing then
            task.spawn(function()
                for i = 1,10 do
                    Character:SetPrimaryPartCFrame(OldCharacterPos + Vector3.new(0,5,0))
                    Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                    Character.HumanoidRootPart.RotVelocity = Vector3.new(0,0,0)
                    task.wait()
                end
            end)
        end    
    end
    --

    local Counters = {
        ["Thom"] = Vector3.new(268, 2, 67.4);
        ["Bob"] = Vector3.new(260, 7.2, -2551);
        ["Corey"] = Vector3.new(477, 2.4, -1722);
        ["Jenny"] = Vector3.new(528, 2.4, -1459);
        ["Timothy"] = Vector3.new(5238, -167.2, 740);
        ["Lincoln"] = Vector3.new(4595, 6.2, -785);
    }

    local StoreOwnerIDs = {
        ["Thom"] = 7;
        ["Bob"] = 10;
        ["Corey"] = 8;
        ["Jenny"] = 9;
        ["Timothy"] = 11;
        ["Lincoln"] = 12;
    }
        
    local StoreOwnerPositions = {
        ["Thom"] = Vector3.new(262.4, 2.99929, 70.3);
        ["Bob"] = Vector3.new(255.351, 8.39809, -2553.31);
        ["Corey"] = Vector3.new(472.8, 3.798523, -1716.7);
        ["Jenny"] = Vector3.new(532.11, 3.798914, -1465.63);
        ["Timothy"] = Vector3.new(5232.4, -166.201, 742.9);
        ["Lincoln"] = Vector3.new(4591.8, 7.59853, -782.101);
    }

    function GetPrice(Name)
        if ReplicatedStorage.ClientItemInfo:FindFirstChild(Name) then
            return ReplicatedStorage.ClientItemInfo[Name].Price.Value
        else
        end    
    end 


    function GetItem(Name)
        local Items = {}
        for _,v in pairs(workspace.Stores:GetDescendants()) do
            if v:IsA("StringValue") and v.Name == "BoxItemName" then
                --if Name ~= "Wire" then
                    if v.Value == Name then
                        table.insert(Items, v.Parent) 
                    end 
            end
        end
        return Items
    end



    function GetClosestStoreOwner(BasePos)
        local ClosestStoreOwner
        local TargetDistance = math.huge
        
        for i,v in pairs(StoreOwnerPositions) do
            Distance = (BasePos - v).Magnitude
            if Distance < TargetDistance then
                TargetDistance = Distance
                ClosestStoreOwner = i
            end
        end
        return ClosestStoreOwner
    end


    function PurchaseItem(ID)
        ReplicatedStorage.NPCDialog.PlayerChatted:InvokeServer({
            ["Character"] = "",
            ["Name"] = "",
            ["ID"] = ID,
            ["Dialog"] = ""
        },"ConfirmPurchase")
    end


    function BuyItem(Item,Amount,Position)
        local ToBuyFrom
        local MerchantID
    AbortAutoBuy=false
        local autotpback = game.Workspace.PlayerModels.ChildAdded:connect(function(v)
        
        v:WaitForChild('Owner', 60)
        if v.Owner.Value == game.Players.LocalPlayer then

            
            for i = 1, 20 do
                game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
                v:PivotTo(Position)
                game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
                game["Run Service"].Heartbeat:wait()
            end
        end
    end)
        for i = 1,Amount do
        if AbortAutoBuy==false then
            if CancelActions then CancelActions = false return end
            local Item = GetItem(Item)[1]
            if Item== nil then
        repeat
        local Item = GetItem(Item)[1]
        task.wait()
        until Item~=nil

    end
                local ItemName = Item.BoxItemName.Value
    
                
                if not ToBuyFrom then
                    ToBuyFrom = GetClosestStoreOwner(Item.Main.Position) 
                end
                
                if not MerchantID then
                    for i,v in pairs(StoreOwnerIDs) do
                        if i == ToBuyFrom then
                            MerchantID = v 
                        end    
                    end
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=Item.Main.CFrame
                task.wait(0.1)

                for i=1,30 do
                game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(Item)
                Item:PivotTo(CFrame.new(Counters[ToBuyFrom])+ Vector3.new(0,0.6,0))
                game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(Item)
                task.wait()
                end
                task.wait(0.1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Counters[ToBuyFrom]) + Vector3.new(2,0,2)
                repeat
                if AbortAutoBuy==true then break end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Counters[ToBuyFrom]) + Vector3.new(2,0,2)
                PurchaseItem(MerchantID)
                wait()
            until Item.Owner.Value==game.Players.LocalPlayer and Item.Parent~="ShopItem"
            print("done")
            end
        end
            spawn(function()
            pcall(function()
                Notify('Monzz Scriptz', 'AutoBuy Done!', 2)
                autotpback:Disconnect();
                autotpback = nil;
            end)
        end)
        end
        
        CancelActions = false

    for _,v in pairs(game:GetService("ReplicatedStorage").ClientItemInfo:GetChildren()) do
        if v:IsA("Folder") then
            for _,x in pairs(workspace.Stores:GetDescendants()) do
                if x.Name == "BoxItemName" then
                    if x.Value == v.Name and not table.find(ItemList, v.Name) then
                        table.insert(ItemList, v.Name)    
                    end    
                end    
            end    
        end    
    end


    local BuyListDropdown

    local CheckIfWPPlaced = function()
        if TPToWPorPLR == false then 
            local WayPointPart = Instance.new("Part")
            if not WayPointPart then 
                return false 
            end 
        else
            return true 
        end    
        
        return true
    end

    local GetWPLoc = function()
        if WayPointPart then
            if TPToWPorPLR == false then
                return WayPointPart.CFrame
            else
                return GetChar().Torso.CFrame
            end
        else
            return GetChar().Torso.CFrame
        end    
    end
    --Wood--
    local AxeIndex = {
        Basic_Hatchet = {
            Damage = 0.2;
            Cooldown = 0.304;
        },
        Plain_Axe = {
            Damage = 0.55;
            Cooldown = 0.383;
        },
        Steel_Axe = {
            Damage = 0.93;
            Cooldown = 0.369;
        },
        Hardened_Axe = {
            Damage = 1.45;
            Cooldown = 0.328;
        },
        Silver_Axe = {
            Damage = 1.6;
            Cooldown = 0.222;
        },
        The_Many_Axe = {
            Damage = 10.2;
            Cooldown = 0.328;
        },
        Alpha_Axe_of_Testing = {
            Damage = 1.5;
            Cooldown = 0.234;
        },
        Bird_Axe = {
            Damage = 1.65;
            DamageToLava = 2.5;
            DamageToCavecrawler = 3.9;
            Cooldown = 0.171;
        },
        Rukiryaxe = {
            Damage = 1.68;
            Cooldown = 0.172;
        },
        beesaxe = {
            Damage = 1.4;
            Cooldown = 0.218;
        },
        Beta_Axe_of_Bosses = {
            Damage = 1.45;
            Cooldown = 0.256;
        },
        Cave_Axe = {
            Damage = 0.4;
            DamageToCavecrawler = 7.2;
            CooldownCavecrawler = 0.051;
            Cooldown = 0.175;
        },
        Fire_Axe = {
            Damage = 0.6;
            DamageToLava = 6.35;
            CooldownLava = 0.105;
            Cooldown = 0.258;
        },
        Candy_Corn_Axe = {
            Damage = 1.75;
            Cooldown = 0.259;
        },
        CHICKEN_AXE = {
            Damage = 0.9;
            Cooldown = 0.060;
        },
        Gingerbread_Axe = {
            Damage = 1.2;
            DamageToKoa = 11;
            DamageToWalnut = 8.5;
            CooldownKoa = 0.134;
            CooldownWalnut = 0.170;
            Cooldown = 0.218;
        },
        Rusty_Axe = {
            Damage = 0.55;
            Cooldown = 0.4
        },
        Overgrown_Axe = {
            Damage = 0.8;
            DamageToZombie = 7;
            DamageToGold = 5.35;
            CooldownGold = 0.185;
            CooldownZombie = 0.248;
            Cooldown = 0.290;
        },
        End_Times_Axe = {
            Damage = 1.58;
            Cooldown = 0.4;
        },
        Frost_Axe = {
            Damage = 0.36;
            Cooldown = 0.4;
        }
    }
    GetBestAxeForTreeClass = function(AxeName, TreeClass, ToReturnDefault)

        if TreeClass == "LoneCave" then
            if AxeName == "End_Times_Axe" then
                return {10^7, 0.034, "End_Times_Axe"}
            else
                return
            end    
        end
        
        if TreeClass == "CaveCrawler" then
            if AxeName == "Cave_Axe" then
                return {7.2, 0.051, "Cave_Axe"}
            elseif AxeName == "Bird_Axe" then
                return {3.9, "Default", "Bird_Axe"}
            end    
        end

        if TreeClass == "Volcano" then
            
            if AxeName == "Fire_Axe" then
                return {6.35, 0.105, "Fire_Axe"}
            
            
            elseif AxeName == "Bird_Axe" then
                return {2.5, "Default", "Bird_Axe"}
            end
        end

        if TreeClass == "Koa" then              
            if AxeName == "Gingerbread_Axe" then
                return {11, 0.134, "Gingerbread_Axe"}
            end
        end

        if TreeClass == "Walnut" then
            if AxeName == "Gingerbread_Axe" then
                return {8.5, 0.170, "Gingerbread_Axe"}
            end
        end
        
        if TreeClass == "GreenSwampy" then
            if AxeName == "Overgrown_Axe" then
                return {7, 0.232, "Overgrown_Axe"}
            end
        end
        
        if TreeClass == "GoldSwampy" then
            if AxeName == "Overgrown_Axe" then
                return {5.35, 0.160, "Overgrown_Axe"}
            end
        end

        if TreeClass == "Frost" then
            if AxeName == "Frost_Axe" then
                return {6, 0.31, "Frost_Axe"}
            end
        end
        
        if not ToReturnDefault then
            return {AxeIndex[AxeName].Damage, AxeIndex[AxeName].Cooldown,AxeName}
        end
    end

    SetPrimaryPos = function(NewPosition)
        if GetChar() then
            GetChar():SetPrimaryPartCFrame(NewPosition) 
        else
            Notify("","Something went wrong\nCreate a bug report with the ID 1") 
        end    
    end
    CutTree = function(Model,Axe,Arguments)
        if not Model then Notify("",'Getting Tree; Failed "This tree is invalid"') return false end
        if not Model:FindFirstChild("WoodSection") then 
            Notify("",'Getting '..Model.Name..' Tree; Failed "This tree is invalid"') 
            return false end 
        
        CuttingTree = true
        GetChar().Humanoid:UnequipTools()
        
        local AxeName = string.gsub(Axe.ToolTip," ","_")
        local AxeInfo = GetBestAxeForTreeClass(AxeName, Model.TreeClass.Value)
        
        local Trunk
        

        for _,v in pairs(Model:GetChildren()) do
            if v.Name == "WoodSection" then
                if v.ID.Value == 1 then
                    Trunk = v
                end    
            end    
        end
  

        if AxeInfo[2] == "Default" then
            AxeInfo[2] = AxeIndex[AxeName].Cooldown
        end 

        local CutArguments = {
            ["tool"] = Axe,
            ["faceVector"] = Vector3.new(-1,0,0),
            ["height"] = Arguments[2],
            ["sectionId"] = Arguments[1],
            ["hitPoints"] = AxeInfo[1],
            ["cooldown"] = AxeInfo[2],
            ["cuttingClass"] = "Axe"
        }
        
        task.spawn(function()
            if Model.TreeClass.Value ~= "LoneCave" then
                repeat task.wait()
                    SetPrimaryPos(CFrame.new(Trunk.Position) + Vector3.new(0,2,0))
                until CancelCutting or Model:FindFirstChild("InnerWood") or Model:FindFirstChild("RootCut") or Trunk.BrickColor == BrickColor.new("Black")
            end
        end)
        
        repeat wait(AxeInfo[2])
            if Model:FindFirstChild("CutEvent") then
                local Cut = game:GetService("ReplicatedStorage").Interaction.RemoteProxy;
                Cut:FireServer(Model.CutEvent,CutArguments)

            end
        until CancelCutting or Model:FindFirstChild("InnerWood") or Model:FindFirstChild("RootCut") or Trunk.BrickColor == BrickColor.new("Black")

        
        if CancelCutting then 
            return 
        end
        
        CuttingTree = false
    end


    CanGrabObject = function(UserId)
        local ClientGetUserPermissions = game:GetService("ReplicatedStorage").Interaction.ClientGetUserPermissions;
        local Result = ClientGetUserPermissions:InvokeServer(UserId,"Interact")
        if Result == true then
            return true
        else
            return false
        end    
    end
    CheckOwner = function(Model)
        if Model:FindFirstChild("Owner") then
            if Model.Owner.Value == Player then
                return true
            elseif Model.Owner.Value == nil then
                return true 
            elseif Model.Owner.Value ~= Player then
                if CanGrabObject(game:GetService("Players")[Model.Owner.Value.Name].UserId) then
                    return true 
                end      
            end
        else
            return false 
        end 
    end
    CutAndBringLoneCaveTree = function()
        local LastTool;
        local LoneCaveTree = nil
        local LooseLoneCave
        local Trunk

        local TempChar = Player.Character
        local Axe = LastTool


        for _,v in pairs(workspace:GetChildren()) do
            if v.Name == "TreeRegion" then
                for _,x in pairs(v:GetChildren()) do
                    if x:IsA("Model") and x:FindFirstChild("TreeClass") then
                        if CheckOwner(x) then
                            if x:FindFirstChild("TreeClass").Value == "LoneCave" then
                                LoneCaveTree = x
                                for _,z in pairs(x:GetChildren()) do
                                    if z.Name == "WoodSection" then
                                        if z.ID.Value == 1 then
                                            Trunk = z
                                        end    
                                    end    
                                end    
                            end
                        end
                    end    
                end    
            end    
        end

        if LoneCaveTree == nil then
            return 
        end    

        local loclol = GetWPLoc()
        
        Player.Character.Humanoid:UnequipTools()
        Player.Character.Humanoid.BreakJointsOnDeath = false

        Player.Character = nil
        Player.Character = workspace[Player.Name]

        wait(game.Players.RespawnTime + 0.05)

        Player.Character:SetPrimaryPartCFrame(Trunk.CFrame)

        Player.Character.Torso:Destroy()
        Player.Character:FindFirstChildOfClass("Humanoid").BreakJointsOnDeath = false

        CutTree(LoneCaveTree,Axe,{1,0.3})
        wait(0.5)
        
        for _,v in pairs(workspace.LogModels:GetChildren()) do
            if v.Name == "Loose_LoneCave" then
                LooseLoneCave = v 
            end    
        end
        
        BringObject(LooseLoneCave, loclol, {false, false})
        
        Player.Character = Instance.new("Model",workspace)
        wait()
        Player.Character = TempChar

    end

    GetLooseTree = function()
        local LastInteractionTimes = {}
        local LooseTrees = {}

        for _,v in pairs(workspace.LogModels:GetChildren()) do
            if v:IsA("Model") and v:FindFirstChild("Owner") then
                if CheckOwner(v)  then 
                    table.insert(LastInteractionTimes, v.Owner.LastInteraction.Value)
                    table.insert(LooseTrees, v)
                end
            end
        end

        local LowestInteraction = math.max(table.unpack(LastInteractionTimes))

        for _,v in pairs(LooseTrees) do
            if v.Owner.LastInteraction.Value == LowestInteraction then

                return v 
            end    
        end 
    end
    FindTreeOfClass = function(TreeClass)
        for _,v in pairs(workspace:GetChildren()) do
            if v.Name == "TreeRegion" then
                for _,x in pairs(v:GetChildren()) do
                    if x:IsA("Model") then
                        if not x:FindFirstChild("RootCut") then
                            if x:FindFirstChild("TreeClass") and x:FindFirstChild("Owner") then
                                if x:FindFirstChild("TreeClass").Value == TreeClass then
                                    if CheckOwner(x) then
                                        return x
                                    else
                                        return false
                                    end  
                                end
                            end
                        end
                    end 
                end 
            end 
        end
        return false
    end

    SetOldCharacterPos = function()
        OldCharacterPos = GetChar().HumanoidRootPart.CFrame
        return OldCharacterPos
    end

    FindOwnedTreeInLogModels = function(TreeType)
        local OwnedTrees = {}
        
        for _,v in pairs(workspace.LogModels:GetChildren()) do
            if not TreeType then
                if v:IsA("Model") and CheckOwner(v) then
                    table.insert(OwnedTrees, v)
                end      
            else
                if v:IsA("Model") and CheckOwner(v) then
                    if v.TreeClass.Value == TreeType then
                        table.insert(OwnedTrees, v)
                    end
                end 
            end  
        end
        
        if #OwnedTrees == 0 then
            return false 
        else
            return OwnedTrees 
        end 
    end

    local ClientIsDragging = game:GetService("ReplicatedStorage").Interaction.ClientIsDragging;

    function AbortBringTree()
        CancelCutting = true
        wait(1)
        CancelCutting = false
    end

        
 --by Catimyth#1468 for Monzz
local finished = false
function pickupaxe(axe)
    repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(axe:FindFirstChild("Main").Position)
    wait()
    local args = {
        [1] = axe,
        [2] = "Pick up tool"
    }
    game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(unpack(args))
end
    local currentax = nil
        local cooper = game.Players.LocalPlayer
    local treeregins = {}
    local treclases = {}
    local replicatedfarts = game.ReplicatedStorage
    local axeclasses = replicatedfarts:WaitForChild("AxeClasses")
    --GetLoneCave--
    local plraxe = nil
    local curpos = cooper.Character.HumanoidRootPart.CFrame

    local axs = {}

    local ready = true

    function updateAxs()
        axs = {}
        cooper.Character.Humanoid:UnequipTools()
        task.wait()
        for _, cooper in next, cooper.Backpack:GetChildren() do
        if cooper.Name ~= "BlueprintTool" and cooper:FindFirstChild("ToolName") then
            table.insert(axs, {
                ax = cooper,
                stats = getAxStats(cooper.ToolName.Value, treclass)
            })
        end
        end
    end

    for _, cooper in next, workspace:GetChildren() do
       if cooper.Name == "TreeRegion" then
          table.insert(treeregins, cooper)
       end
    end
    
    for _, cooper in next, treeregins do
       for _, cooper in next, cooper:GetChildren() do
          if cooper:FindFirstChild("TreeClass") and not table.find(treclases, cooper.TreeClass.Value) then
             table.insert(treclases, cooper.TreeClass.Value)
          end
       end
    end
    
    function hasaxe()
        local axis = {}
        repeat wait()
                
        until cooper.Character and cooper.Character:FindFirstChild("Humanoid") and cooper.Character:FindFirstChild("Humanoid").Health > 0
        cooper.Character.Humanoid:UnequipTools()
        for _, cooper in next, cooper.Backpack:GetChildren() do
        if cooper.Name ~= "BlueprintTool" and cooper:FindFirstChild("ToolName") then
            table.insert(axis, {
                ax = cooper,
                stats = getAxStats(cooper.ToolName.Value, treclass)
            })
        end
        end
        if #axis > 0 then return true end
    end

    function getAxStats(axName, treClas)
       local coopermodule = axeclasses:FindFirstChild("AxeClass_"..axName)
       if not coopermodule then return end
       local axStats = require(coopermodule).new()
       if axStats.SpecialTrees and axStats.SpecialTrees[treClas] then
          for mini, cooper in next, axStats.SpecialTrees[treClas] do
             axStats[mini] = cooper
          end
       end
       return axStats
    end
    
    function getModlMass(model)
       local total = 0
       local woodsextions = 0
       for _, v in next, model:GetDescendants() do
          if v:IsA("BasePart") and v.Name ~= "Leaves" then
             if v.Name == "WoodSection" then woodsextions = woodsextions + 1 end
             total = total + v.Mass
          end
       end
       return total, woodsextions
    end
    function getBig(tr)
        repeat
            wait()
        until tr ~= nil
        local greatestMass = 0
        local partWithGreatestMass = nil

        for _, part in ipairs(tr:GetDescendants()) do
            if part:IsA("BasePart") and part.Name ~= "Leaves" then
                local mass = part:GetMass()
                if mass > greatestMass then
                    greatestMass = mass
                    partWithGreatestMass = part
                end
            end
        end

        return partWithGreatestMass.Position
    end
    function getTrreOfClas(clas)
       local posibilitys = {}
       for _, cooper1 in next, treeregins do
          for _, cooper2 in next, cooper1:GetChildren() do
             if cooper2:IsA("Model") and cooper2:FindFirstChild("CutEvent") then
                local trreclas = cooper2:FindFirstChild("TreeClass")
                if trreclas and trreclas.Value == clas then
                   local mas, secs = getModlMass(cooper2)
                   if secs > 1 then
                      table.insert(posibilitys, {
                         tre = cooper2,
                         mass = mas
                      })
                   end
                end
             end
          end
       end
       table.sort(posibilitys, function(cooper1, cooper2)
       return cooper1.mass > cooper2.mass
       end)
       return posibilitys[#posibilitys] and posibilitys[#posibilitys].tre or false, "No tree found."
    end
    
    function choppy(tre, ax)
        if cooper.Character:FindFirstChild("Humanoid") and cooper.Character.Humanoid.Health > 0 then
        repeat wait() until hasaxe()
        updateAxs()
       task.wait(0.25)
       local axStats = getAxStats(ax.ToolName.Value, tre.TreeClass.Value)
       local propertys = {
          tool = ax,
          height = 0.3,
          faceVector = Vector3.new(1, 0, 0),
          sectionId = 1,
          hitPoints = axStats.Damage,
          cooldown = axStats.SwingCooldown,
          cuttingClass = "Axe"
       }
    
       local newtre, trecon = nil, nil
       trecon = workspace.LogModels.ChildAdded:Connect(function(tre)
       task.wait()
       if tre:FindFirstChild("Owner") and tre.Owner.Value == cooper then
          newtre = tre
          trecon:Disconnect()
          trecon = nil
       end
       end)
       repeat
        task.wait()
        updateAxs()
        task.wait()
        if hasaxe() and cooper.Character:FindFirstChild("Humanoid") and cooper.Character.Humanoid.Health > 0 and ready then
            updateAxs()
            task.wait()
            repeat 
                wait() 
            until #axs>0 and axs~= nil
        local ax = axs[1].ax -- needs to be fixed
        task.wait()
        local axStats = getAxStats(ax.ToolName.Value, tre.TreeClass.Value)
       local propertys = {
          tool = ax,
          height = 0.3,
          faceVector = Vector3.new(1, 0, 0),
          sectionId = 1,
          hitPoints = axStats.Damage,
          cooldown = axStats.SwingCooldown,
          cuttingClass = "Axe"
       }
    
          if cooper.Character:FindFirstChild("Humanoid") and cooper.Character.Humanoid.Health > 0 and ready and hasaxe() then
            local woodpos = getBig(tre)
            task.wait()
            cooper.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(woodpos+Vector3.new(1,0,1))
          replicatedfarts.Interaction.RemoteProxy:FireServer(tre.CutEvent, propertys)
          task.wait(axStats.SwingCooldown)
          end
          task.wait()
        end
       until newtre ~= nil
       return newtre
    end
    end



    function bringy(treclas)
        cooper.Character.Humanoid:UnequipTools()
        task.wait()
        updateAxs()
        repeat wait(); updateAxs() until hasaxe();
        updateAxs()
        local ax = axs[1].ax
        local tre, msg = getTrreOfClas(treclas)
        if not tre then
        return false, msg
        end
        tre = choppy(tre, ax)
        repeat wait()
                
        until cooper.Character and cooper.Character:FindFirstChild("Humanoid") and cooper.Character:FindFirstChild("Humanoid").Health > 0
        task.spawn(function()
            for cooper=1, 60 do
                replicatedfarts.Interaction.ClientIsDragging:FireServer(tre)
                task.wait()
            end
        end)
        task.wait(0.1)
        tre.PrimaryPart = tre.WoodSection
        for i=1, 60 do
        tre.PrimaryPart.Velocity = Vector3.new(0, 0, 0)
        tre:PivotTo(curpos)
        cooper.Character.HumanoidRootPart.CFrame = tre.WoodSection.CFrame
        task.wait()
        end
        wait()
        _G.running = false
        finished = true
        return true, "Don get tre!"
    end

    workspace.PlayerModels.ChildAdded:Connect(function(a)
        if finished then return end
        task.wait(0.25)
        if a:FindFirstChild("Owner") and a:FindFirstChild("Owner").Value == game.Players.LocalPlayer then
            if a:FindFirstChild("ToolName") and a.ToolName.Value == "EndTimesAxe" then
                plraxe = a
            end
        end
    end)

    local catschar = cooper.Character or cooper.CharacterAdded:Wait()

    function getlonetree()
        if finished then return end
        curpos = cooper.Character.HumanoidRootPart.CFrame
        _G.running = true
        task.wait()
        updateAxs()
        catschar = cooper.Character or cooper.CharacterAdded:Wait()
        local catshuman = catschar.Humanoid
        catshuman.Died:Connect(function()
            if finished then return end
            ready = false
            updateAxs()
            ready = false
        end)
        cooper.CharacterAdded:Connect(function()
            if finished then return end
            repeat wait()
                
            until cooper.Character and cooper.Character:FindFirstChild("HumanoidRootPart") and cooper.Character:FindFirstChild("Humanoid").Health > 0
            updateAxs()
            ready = true
            pickupaxe(plraxe)
            updateAxs()
            repeat wait() until hasaxe()
            task.wait()
            updateAxs()
            bringy("LoneCave")
        end)
        ready = true
        if ready and #axs == 0 then return false, "Pleas pickup a ax." end
        table.sort(axs, function(cooper1, cooper2)
        return cooper1.stats.Damage > cooper2.stats.Damage
        end)
            if hasaxe() and catshuman.Health > 0 and ready then
                task.wait()
                updateAxs()
                bringy("LoneCave")
            end
           task.wait(0.01) 
    
    end
    task.wait()


        function fling()
            for _, child in pairs(speaker.Character:GetDescendants()) do
                if child:IsA("BasePart") then
                    child.CustomPhysicalProperties = PhysicalProperties.new(math.huge, 0.3, 0.5)
                    end
                end
                wait(.1)
                local bambam = Instance.new("BodyAngularVelocity")
                bambam.Name = randomString()
                bambam.Parent = getRoot(speaker.Character)
                bambam.AngularVelocity = Vector3.new(0,99999,0)
                bambam.MaxTorque = Vector3.new(0,math.huge,0)
                bambam.P = math.huge
                local Char = speaker.Character:GetChildren()
                for i, v in next, Char do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                        v.Massless = true
                        v.Velocity = Vector3.new(0, 0, 0)
                    end
                end
                flinging = true
                repeat
                    bambam.AngularVelocity = Vector3.new(0,99999,0)
                    wait(.2)
                    bambam.AngularVelocity = Vector3.new(0,0,0)
                    wait(.1)
            until flinging == false
        end
        

        function unfling()
            flinging = false
            wait(.1)
            local speakerChar = speaker.Character
            if not speakerChar or not getRoot(speakerChar) then return end
            for i,v in pairs(getRoot(speakerChar):GetChildren()) do
                if v.ClassName == 'BodyAngularVelocity' then
                    v:Destroy()
                end
            end
            for _, child in pairs(speakerChar:GetDescendants()) do
                if child.ClassName == "Part" or child.ClassName == "MeshPart" then
                    child.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
                end
            end
        end


    --View LoneCave--
    local Part = Instance.new("Part", game:GetService("Workspace"))
    Part.Name = "WaypointLocation"
    Part.Anchored = true
    Part.Transparency = 1
    Part.Size = Vector3.new(2, 1, 1)
    Part.CanCollide = false
    Part.Position = Vector3.new(-46.3202, -197.261, -1345.9)

    function startview()
        WayPointPart = workspace:FindFirstChild("WaypointLocation")
        if WayPointPart then
            game.Workspace.CurrentCamera.CameraSubject = WayPointPart
            local cam = (workspace.CurrentCamera);
            local char = (workspace:FindFirstChild(game.Players.LocalPlayer.Name));
            cam.CFrame = CFrame.new(10,50,75);
        end
    end

    function endview()
        WayPointPart = workspace:FindFirstChild("WaypointLocation")
        if WayPointPart then
            wait(0.1)
            local cam = (workspace.CurrentCamera);
            local char = (workspace:FindFirstChild(game.Players.LocalPlayer.Name));
            cam.CameraSubject = (char:FindFirstChild("Humanoid"));
            cam.CameraType = Enum.CameraType.Custom;
            wait();
            script:Destroy();
        end
    end

    function blueprints()
        local open = game.Workspace.PlayerModels.ChildAdded:connect(function(v)
            spawn(function()
                if v.Type.Value == "Blueprint" then
                    game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(v, "Open box")
                end
            end)
        end)
    end

    function is_in_frame(screenpos, frame)
        local xPos = frame.AbsolutePosition.X
        local yPos = frame.AbsolutePosition.Yisinframe

        local xSize = frame.AbsoluteSize.X
        local ySize = frame.AbsoluteSize.Y

        local check1 = screenpos.X >= xPos and screenpos.X <= xPos + xSize
        local check2 = screenpos.X <= xPos and screenpos.X >= xPos + xSize

        local check3 = screenpos.Y >= yPos and screenpos.Y <= yPos + ySize
        local check4 = screenpos.Y <= yPos and screenpos.Y >= yPos + ySize

        local finale = (check1 and check3) or (check2 and check3) or (check1 and check4) or (check2 and check4)

        return finale
    end

    local Cords;
    function SetCords()
        if game.Workspace:FindFirstChild("jore") then game.Workspace.jore:Destroy() end
        local CordsPart = Instance.new("Part",game.Workspace)
        CordsPart.CanCollide = false
        CordsPart.Anchored = true
        CordsPart.Shape = Enum.PartType.Ball
        CordsPart.Color = Color3.fromRGB(115, 185, 255)
        CordsPart.Transparency = 1
        CordsPart.Size = Vector3.new(2, 2, 2)
        CordsPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        CordsPart.Material = Enum.Material.Neon
        CordsPart.Name = "jore"
        Cords = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end



    function SelectionTp()
        local Old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for i,v in next, game.Workspace.PlayerModels:GetDescendants() do
            if v:FindFirstChild("Selection") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v:FindFirstChild("Selection").Parent.CFrame.p) * CFrame.new(5,0,0)
                
                task.wait(0.1)
        
                for a = 1,25,1 do
                    game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v.Parent)
                    v.Selection.Parent.CFrame = Cords
                    task.wait()
                end
            end
        end
        task.wait(0.5)
        _G.TRUEORNOTTRUE = true
        if _G.TRUEORNOTTRUE == true then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Old
        end
        _G.Autodeselect = true
        if _G.Autodeselect == true then
            for i,v in pairs(game.Workspace.PlayerModels:GetChildren()) do
                if v:FindFirstChild("Main") then
                    if v.Main:FindFirstChild("Selection") then
                    v.Main.Selection:Destroy()
                end
            end
        end
    end
    end


    function GetChar()
        local Player = game.Players.LocalPlayer
        if Player.Character == nil then
            repeat task.wait() until Player.Character ~= nil
            return Player.Character
        else
            return Player.Character
        end
    end

    function remove_waypoint()
        game.Workspace:FindFirstChild("jore"):Destroy()
    end

    function tele_to_waypoint()
        local Char = GetChar()
        local Humanoid = Char:FindFirstChildOfClass("Humanoid")
        local Root = Char:FindFirstChild("HumanoidRootPart")
        local Waypoint = game.Workspace:FindFirstChild("jore")
        if Waypoint then
            local WaypointPos = Waypoint.Position
            local RootPos = Root.Position
            local Distance = (WaypointPos - RootPos).magnitude
            local TpTime = Distance / Humanoid.WalkSpeed
            local TpPos = CFrame.new(WaypointPos)
            Root.CFrame = TpPos
            task.wait(TpTime)
        end
    end


    local ClickTp = false
    local ClickToSellMouseVal;
    local Betterselection;
    local Mouse = game.Players.LocalPlayer:GetMouse()

    function selectionv3()
        function selectionv2(PLY)
            if _G.selectionv2 == false then Betterselection:Disconnect() return print("Func Off") end
                Betterselection = Mouse.Button1Up:Connect(function()
                    for i,v in pairs(game.Workspace.PlayerModels:GetChildren()) do
                    if v:FindFirstChild("Main") then
                    if v.Main.Parent.Name == Mouse.Target.Parent.Name then
                    if Mouse.Target.Parent:FindFirstChild("Owner") and v.Main.Owner.Value == Mouse.Target.Parent.Owner.Value then
                    if v.Main:FindFirstChild("Selection")then
                    else
                    local bobv2 = Instance.new("SelectionBox", v.Main)
                    bobv2.Name = "Selection"
                    bobv2.Adornee = bobv2.Parent
                    bobv2.SurfaceTransparency = .75
                    bobv2.LineThickness = 0.02
                    bobv2.SurfaceColor3 = Color3.fromRGB(0,0,0)
                    bobv2.Color3 = Color3.fromRGB(115, 185, 255)
                end
                    
                end
            end
            end
            end
            end)
            end
        end



    function selectionv2(PLY)
    if _G.selectionv2 == false then Betterselection:Disconnect() return print("Func Off") end
        Betterselection = Mouse.Button1Up:Connect(function()
            for i,v in pairs(game.Workspace.PlayerModels:GetChildren()) do
            if v:FindFirstChild("Main") then
            if v.Main.Parent.Name == Mouse.Target.Parent.Name then
            if Mouse.Target.Parent:FindFirstChild("Owner") and tostring(v.Owner.Value) == PLY then
            if v.Main:FindFirstChild("Selection") then
            else
            local bobv2 = Instance.new("SelectionBox", v.Main)
            bobv2.Name = "Selection"
            bobv2.Adornee = bobv2.Parent
            bobv2.SurfaceTransparency = .75
            bobv2.LineThickness = 0.02
            bobv2.SurfaceColor3 = Color3.fromRGB(0,0,0)
            bobv2.Color3 = Color3.fromRGB(115, 185, 255)
        end
            
        end
    end
    end
    end
    end)
    end



    function ClickToTP()
        if ClickTp == false then ClickToSellMouseVal:Disconnect() return print("Func Off") end
        ClickToSellMouseVal = Mouse.Button1Up:Connect(function()
            local target = Mouse.Target.Parent
            if target:FindFirstChild("Owner") and target:FindFirstChild("Main") then
            for i,v in pairs(game.Workspace.PlayerModels:GetChildren()) do
                if Mouse.Target:FindFirstChild("Selection") then
                else
                local bob = Instance.new("SelectionBox", target.Main)
                bob.Name = "Selection"
                bob.Adornee = bob.Parent
                bob.SurfaceTransparency = 0.50
                bob.LineThickness = 0.02
                bob.SurfaceColor3 = Color3.fromRGB(0,0,0)
                bob.Color3 = Color3.fromRGB(115, 185, 255)
                end
            end
        end
        end)
    end



        function WOODClickToTP(val)
            if val == false then ClickToSellMouseVal:Disconnect() return print("Func Off") end
            ClickToSellMouseVal = Mouse.Button1Up:Connect(function()
                local target = Mouse.Target.Parent
                if target:FindFirstChild("Owner") and target:FindFirstChild("WoodSection") then
                    for i,v in pairs(game.Workspace.PlayerModels:GetChildren()) do
                    if Mouse.Target:FindFirstChild("Selection") then
                    else
                    local bob = Instance.new("SelectionBox", target.WoodSection)
                    bob.Name = "Selection"
                    bob.Adornee = bob.Parent
                    bob.SurfaceTransparency = 0.75
                    bob.LineThickness = 0.02
                    bob.SurfaceColor3 = Color3.fromRGB(0,0,0)
                    bob.Color3 = Color3.fromRGB(115, 185, 255)
                    end
                    end
            end
            end)
        end

        

        function WOODselectionv2(PLY, val)
            if val == false then Betterselection:Disconnect() return print("Test") end
            Betterselection = Mouse.Button1Up:Connect(function()
            for i,v in pairs(game.Workspace.PlayerModels:GetChildren()) do
                local target = Mouse.Target.Parent
                if v:FindFirstChild("WoodSection") then
                    if v.TreeClass.Value == Mouse.Target.Parent.TreeClass.Value then
                        if Mouse.Target.Parent:FindFirstChild("Owner") and tostring(v.Owner.Value) == PLY then
                        if v.WoodSection:FindFirstChild("Selection") then
                            else
                            local bobv2 = Instance.new("SelectionBox", v.WoodSection)
                            bobv2.Name = "Selection"
                            bobv2.Adornee = bobv2.Parent
                            bobv2.SurfaceTransparency = 0.75
                            bobv2.LineThickness = 0.02
                            bobv2.SurfaceColor3 = Color3.fromRGB(0,0,0)
                            bobv2.Color3 = Color3.fromRGB(115, 185, 255)
                            end
                        end
                    end
                end
            end
            end)
        end

        
        
        

        function WoodSelectionTp(direction,tp)
            if direction == "Sideways" then
            OldHumanCFrameSpot = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
            OldWoodPlace1 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.Angles(math.rad(90), 0, 0) + Vector3.new(0, -5, 0),1000,game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
            elseif direction == "Upwards" then	
                OldHumanCFrameSpot = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
                OldWoodPlace1 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
            end
            for i,v in next, game.Workspace.PlayerModels:GetDescendants() do
                if v:FindFirstChild("Selection") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v:FindFirstChild("Selection").Parent.CFrame.p) * CFrame.new(5,0,0)
                    if not v.Parent.PrimaryPart then
                    v.Parent.PrimaryPart = v:FindFirstChild("Selection").Parent
                    end
                    
                    for a = 1,25,1 do
                        game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v.Parent)
                        v.Selection.Parent.CFrame = Cords
                        task.wait()
                    end
                    if _G.aftertpdeselect == true then
                        v.Selection:Destroy()
                    end
                end
            end
            task.wait(0.5)
            if tp == true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldHumanCFrameSpot
        
            if _G.Autodeselect2 == true then
                for i,v in pairs(game.Workspace.PlayerModels:GetChildren()) do
                    if v:FindFirstChild("WoodSection") then
                        if v.WoodSection:FindFirstChild("Selection") then
                        v.WoodSection.Selection:Destroy()
                    end
                end
            end
        end
        end
    end



    function woodunselect()
            for i,v in pairs(game.Workspace.PlayerModels:GetChildren()) do
                if v:FindFirstChild("WoodSection") then
                    if v.WoodSection:FindFirstChild("Selection") then
                    v.WoodSection.Selection:Destroy()
                end
            end
        end
    end



    function itemunselect()
        for i,v in pairs(game.Workspace.PlayerModels:GetChildren()) do
            if v:FindFirstChild("Main") then
            if v.Main:FindFirstChild("Selection") then
            v.Main.Selection:Destroy()
        end
    end
    end
    end


    function antiblacklist()
        noclip()
        game.Players.LocalPlayer.PlayerGui.NoticeGUI.Enabled = false
        game.Players.LocalPlayer.Character.Humanoid.Name = 1
        local l = game.Players.LocalPlayer.Character["1"]:Clone()
        l.Parent = game.Players.LocalPlayer.Character
        l.Name = "Humanoid"
        wait(0.1)
        game.Players.LocalPlayer.Character["1"]:Destroy()
        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
        wait(0.1)
        game.Players.LocalPlayer.Character.Animate.Disabled = true
        wait(0.7)
        local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.Animate.Disabled = false
        game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
        wait(5)
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
    end

    function offantiblacklist()
        clip()
        game.Players.LocalPlayer.PlayerGui.NoticeGUI.Enabled = true
    end

    function better()
        local Lighting = game.Lighting
        local ColorCorrection = game.Lighting.ColorCorrection
        local Blur = Instance.new("BlurEffect")
        local SunRays = Instance.new("SunRaysEffect")
        local Bloom = Instance.new("BloomEffect")

        Blur.Parent = Lighting
        SunRays.Parent = Lighting
        Bloom.Parent = Lighting

        Blur.Enabled = true
        Blur.Size = 3

        SunRays.Enabled = true
        SunRays.Intensity = 0.2
        SunRays.Spread = 1

        Bloom.Enabled = true
        Bloom.Intensity = 1
        Bloom.Size = 32
        Bloom.Threshold = 1
        
        Lighting.FogColor = Color3.fromRGB(120, 150, 200)
        Lighting.GeographicLatitude = 500
        Lighting.Brightness = 0.1
        Lighting.FogEnd = 750
        Lighting.FogStart = 0
        Lighting.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
        
        ColorCorrection.Brightness = 0.1
        ColorCorrection.Contrast = 0.15
        ColorCorrection.Enabled = true
        ColorCorrection.Saturation = 0.25
        ColorCorrection.TintColor = Color3.fromRGB(255, 222, 211)
        
        --delete--
        Lighting.Owner:Destroy()
        Lighting.Spook:Destroy()
        Lighting.SunPos:Destroy()
    end
    --Lasso--  
    function baselasso()
        loadstring(game:HttpGet('https://pastebin.com/raw/bharU0FM'))()
    end


    function freelandmax()
        for i,v in next, game:GetService("Workspace").Properties:GetChildren() do
            if v:FindFirstChild("OriginSquare") then
                if v.OriginSquare:FindFirstChild("Selection") then
                game:GetService("ReplicatedStorage").PropertyPurchasing.ClientPurchasedProperty:FireServer(v,v.OriginSquare.Position)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.OriginSquare.CFrame + Vector3.new(0,2,0)
                break
            end
        end
        end
    end



    function maxdupeunselcte()
        for i,v in pairs(game.Workspace.Properties:GetChildren()) do
            if v:FindFirstChild("OriginSquare") then
                if v.OriginSquare:FindFirstChild("Selection") then
                    v.OriginSquare.Selection:Destroy()
                end
            end
        end
    end


    function dupelandoff()
        loadstring(game:HttpGet('https://pastebin.com/raw/anQRnXUL'))()
        maxdupeunselcte()
    end
    --Tabels--

    locations = {"The Den", "Lighthouse", "Safari", "Bridge", "Bob's Shack", "EndTimes Cave", "The Swamp", "The Cabin", "Volcano", "Boxed Cars", "Tiaga Peak", "Land Store", "Link's Logic", "Palm Island", "Palm Island 2", "Palm Island 3", "Fine Art Shop", "SnowGlow Biome", "Cave", "Shrine Of Sight", "Fancy Furnishings", "Docks", "Strange Man", "Wood Dropoff", "Snow Biome", "Wood RUs", "Green Box", "Spawn", "Cherry Meadow", "Bird Cave"}

    --UILIB--

    repeat task.wait() until game:IsLoaded()
    local library = {}
    local ToggleUI = false
    library.currentTab = nil
    library.flags = {}
    
    local services = setmetatable({}, {
      __index = function(t, k)
        return game.GetService(game, k)
      end
    })
    
    local mouse = services.Players.LocalPlayer:GetMouse()
    
    function Tween(obj, t, data)
        services.TweenService:Create(obj, TweenInfo.new(t[1], Enum.EasingStyle[t[2]], Enum.EasingDirection[t[3]]), data):Play()
        return true
    end
    
    function Ripple(obj)
        spawn(function()
            if obj.ClipsDescendants ~= true then
                obj.ClipsDescendants = true
            end
            local Ripple = Instance.new("ImageLabel")
            Ripple.Name = "Ripple"
            Ripple.Parent = obj
            Ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Ripple.BackgroundTransparency = 1.000
            Ripple.ZIndex = 8
            Ripple.Image = "rbxassetid://2708891598"
            Ripple.ImageTransparency = 0.800
            Ripple.ScaleType = Enum.ScaleType.Fit
            Ripple.ImageColor3 = Color3.fromRGB(255, 255, 255)
            Ripple.Position = UDim2.new((mouse.X - Ripple.AbsolutePosition.X) / obj.AbsoluteSize.X, 0, (mouse.Y - Ripple.AbsolutePosition.Y) / obj.AbsoluteSize.Y, 0)
            Tween(Ripple, {.3, 'Linear', 'InOut'}, {Position = UDim2.new(-5.5, 0, -5.5, 0), Size = UDim2.new(12, 0, 12, 0)})
            wait(0.15)
            Tween(Ripple, {.3, 'Linear', 'InOut'}, {ImageTransparency = 1})
            wait(.3)
            Ripple:Destroy()
        end)
    end
    
    local toggled = false
    
    -- # Switch Tabs # --
    local switchingTabs = false
    function switchTab(new)
      if switchingTabs then return end
      local old = library.currentTab
      if old == nil then
        new[2].Visible = true
        library.currentTab = new
        services.TweenService:Create(new[1], TweenInfo.new(0.1), {ImageTransparency = 0}):Play()
        services.TweenService:Create(new[1].TabText, TweenInfo.new(0.1), {TextTransparency = 0}):Play()
        return
      end
      
      if old[1] == new[1] then return end
      switchingTabs = true
      library.currentTab = new
    
      services.TweenService:Create(old[1], TweenInfo.new(0.1), {ImageTransparency = 0.2}):Play()
      services.TweenService:Create(new[1], TweenInfo.new(0.1), {ImageTransparency = 0}):Play()
      services.TweenService:Create(old[1].TabText, TweenInfo.new(0.1), {TextTransparency = 0.2}):Play()
      services.TweenService:Create(new[1].TabText, TweenInfo.new(0.1), {TextTransparency = 0}):Play()
    
      old[2].Visible = false
      new[2].Visible = true
      
      task.wait(0.1)
    
      switchingTabs = false
    end
    
    -- # Drag, Stolen from Kiriot or Wally # --
    function drag(frame, hold)
        if not hold then
            hold = frame
        end
        local dragging
        local dragInput
        local dragStart
        local startPos
    
        local function update(input)
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    
        hold.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                dragging = true
                dragStart = input.Position
                startPos = frame.Position
    
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end)
            end
        end)
    
        frame.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement then
                dragInput = input
            end
        end)
    
        services.UserInputService.InputChanged:Connect(function(input)
            if input == dragInput and dragging then
                update(input)
            end
        end)
    end
    
    function library.new(library, name,theme)
        for _, v in next, services.CoreGui:GetChildren() do
            if v.Name == "frosty is cute" then
              v:Destroy()
            end
          end
          if theme == 'dark' then
            MainColor = Color3.fromRGB(10,10,10)
            Background = Color3.fromRGB(25, 25, 25)
            zyColor= Color3.fromRGB(15,15,15)
            beijingColor = Color3.fromRGB(255, 247, 247)
            else
            MainColor = Color3.fromRGB(255, 247, 247)
            Background = Color3.fromRGB(8,8,8)
            zyColor= Color3.fromRGB(0, 0, 0)
            beijingColor = Color3.fromRGB(255, 247, 247)
        end
          local dogent = Instance.new("ScreenGui")
          local Main = Instance.new("Frame")
          local TabMain = Instance.new("Frame")
          local MainC = Instance.new("UICorner")
          local SB = Instance.new("Frame")
          local SBC = Instance.new("UICorner")
          local Side = Instance.new("Frame")
          local SideG = Instance.new("UIGradient")
          local TabBtns = Instance.new("ScrollingFrame")
          local TabBtnsL = Instance.new("UIListLayout")
          local ScriptTitle = Instance.new("TextLabel")
          local SBG = Instance.new("UIGradient") 
          local Open = Instance.new("TextButton")
          local UIG=Instance.new("UIGradient")
          local DropShadowHolder = Instance.new("Frame")
          local DropShadow = Instance.new("ImageLabel")
          local UICornerMain = Instance.new("UICorner")
          local UIGradient=Instance.new("UIGradient")
          local UIGradientTitle=Instance.new("UIGradient")
          
          if syn and syn.protect_gui then syn.protect_gui(dogent) end
        
          dogent.Name = "frosty is cute"
          dogent.Parent = services.CoreGui
          
          function UiDestroy()
              dogent:Destroy()
          end
          
              function ToggleUILib()
                if not ToggleUI then
                    dogent.Enabled = false
                    ToggleUI = true
                    else
                    ToggleUI = false
                    dogent.Enabled = true
                end
            end
          
          Main.Name = "Main"
          Main.Parent = dogent
          Main.AnchorPoint = Vector2.new(0.5, 0.5)
          Main.BackgroundColor3 = Background
          Main.BorderColor3 = MainColor
          Main.Position = UDim2.new(0.5, 0, 0.5, 0)
          Main.Size = UDim2.new(0, 572, 0, 353)
          Main.ZIndex = 1
          Main.Active = true
          Main.Draggable = true
          services.UserInputService.InputEnded:Connect(function(input)
          if input.KeyCode == Enum.KeyCode.LeftControl then
          if Main.Visible == true then
          Main.Visible = false else
          Main.Visible = true
          end
          end
          end)
          drag(Main)
          
          UICornerMain.Parent = Main
          UICornerMain.CornerRadius = UDim.new(0,3)
          
          DropShadowHolder.Name = "DropShadowHolder"
          DropShadowHolder.Parent = Main
          DropShadowHolder.BackgroundTransparency = 1.000
          DropShadowHolder.BorderSizePixel = 0
          DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
          DropShadowHolder.BorderColor3 = Color3.fromRGB(255,255,255)
          DropShadowHolder.ZIndex = 0
    
          DropShadow.Name = "DropShadow"
          DropShadow.Parent = DropShadowHolder
          DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
          DropShadow.BackgroundTransparency = 1.000
          DropShadow.BorderSizePixel = 0
          DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
          DropShadow.Size = UDim2.new(1, 43, 1, 43)
          DropShadow.ZIndex = 0
          DropShadow.Image = "rbxassetid://6015897843"
          DropShadow.ImageColor3 = Color3.fromRGB(255,255,255)
          DropShadow.ImageTransparency = 0.500
          DropShadow.ScaleType = Enum.ScaleType.Slice
          DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
    
    
          UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.10, Color3.fromRGB(255, 127, 0)), ColorSequenceKeypoint.new(0.20, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(0.30, Color3.fromRGB(0, 255, 0)), ColorSequenceKeypoint.new(0.40, Color3.fromRGB(0, 255, 255)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 0, 255)), ColorSequenceKeypoint.new(0.60, Color3.fromRGB(139, 0, 255)), ColorSequenceKeypoint.new(0.70, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.80, Color3.fromRGB(255, 127, 0)), ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 0))}
          UIGradient.Parent = DropShadow
    
          local TweenService = game:GetService("TweenService")
          local tweeninfo = TweenInfo.new(7, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1)
          local tween = TweenService:Create(UIGradient, tweeninfo, {Rotation = 360})
          tween:Play()
    
              function toggleui()
                toggled = not toggled
                spawn(function()
                    if toggled then wait(0.3) end
                end)
                Tween(Main, {0.3, 'Sine', 'InOut'}, {
                    Size = UDim2.new(0, 609, 0, (toggled and 505 or 0))
                })
            end
          
          TabMain.Name = "TabMain"
          TabMain.Parent = Main
          TabMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          TabMain.BackgroundTransparency = 1.000
          TabMain.Position = UDim2.new(0.217000037, 0, 0, 3)
          TabMain.Size = UDim2.new(0, 448, 0, 353)
          
          MainC.CornerRadius = UDim.new(0, 5.5)
          MainC.Name = "MainC"
          MainC.Parent = Frame
          
          SB.Name = "SB"
          SB.Parent = Main
          SB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          SB.BorderColor3 = MainColor
          SB.Size = UDim2.new(0, 8, 0, 353)
          
          SBC.CornerRadius = UDim.new(0, 6)
          SBC.Name = "SBC"
          SBC.Parent = SB
          
          Side.Name = "Side"
          Side.Parent = SB
          Side.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          Side.BorderColor3 = Color3.fromRGB(255, 255, 255)
          Side.BorderSizePixel = 0
          Side.ClipsDescendants = true
          Side.Position = UDim2.new(1, 0, 0, 0)
          Side.Size = UDim2.new(0, 110, 0, 353)
          
          SideG.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, zyColor), ColorSequenceKeypoint.new(1.00, zyColor)}
          SideG.Rotation = 90
          SideG.Name = "SideG"
          SideG.Parent = Side
          
          TabBtns.Name = "TabBtns"
          TabBtns.Parent = Side
          TabBtns.Active = true
          TabBtns.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          TabBtns.BackgroundTransparency = 1.000
          TabBtns.BorderSizePixel = 0
          TabBtns.Position = UDim2.new(0, 0, 0.0973535776, 0)
          TabBtns.Size = UDim2.new(0, 110, 0, 318)
          TabBtns.CanvasSize = UDim2.new(0, 0, 1, 0)
          TabBtns.ScrollBarThickness = 0
          
          TabBtnsL.Name = "TabBtnsL"
          TabBtnsL.Parent = TabBtns
          TabBtnsL.SortOrder = Enum.SortOrder.LayoutOrder
          TabBtnsL.Padding = UDim.new(0, 12)
          
          ScriptTitle.Name = "ScriptTitle"
          ScriptTitle.Parent = Side
          ScriptTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          ScriptTitle.BackgroundTransparency = 1.000
          ScriptTitle.Position = UDim2.new(0, 0, 0.00953488424, 0)
          ScriptTitle.Size = UDim2.new(0, 102, 0, 20)
          ScriptTitle.Font = Enum.Font.GothamSemibold
          ScriptTitle.Text = name
          ScriptTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
          ScriptTitle.TextSize = 14.000
          ScriptTitle.TextScaled = true
          ScriptTitle.TextXAlignment = Enum.TextXAlignment.Left
          
          UIGradientTitle.Parent = ScriptTitle
         
          local function NPLHKB_fake_script() 
            local script = Instance.new('LocalScript', ScriptTitle)
         
            local button = script.Parent
            local gradient = button.UIGradient
            local ts = game:GetService("TweenService")
            local ti = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
            local offset = {Offset = Vector2.new(1, 0)}
            local create = ts:Create(gradient, ti, offset)
            local startingPos = Vector2.new(-1, 0)
            local list = {} 
            local s, kpt = ColorSequence.new, ColorSequenceKeypoint.new
            local counter = 0
            local status = "down" 
            gradient.Offset = startingPos
            local function rainbowColors()
                local sat, val = 255, 255 
                for i = 1, 10 do 
                    local hue = i * 17 
                    table.insert(list, Color3.fromHSV(hue / 255, sat / 255, val / 255))
                end
            end
            rainbowColors()
            gradient.Color = s({
                kpt(0, list[#list]),
                kpt(0.5, list[#list - 1]),
                kpt(1, list[#list - 2])
            })
            counter = #list
            local function animate()
                create:Play()
                create.Completed:Wait() 
                gradient.Offset = startingPos 
                gradient.Rotation = 180
                if counter == #list - 1 and status == "down" then
                    gradient.Color = s({
                        kpt(0, gradient.Color.Keypoints[1].Value),
                        kpt(0.5, list[#list]), 
                        kpt(1, list[1]) 
                    })
                    counter = 1
                    status = "up" 
                elseif counter == #list and status == "down" then 
                    gradient.Color = s({
                        kpt(0, gradient.Color.Keypoints[1].Value),
                        kpt(0.5, list[1]),
                        kpt(1, list[2])
                    })
                    counter = 2
                    status = "up"
                elseif counter <= #list - 2 and status == "down" then 
                    gradient.Color = s({
                        kpt(0, gradient.Color.Keypoints[1].Value),
                        kpt(0.5, list[counter + 1]), 
                        kpt(1, list[counter + 2])
                    })
                    counter = counter + 2
                    status = "up"
                end
                create:Play()
                create.Completed:Wait()
                gradient.Offset = startingPos
                gradient.Rotation = 0 
                if counter == #list - 1 and status == "up" then
                    gradient.Color = s({ 
         
                        kpt(0, list[1]), 
                        kpt(0.5, list[#list]), 
                        kpt(1, gradient.Color.Keypoints[3].Value)
                    })
                    counter = 1
                    status = "down"
                elseif counter == #list and status == "up" then
                    gradient.Color = s({
                        kpt(0, list[2]),
                        kpt(0.5, list[1]), 
                        kpt(1, gradient.Color.Keypoints[3].Value)
                    })
                    counter = 2
                    status = "down"
                elseif counter <= #list - 2 and status == "up" then
                    gradient.Color = s({
                        kpt(0, list[counter + 2]), 
                        kpt(0.5, list[counter + 1]), 
                        kpt(1, gradient.Color.Keypoints[3].Value) 	
                    })
                    counter = counter + 2
                    status = "down"
                end
                animate()
            end
            animate()
         
        end
        coroutine.wrap(NPLHKB_fake_script)()
          
          SBG.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, zyColor), ColorSequenceKeypoint.new(1.00, zyColor)}
          SBG.Rotation = 90
          SBG.Name = "SBG"
          SBG.Parent = SB
        
          TabBtnsL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            TabBtns.CanvasSize = UDim2.new(0, 0, 0, TabBtnsL.AbsoluteContentSize.Y + 18)
          end)
          Open.Name = "Open"
          Open.Parent = dogent
          Open.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
          Open.Position = UDim2.new(0.00829315186, 0, 0.31107837, 0)
          Open.Size = UDim2.new(0, 61, 0, 32)
          Open.Font = Enum.Font.SourceSans
          Open.Text = "LW | O/C"
          Open.TextColor3 = Color3.fromRGB(255, 255, 255)
          Open.TextSize = 14.000
          Open.Active = true
          Open.Draggable = true
          Open.MouseButton1Click:Connect(function()
          Main.Visible = not Main.Visible
          end)
          UIG.Parent = Open
          local window = {}
          function window.Tab(window, name, icon)
            local Tab = Instance.new("ScrollingFrame")
            local TabIco = Instance.new("ImageLabel")
            local TabText = Instance.new("TextLabel")
            local TabBtn = Instance.new("TextButton")
            local TabL = Instance.new("UIListLayout")
        
            Tab.Name = "Tab"
            Tab.Parent = TabMain
            Tab.Active = true
            Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Tab.BackgroundTransparency = 1.000
            Tab.Size = UDim2.new(1, 0, 1, 0)
            Tab.ScrollBarThickness = 2
            Tab.Visible = false
            
            TabIco.Name = "TabIco"
            TabIco.Parent = TabBtns
            TabIco.BackgroundTransparency = 1.000
            TabIco.BorderSizePixel = 0
            TabIco.Size = UDim2.new(0, 24, 0, 24)
            TabIco.Image = ("rbxassetid://%s"):format((icon or 4370341699))
            TabIco.ImageTransparency = 0.2
            
            TabText.Name = "TabText"
            TabText.Parent = TabIco
            TabText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TabText.BackgroundTransparency = 1.000
            TabText.Position = UDim2.new(1.41666663, 0, 0, 0)
            TabText.Size = UDim2.new(0, 76, 0, 24)
            TabText.Font = Enum.Font.GothamSemibold
            TabText.Text = name
            TabText.TextColor3 = Color3.fromRGB(255, 255, 255)
            TabText.TextSize = 14.000
            TabText.TextXAlignment = Enum.TextXAlignment.Left
            TabText.TextTransparency = 0.2
            
            TabBtn.Name = "TabBtn"
            TabBtn.Parent = TabIco
            TabBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TabBtn.BackgroundTransparency = 1.000
            TabBtn.BorderSizePixel = 0
            TabBtn.Size = UDim2.new(0, 110, 0, 24)
            TabBtn.AutoButtonColor = false
            TabBtn.Font = Enum.Font.SourceSans
            TabBtn.Text = ""
            TabBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
            TabBtn.TextSize = 14.000
            
            TabL.Name = "TabL"
            TabL.Parent = Tab
            TabL.SortOrder = Enum.SortOrder.LayoutOrder
            TabL.Padding = UDim.new(0, 4)  
        
            TabBtn.MouseButton1Click:Connect(function()
                spawn(function()
                    Ripple(TabBtn)
                end)
              switchTab({TabIco, Tab})
            end)
        
            if library.currentTab == nil then switchTab({TabIco, Tab}) end
        
            TabL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
              Tab.CanvasSize = UDim2.new(0, 0, 0, TabL.AbsoluteContentSize.Y + 8)
            end)
        
            local tab = {}
            function tab.section(tab, name, TabVal)
              local Section = Instance.new("Frame")
              local SectionC = Instance.new("UICorner")
              local SectionText = Instance.new("TextLabel")
              local SectionOpen = Instance.new("ImageLabel")
              local SectionOpened = Instance.new("ImageLabel")
              local SectionToggle = Instance.new("ImageButton")
              local Objs = Instance.new("Frame")
              local ObjsL = Instance.new("UIListLayout")
        
              Section.Name = "Section"
              Section.Parent = Tab
              Section.BackgroundColor3 = zyColor
              Section.BackgroundTransparency = 1.000
              Section.BorderSizePixel = 0
              Section.ClipsDescendants = true
              Section.Size = UDim2.new(0.981000006, 0, 0, 36)
              
              SectionC.CornerRadius = UDim.new(0, 6)
              SectionC.Name = "SectionC"
              SectionC.Parent = Section
              
              SectionText.Name = "SectionText"
              SectionText.Parent = Section
              SectionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
              SectionText.BackgroundTransparency = 1.000
              SectionText.Position = UDim2.new(0.0887396261, 0, 0, 0)
              SectionText.Size = UDim2.new(0, 401, 0, 36)
              SectionText.Font = Enum.Font.GothamSemibold
              SectionText.Text = name
              SectionText.TextColor3 = Color3.fromRGB(255, 255, 255)
              SectionText.TextSize = 16.000
              SectionText.TextXAlignment = Enum.TextXAlignment.Left
              
              SectionOpen.Name = "SectionOpen"
              SectionOpen.Parent = SectionText
              SectionOpen.BackgroundTransparency = 1
              SectionOpen.BorderSizePixel = 0
              SectionOpen.Position = UDim2.new(0, -33, 0, 5)
              SectionOpen.Size = UDim2.new(0, 26, 0, 26)
              SectionOpen.Image = "http://www.roblox.com/asset/?id=6031302934"
              
              SectionOpened.Name = "SectionOpened"
              SectionOpened.Parent = SectionOpen
              SectionOpened.BackgroundTransparency = 1.000
              SectionOpened.BorderSizePixel = 0
              SectionOpened.Size = UDim2.new(0, 26, 0, 26)
              SectionOpened.Image = "http://www.roblox.com/asset/?id=6031302932"
              SectionOpened.ImageTransparency = 1.000
        
              SectionToggle.Name = "SectionToggle"
              SectionToggle.Parent = SectionOpen
              SectionToggle.BackgroundTransparency = 1
              SectionToggle.BorderSizePixel = 0
              SectionToggle.Size = UDim2.new(0, 26, 0, 26)
              
              Objs.Name = "Objs"
              Objs.Parent = Section
              Objs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
              Objs.BackgroundTransparency = 1
              Objs.BorderSizePixel = 0
              Objs.Position = UDim2.new(0, 6, 0, 36)
              Objs.Size = UDim2.new(0.986347735, 0, 0, 0)
        
              ObjsL.Name = "ObjsL"
              ObjsL.Parent = Objs
              ObjsL.SortOrder = Enum.SortOrder.LayoutOrder
              ObjsL.Padding = UDim.new(0, 8) 
              
              local open = TabVal
              if TabVal ~= false then
                Section.Size = UDim2.new(0.981000006, 0, 0, open and 36 + ObjsL.AbsoluteContentSize.Y + 8 or 36)
                SectionOpened.ImageTransparency = (open and 0 or 1)
                SectionOpen.ImageTransparency = (open and 1 or 0)
              end
              
              SectionToggle.MouseButton1Click:Connect(function()
                open = not open
                Section.Size = UDim2.new(0.981000006, 0, 0, open and 36 + ObjsL.AbsoluteContentSize.Y + 8 or 36)
                SectionOpened.ImageTransparency = (open and 0 or 1)
                SectionOpen.ImageTransparency = (open and 1 or 0)
              end)
        
              ObjsL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                if not open then return end
                Section.Size = UDim2.new(0.981000006, 0, 0, 36 + ObjsL.AbsoluteContentSize.Y + 8)
              end)
        
              local section = {}
              function section.Button(section, text, callback)
                local callback = callback or function() end
        
                local BtnModule = Instance.new("Frame")
                local Btn = Instance.new("TextButton")
                local BtnC = Instance.new("UICorner")    
                
                BtnModule.Name = "BtnModule"
                BtnModule.Parent = Objs
                BtnModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                BtnModule.BackgroundTransparency = 1.000
                BtnModule.BorderSizePixel = 0
                BtnModule.Position = UDim2.new(0, 0, 0, 0)
                BtnModule.Size = UDim2.new(0, 428, 0, 38)
                
                Btn.Name = "Btn"
                Btn.Parent = BtnModule
                Btn.BackgroundColor3 = zyColor
                Btn.BorderSizePixel = 0
                Btn.Size = UDim2.new(0, 428, 0, 38)
                Btn.AutoButtonColor = false
                Btn.Font = Enum.Font.GothamSemibold
                Btn.Text = "   " .. text
                Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
                Btn.TextSize = 16.000
                Btn.TextXAlignment = Enum.TextXAlignment.Left
                
                BtnC.CornerRadius = UDim.new(0, 6)
                BtnC.Name = "BtnC"
                BtnC.Parent = Btn
        
                Btn.MouseButton1Click:Connect(function()
                    spawn(function()
                        Ripple(Btn)
                    end)
                        spawn(callback)
                    end)
                end
        
            function section:Label(text)
              local LabelModule = Instance.new("Frame")
              local TextLabel = Instance.new("TextLabel")
              local LabelC = Instance.new("UICorner")
              
              LabelModule.Name = "LabelModule"
              LabelModule.Parent = Objs
              LabelModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
              LabelModule.BackgroundTransparency = 1.000
              LabelModule.BorderSizePixel = 0
              LabelModule.Position = UDim2.new(0, 0, NAN, 0)
              LabelModule.Size = UDim2.new(0, 428, 0, 19)
        
              TextLabel.Parent = LabelModule
              TextLabel.BackgroundColor3 = zyColor
              TextLabel.Size = UDim2.new(0, 428, 0, 22)
              TextLabel.Font = Enum.Font.GothamSemibold
              TextLabel.Text = text
              TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
              TextLabel.TextSize = 14.000
        
              LabelC.CornerRadius = UDim.new(0, 6)
              LabelC.Name = "LabelC"
              LabelC.Parent = TextLabel
              return TextLabel
            end
        
              function section.Toggle(section, text, flag, enabled, callback)
                local callback = callback or function() end
                local enabled = enabled or false
                assert(text, "No text provided")
                assert(flag, "No flag provided")
        
                library.flags[flag] = enabled
        
                local ToggleModule = Instance.new("Frame")
                local ToggleBtn = Instance.new("TextButton")
                local ToggleBtnC = Instance.new("UICorner")
                local ToggleDisable = Instance.new("Frame")
                local ToggleSwitch = Instance.new("Frame")
                local ToggleSwitchC = Instance.new("UICorner")
                local ToggleDisableC = Instance.new("UICorner")
                
                ToggleModule.Name = "ToggleModule"
                ToggleModule.Parent = Objs
                ToggleModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleModule.BackgroundTransparency = 1.000
                ToggleModule.BorderSizePixel = 0
                ToggleModule.Position = UDim2.new(0, 0, 0, 0)
                ToggleModule.Size = UDim2.new(0, 428, 0, 38)
                
                ToggleBtn.Name = "ToggleBtn"
                ToggleBtn.Parent = ToggleModule
                ToggleBtn.BackgroundColor3 = zyColor
                ToggleBtn.BorderSizePixel = 0
                ToggleBtn.Size = UDim2.new(0, 428, 0, 38)
                ToggleBtn.AutoButtonColor = false
                ToggleBtn.Font = Enum.Font.GothamSemibold
                ToggleBtn.Text = "   " .. text
                ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
                ToggleBtn.TextSize = 16.000
                ToggleBtn.TextXAlignment = Enum.TextXAlignment.Left
                
                ToggleBtnC.CornerRadius = UDim.new(0, 6)
                ToggleBtnC.Name = "ToggleBtnC"
                ToggleBtnC.Parent = ToggleBtn
                
                ToggleDisable.Name = "ToggleDisable"
                ToggleDisable.Parent = ToggleBtn
                ToggleDisable.BackgroundColor3 = Background
                ToggleDisable.BorderSizePixel = 0
                ToggleDisable.Position = UDim2.new(0.901869178, 0, 0.208881587, 0)
                ToggleDisable.Size = UDim2.new(0, 36, 0, 22)
                
                ToggleSwitch.Name = "ToggleSwitch"
                ToggleSwitch.Parent = ToggleDisable
                ToggleSwitch.BackgroundColor3 = beijingColor
                ToggleSwitch.Size = UDim2.new(0, 24, 0, 22)
                
                ToggleSwitchC.CornerRadius = UDim.new(0, 6)
                ToggleSwitchC.Name = "ToggleSwitchC"
                ToggleSwitchC.Parent = ToggleSwitch
                
                ToggleDisableC.CornerRadius = UDim.new(0, 6)
                ToggleDisableC.Name = "ToggleDisableC"
                ToggleDisableC.Parent = ToggleDisable        
        
                local funcs = {
                  SetState = function(self, state)
                    if state == nil then state = not library.flags[flag] end
                    if library.flags[flag] == state then return end
                    services.TweenService:Create(ToggleSwitch, TweenInfo.new(0.2), {Position = UDim2.new(0, (state and ToggleSwitch.Size.X.Offset / 2 or 0), 0, 0), BackgroundColor3 = (state and Color3.fromRGB(255, 255, 255) or beijingColor)}):Play()
                    library.flags[flag] = state
                    callback(state)
                  end,
                  Module = ToggleModule
                }
                
                if enabled ~= false then
                    funcs:SetState(flag,true)
                end
        
                ToggleBtn.MouseButton1Click:Connect(function()
                  funcs:SetState()
                end)
                return funcs
              end
        
              function section.Keybind(section, text, default, callback)
                local callback = callback or function() end
                assert(text, "No text provided")
                assert(default, "No default key provided")
        
                local default = (typeof(default) == "string" and Enum.KeyCode[default] or default)
                local banned = {
                  Return = true;
                  Space = true;
                  Tab = true;
                  Backquote = true;
                  CapsLock = true;
                  Escape = true;
                  Unknown = true;
                }
                local shortNames = {
                  RightControl = 'Right Ctrl',
                  LeftControl = 'Left Ctrl',
                  LeftShift = 'Left Shift',
                  RightShift = 'Right Shift',
                  Semicolon = ";",
                  Quote = '"',
                  LeftBracket = '[',
                  RightBracket = ']',
                  Equals = '=',
                  Minus = '-',
                  RightAlt = 'Right Alt',
                  LeftAlt = 'Left Alt'
                }
        
                local bindKey = default
                local keyTxt = (default and (shortNames[default.Name] or default.Name) or "None")
        
                local KeybindModule = Instance.new("Frame")
                local KeybindBtn = Instance.new("TextButton")
                local KeybindBtnC = Instance.new("UICorner")
                local KeybindValue = Instance.new("TextButton")
                local KeybindValueC = Instance.new("UICorner")
                local KeybindL = Instance.new("UIListLayout")
                local UIPadding = Instance.new("UIPadding")
        
                KeybindModule.Name = "KeybindModule"
                KeybindModule.Parent = Objs
                KeybindModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                KeybindModule.BackgroundTransparency = 1.000
                KeybindModule.BorderSizePixel = 0
                KeybindModule.Position = UDim2.new(0, 0, 0, 0)
                KeybindModule.Size = UDim2.new(0, 428, 0, 38)
                
                KeybindBtn.Name = "KeybindBtn"
                KeybindBtn.Parent = KeybindModule
                KeybindBtn.BackgroundColor3 = zyColor
                KeybindBtn.BorderSizePixel = 0
                KeybindBtn.Size = UDim2.new(0, 428, 0, 38)
                KeybindBtn.AutoButtonColor = false
                KeybindBtn.Font = Enum.Font.GothamSemibold
                KeybindBtn.Text = "   " .. text
                KeybindBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
                KeybindBtn.TextSize = 16.000
                KeybindBtn.TextXAlignment = Enum.TextXAlignment.Left
                
                KeybindBtnC.CornerRadius = UDim.new(0, 6)
                KeybindBtnC.Name = "KeybindBtnC"
                KeybindBtnC.Parent = KeybindBtn
                
                KeybindValue.Name = "KeybindValue"
                KeybindValue.Parent = KeybindBtn
                KeybindValue.BackgroundColor3 = Background
                KeybindValue.BorderSizePixel = 0
                KeybindValue.Position = UDim2.new(0.763033211, 0, 0.289473683, 0)
                KeybindValue.Size = UDim2.new(0, 100, 0, 28)
                KeybindValue.AutoButtonColor = false
                KeybindValue.Font = Enum.Font.Gotham
                KeybindValue.Text = keyTxt
                KeybindValue.TextColor3 = Color3.fromRGB(255, 255, 255)
                KeybindValue.TextSize = 14.000
                
                KeybindValueC.CornerRadius = UDim.new(0, 6)
                KeybindValueC.Name = "KeybindValueC"
                KeybindValueC.Parent = KeybindValue
                
                KeybindL.Name = "KeybindL"
                KeybindL.Parent = KeybindBtn
                KeybindL.HorizontalAlignment = Enum.HorizontalAlignment.Right
                KeybindL.SortOrder = Enum.SortOrder.LayoutOrder
                KeybindL.VerticalAlignment = Enum.VerticalAlignment.Center
                
                UIPadding.Parent = KeybindBtn
                UIPadding.PaddingRight = UDim.new(0, 6)   
                
                services.UserInputService.InputBegan:Connect(function(inp, gpe)
                  if gpe then return end
                  if inp.UserInputType ~= Enum.UserInputType.Keyboard then return end
                  if inp.KeyCode ~= bindKey then return end
                  callback(bindKey.Name)
                end)
                
                KeybindValue.MouseButton1Click:Connect(function()
                  KeybindValue.Text = "..."
                  wait()
                  local key, uwu = services.UserInputService.InputEnded:Wait()
                  local keyName = tostring(key.KeyCode.Name)
                  if key.UserInputType ~= Enum.UserInputType.Keyboard then
                    KeybindValue.Text = keyTxt
                    return
                  end
                  if banned[keyName] then
                    KeybindValue.Text = keyTxt
                    return
                  end
                  wait()
                  bindKey = Enum.KeyCode[keyName]
                  KeybindValue.Text = shortNames[keyName] or keyName
                end)
        
                KeybindValue:GetPropertyChangedSignal("TextBounds"):Connect(function()
                  KeybindValue.Size = UDim2.new(0, KeybindValue.TextBounds.X + 30, 0, 28)
                end)
                KeybindValue.Size = UDim2.new(0, KeybindValue.TextBounds.X + 30, 0, 28)
              end
        
              function section.Textbox(section, text, flag, default, callback)
                local callback = callback or function() end
                assert(text, "No text provided")
                assert(flag, "No flag provided")
                assert(default, "No default text provided")
        
                library.flags[flag] = default
        
                local TextboxModule = Instance.new("Frame")
                local TextboxBack = Instance.new("TextButton")
                local TextboxBackC = Instance.new("UICorner")
                local BoxBG = Instance.new("TextButton")
                local BoxBGC = Instance.new("UICorner")
                local TextBox = Instance.new("TextBox")
                local TextboxBackL = Instance.new("UIListLayout")
                local TextboxBackP = Instance.new("UIPadding")  
        
                TextboxModule.Name = "TextboxModule"
                TextboxModule.Parent = Objs
                TextboxModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextboxModule.BackgroundTransparency = 1.000
                TextboxModule.BorderSizePixel = 0
                TextboxModule.Position = UDim2.new(0, 0, 0, 0)
                TextboxModule.Size = UDim2.new(0, 428, 0, 38)
                
                TextboxBack.Name = "TextboxBack"
                TextboxBack.Parent = TextboxModule
                TextboxBack.BackgroundColor3 = zyColor
                TextboxBack.BorderSizePixel = 0
                TextboxBack.Size = UDim2.new(0, 428, 0, 38)
                TextboxBack.AutoButtonColor = false
                TextboxBack.Font = Enum.Font.GothamSemibold
                TextboxBack.Text = "   " .. text
                TextboxBack.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextboxBack.TextSize = 16.000
                TextboxBack.TextXAlignment = Enum.TextXAlignment.Left
                
                TextboxBackC.CornerRadius = UDim.new(0, 6)
                TextboxBackC.Name = "TextboxBackC"
                TextboxBackC.Parent = TextboxBack
                
                BoxBG.Name = "BoxBG"
                BoxBG.Parent = TextboxBack
                BoxBG.BackgroundColor3 = Background
                BoxBG.BorderSizePixel = 0
                BoxBG.Position = UDim2.new(0.763033211, 0, 0.289473683, 0)
                BoxBG.Size = UDim2.new(0, 100, 0, 28)
                BoxBG.AutoButtonColor = false
                BoxBG.Font = Enum.Font.Gotham
                BoxBG.Text = ""
                BoxBG.TextColor3 = Color3.fromRGB(255, 255, 255)
                BoxBG.TextSize = 14.000
                
                BoxBGC.CornerRadius = UDim.new(0, 6)
                BoxBGC.Name = "BoxBGC"
                BoxBGC.Parent = BoxBG
                
                TextBox.Parent = BoxBG
                TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextBox.BackgroundTransparency = 1.000
                TextBox.BorderSizePixel = 0
                TextBox.Size = UDim2.new(1, 0, 1, 0)
                TextBox.Font = Enum.Font.Gotham
                TextBox.Text = default
                TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextBox.TextSize = 14.000
                
                TextboxBackL.Name = "TextboxBackL"
                TextboxBackL.Parent = TextboxBack
                TextboxBackL.HorizontalAlignment = Enum.HorizontalAlignment.Right
                TextboxBackL.SortOrder = Enum.SortOrder.LayoutOrder
                TextboxBackL.VerticalAlignment = Enum.VerticalAlignment.Center
                
                TextboxBackP.Name = "TextboxBackP"
                TextboxBackP.Parent = TextboxBack
                TextboxBackP.PaddingRight = UDim.new(0, 6)
        
                TextBox.FocusLost:Connect(function()
                  if TextBox.Text == "" then
                    TextBox.Text = default
                  end
                  library.flags[flag] = TextBox.Text
                  callback(TextBox.Text)
                end)
        
                TextBox:GetPropertyChangedSignal("TextBounds"):Connect(function()
                  BoxBG.Size = UDim2.new(0, TextBox.TextBounds.X + 30, 0, 28)
                end)
                BoxBG.Size = UDim2.new(0, TextBox.TextBounds.X + 30, 0, 28)
              end
        
              function section.Slider(section, text, flag, default, min, max, precise, callback)
                local callback = callback or function() end
                local min = min or 1
                local max = max or 10
                local default = default or min
                local precise = precise or false
        
                library.flags[flag] = default
        
                assert(text, "No text provided")
                assert(flag, "No flag provided")
                assert(default, "No default value provided")
                
                local SliderModule = Instance.new("Frame")
                local SliderBack = Instance.new("TextButton")
                local SliderBackC = Instance.new("UICorner")
                local SliderBar = Instance.new("Frame")
                local SliderBarC = Instance.new("UICorner")
                local SliderPart = Instance.new("Frame")
                local SliderPartC = Instance.new("UICorner")
                local SliderValBG = Instance.new("TextButton")
                local SliderValBGC = Instance.new("UICorner")
                local SliderValue = Instance.new("TextBox")
                local MinSlider = Instance.new("TextButton")
                local AddSlider = Instance.new("TextButton")   
                
                SliderModule.Name = "SliderModule"
                SliderModule.Parent = Objs
                SliderModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderModule.BackgroundTransparency = 1.000
                SliderModule.BorderSizePixel = 0
                SliderModule.Position = UDim2.new(0, 0, 0, 0)
                SliderModule.Size = UDim2.new(0, 428, 0, 38)
                
                SliderBack.Name = "SliderBack"
                SliderBack.Parent = SliderModule
                SliderBack.BackgroundColor3 = zyColor
                SliderBack.BorderSizePixel = 0
                SliderBack.Size = UDim2.new(0, 428, 0, 38)
                SliderBack.AutoButtonColor = false
                SliderBack.Font = Enum.Font.GothamSemibold
                SliderBack.Text = "   " .. text
                SliderBack.TextColor3 = Color3.fromRGB(255, 255, 255)
                SliderBack.TextSize = 16.000
                SliderBack.TextXAlignment = Enum.TextXAlignment.Left
                
                SliderBackC.CornerRadius = UDim.new(0, 6)
                SliderBackC.Name = "SliderBackC"
                SliderBackC.Parent = SliderBack
                
                SliderBar.Name = "SliderBar"
                SliderBar.Parent = SliderBack
                SliderBar.AnchorPoint = Vector2.new(0, 0.5)
                SliderBar.BackgroundColor3 = Background
                SliderBar.BorderSizePixel = 0
                SliderBar.Position = UDim2.new(0.369000018, 40, 0.5, 0)
                SliderBar.Size = UDim2.new(0, 140, 0, 12)
                
                SliderBarC.CornerRadius = UDim.new(0, 4)
                SliderBarC.Name = "SliderBarC"
                SliderBarC.Parent = SliderBar
                
                SliderPart.Name = "SliderPart"
                SliderPart.Parent = SliderBar
                SliderPart.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderPart.BorderSizePixel = 0
                SliderPart.Size = UDim2.new(0, 54, 0, 13)
                
                SliderPartC.CornerRadius = UDim.new(0, 4)
                SliderPartC.Name = "SliderPartC"
                SliderPartC.Parent = SliderPart
                
                SliderValBG.Name = "SliderValBG"
                SliderValBG.Parent = SliderBack
                SliderValBG.BackgroundColor3 = Background
                SliderValBG.BorderSizePixel = 0
                SliderValBG.Position = UDim2.new(0.883177578, 0, 0.131578952, 0)
                SliderValBG.Size = UDim2.new(0, 44, 0, 28)
                SliderValBG.AutoButtonColor = false
                SliderValBG.Font = Enum.Font.Gotham
                SliderValBG.Text = ""
                SliderValBG.TextColor3 = Color3.fromRGB(255, 255, 255)
                SliderValBG.TextSize = 14.000
                
                SliderValBGC.CornerRadius = UDim.new(0, 6)
                SliderValBGC.Name = "SliderValBGC"
                SliderValBGC.Parent = SliderValBG
                
                SliderValue.Name = "SliderValue"
                SliderValue.Parent = SliderValBG
                SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderValue.BackgroundTransparency = 1.000
                SliderValue.BorderSizePixel = 0
                SliderValue.Size = UDim2.new(1, 0, 1, 0)
                SliderValue.Font = Enum.Font.Gotham
                SliderValue.Text = "1000"
                SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
                SliderValue.TextSize = 14.000
                
                MinSlider.Name = "MinSlider"
                MinSlider.Parent = SliderModule
                MinSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                MinSlider.BackgroundTransparency = 1.000
                MinSlider.BorderSizePixel = 0
                MinSlider.Position = UDim2.new(0.296728969, 40, 0.236842096, 0)
                MinSlider.Size = UDim2.new(0, 20, 0, 20)
                MinSlider.Font = Enum.Font.Gotham
                MinSlider.Text = "-"
                MinSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
                MinSlider.TextSize = 24.000
                MinSlider.TextWrapped = true
                
                AddSlider.Name = "AddSlider"
                AddSlider.Parent = SliderModule
                AddSlider.AnchorPoint = Vector2.new(0, 0.5)
                AddSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                AddSlider.BackgroundTransparency = 1.000
                AddSlider.BorderSizePixel = 0
                AddSlider.Position = UDim2.new(0.810906529, 0, 0.5, 0)
                AddSlider.Size = UDim2.new(0, 20, 0, 20)
                AddSlider.Font = Enum.Font.Gotham
                AddSlider.Text = "+"
                AddSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
                AddSlider.TextSize = 24.000
                AddSlider.TextWrapped = true
                
                local funcs = {
                  SetValue = function(self, value)
                    local percent = (mouse.X - SliderBar.AbsolutePosition.X) / SliderBar.AbsoluteSize.X
                    if value then
                      percent = (value - min) / (max - min)
                    end
                    percent = math.clamp(percent, 0, 1)
                    if precise then
                      value = value or tonumber(string.format("%.1f", tostring(min + (max - min) * percent)))
                    else
                      value = value or math.floor(min + (max - min) * percent)
                    end
                    library.flags[flag] = tonumber(value)
                    SliderValue.Text = tostring(value)
                    SliderPart.Size = UDim2.new(percent, 0, 1, 0)
                    callback(tonumber(value))
                  end
                }
        
                MinSlider.MouseButton1Click:Connect(function()
                  local currentValue = library.flags[flag]
                  currentValue = math.clamp(currentValue - 1, min, max)
                  funcs:SetValue(currentValue)
                end)
        
                AddSlider.MouseButton1Click:Connect(function()
                  local currentValue = library.flags[flag]
                  currentValue = math.clamp(currentValue + 1, min, max)
                  funcs:SetValue(currentValue)
                end)
                
                funcs:SetValue(default)
        
                local dragging, boxFocused, allowed = false, false, {
                  [""] = true,
                  ["-"] = true
                }
        
                SliderBar.InputBegan:Connect(function(input)
                  if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    funcs:SetValue()
                    dragging = true
                  end
                end)
        
                services.UserInputService.InputEnded:Connect(function(input)
                  if dragging and input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging = false
                  end
                end)
        
                services.UserInputService.InputChanged:Connect(function(input)
                  if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                    funcs:SetValue()
                  end
                end)
    
                SliderBar.InputBegan:Connect(function(input)
                  if input.UserInputType == Enum.UserInputType.Touch then
                    funcs:SetValue()
                    dragging = true
                  end
                end)
        
                services.UserInputService.InputEnded:Connect(function(input)
                  if dragging and input.UserInputType == Enum.UserInputType.Touch then
                    dragging = false
                  end
                end)
        
                services.UserInputService.InputChanged:Connect(function(input)
                  if dragging and input.UserInputType == Enum.UserInputType.Touch then
                    funcs:SetValue()
                  end
                end)
        
                SliderValue.Focused:Connect(function()
                  boxFocused = true
                end)
        
                SliderValue.FocusLost:Connect(function()
                  boxFocused = false
                  if SliderValue.Text == "" then
                    funcs:SetValue(default)
                  end
                end)
        
                SliderValue:GetPropertyChangedSignal("Text"):Connect(function()
                  if not boxFocused then return end
                  SliderValue.Text = SliderValue.Text:gsub("%D+", "")
                  
                  local text = SliderValue.Text
                  
                  if not tonumber(text) then
                    SliderValue.Text = SliderValue.Text:gsub('%D+', '')
                  elseif not allowed[text] then
                    if tonumber(text) > max then
                      text = max
                      SliderValue.Text = tostring(max)
                    end
                    funcs:SetValue(tonumber(text))
                  end
                end)
        
                return funcs
              end
              function section.Dropdown(section, text, flag, options, callback)
                local callback = callback or function() end
                local options = options or {}
                assert(text, "No text provided")
                assert(flag, "No flag provided")
        
                library.flags[flag] = nil
                
                local DropdownModule = Instance.new("Frame")
                local DropdownTop = Instance.new("TextButton")
                local DropdownTopC = Instance.new("UICorner")
                local DropdownOpen = Instance.new("TextButton")
                local DropdownText = Instance.new("TextBox")
                local DropdownModuleL = Instance.new("UIListLayout")
                local Option = Instance.new("TextButton")
                local OptionC = Instance.new("UICorner")        
        
                DropdownModule.Name = "DropdownModule"
                DropdownModule.Parent = Objs
                DropdownModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownModule.BackgroundTransparency = 1.000
                DropdownModule.BorderSizePixel = 0
                DropdownModule.ClipsDescendants = true
                DropdownModule.Position = UDim2.new(0, 0, 0, 0)
                DropdownModule.Size = UDim2.new(0, 428, 0, 38)
                
                DropdownTop.Name = "DropdownTop"
                DropdownTop.Parent = DropdownModule
                DropdownTop.BackgroundColor3 = zyColor
                DropdownTop.BorderSizePixel = 0
                DropdownTop.Size = UDim2.new(0, 428, 0, 38)
                DropdownTop.AutoButtonColor = false
                DropdownTop.Font = Enum.Font.GothamSemibold
                DropdownTop.Text = ""
                DropdownTop.TextColor3 = Color3.fromRGB(255, 255, 255)
                DropdownTop.TextSize = 16.000
                DropdownTop.TextXAlignment = Enum.TextXAlignment.Left
                
                DropdownTopC.CornerRadius = UDim.new(0, 6)
                DropdownTopC.Name = "DropdownTopC"
                DropdownTopC.Parent = DropdownTop
                
                DropdownOpen.Name = "DropdownOpen"
                DropdownOpen.Parent = DropdownTop
                DropdownOpen.AnchorPoint = Vector2.new(0, 0.5)
                DropdownOpen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownOpen.BackgroundTransparency = 1.000
                DropdownOpen.BorderSizePixel = 0
                DropdownOpen.Position = UDim2.new(0.918383181, 0, 0.5, 0)
                DropdownOpen.Size = UDim2.new(0, 20, 0, 20)
                DropdownOpen.Font = Enum.Font.Gotham
                DropdownOpen.Text = "+"
                DropdownOpen.TextColor3 = Color3.fromRGB(255, 255, 255)
                DropdownOpen.TextSize = 24.000
                DropdownOpen.TextWrapped = true
                
                DropdownText.Name = "DropdownText"
                DropdownText.Parent = DropdownTop
                DropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownText.BackgroundTransparency = 1.000
                DropdownText.BorderSizePixel = 0
                DropdownText.Position = UDim2.new(0.0373831764, 0, 0, 0)
                DropdownText.Size = UDim2.new(0, 184, 0, 38)
                DropdownText.Font = Enum.Font.GothamSemibold
                DropdownText.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
                DropdownText.PlaceholderText = text
                DropdownText.Text = ""
                DropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
                DropdownText.TextSize = 16.000
                DropdownText.TextXAlignment = Enum.TextXAlignment.Left
                
                DropdownModuleL.Name = "DropdownModuleL"
                DropdownModuleL.Parent = DropdownModule
                DropdownModuleL.SortOrder = Enum.SortOrder.LayoutOrder
                DropdownModuleL.Padding = UDim.new(0, 4)
        
                local setAllVisible = function()
                  local options = DropdownModule:GetChildren() 
                  for i=1, #options do
                    local option = options[i]
                    if option:IsA("TextButton") and option.Name:match("Option_") then
                      option.Visible = true
                    end
                  end
                end
        
                local searchDropdown = function(text)
                  local options = DropdownModule:GetChildren()
                  for i=1, #options do
                    local option = options[i]
                    if text == "" then
                      setAllVisible()
                    else
                      if option:IsA("TextButton") and option.Name:match("Option_") then
                        if option.Text:lower():match(text:lower()) then
                          option.Visible = true
                        else
                          option.Visible = false
                        end
                      end
                    end
                  end
                end
        
                local open = false
                local ToggleDropVis = function()
                  open = not open
                  if open then setAllVisible() end
                  DropdownOpen.Text = (open and "-" or "+")
                  DropdownModule.Size = UDim2.new(0, 428, 0, (open and DropdownModuleL.AbsoluteContentSize.Y + 4 or 38))
                end
        
                DropdownOpen.MouseButton1Click:Connect(ToggleDropVis)
                DropdownText.Focused:Connect(function()
                  if open then return end
                  ToggleDropVis()
                end)
        
                DropdownText:GetPropertyChangedSignal("Text"):Connect(function()
                  if not open then return end
                  searchDropdown(DropdownText.Text)
                end)
        
                DropdownModuleL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                  if not open then return end
                  DropdownModule.Size = UDim2.new(0, 428, 0, (DropdownModuleL.AbsoluteContentSize.Y + 4))
                end)
                
                local funcs = {}
                funcs.AddOption = function(self, option)
                  local Option = Instance.new("TextButton")
                  local OptionC = Instance.new("UICorner")     
        
                  Option.Name = "Option_" .. option
                  Option.Parent = DropdownModule
                  Option.BackgroundColor3 = zyColor
                  Option.BorderSizePixel = 0
                  Option.Position = UDim2.new(0, 0, 0.328125, 0)
                  Option.Size = UDim2.new(0, 428, 0, 26)
                  Option.AutoButtonColor = false
                  Option.Font = Enum.Font.Gotham
                  Option.Text = option
                  Option.TextColor3 = Color3.fromRGB(255, 255, 255)
                  Option.TextSize = 14.000
                  
                  OptionC.CornerRadius = UDim.new(0, 6)
                  OptionC.Name = "OptionC"
                  OptionC.Parent = Option
        
                  Option.MouseButton1Click:Connect(function()
                    ToggleDropVis()
                    callback(Option.Text)
                    DropdownText.Text = Option.Text
                    library.flags[flag] = Option.Text
                  end)
                end
        
                funcs.RemoveOption = function(self, option)
                  local option = DropdownModule:FindFirstChild("Option_" .. option)
                  if option then option:Destroy() end
                end
        
                funcs.SetOptions = function(self, options)
                  for _, v in next, DropdownModule:GetChildren() do
                    if v.Name:match("Option_") then
                      v:Destroy()
                    end
                  end
                  for _,v in next, options do
                    funcs:AddOption(v)
                  end
                end
        
                funcs:SetOptions(options)
        
                return funcs
              end
              return section
            end
            return tab
          end
          return window
        end
    --
    local window = library:new("Monzz V4.0")

    local creds = window:Tab("Home",'6035145364')

    local credits = creds:section("Credits",true)
    credits:Label("Monzz Scriptz")

    credits:Label("50CalSpecialist#0001")
    credits:Label("Silent ben8x, 0x37, Catimyth")

    local credits = creds:section("Discord Options",true)

    credits:Button("Copy Discord Server",function()
        setclipboard("discord.gg/4y4CZfdJHu")
        Notify('Monzz Scriptz', 'Discord Server Copied!', 2)
    end)

    credits:Button("Auto Join Discord",function()
        pcall(function()
            local JSONEncode, JSONDecode, GenerateGUID = 
          game.HttpService.JSONEncode, 
          game.HttpService.JSONDecode,
          game.HttpService.GenerateGUID
          local Request = syn and syn.request or request
          Request({
              Url = "http://127.0.0.1:6463/rpc?v=1",
              Method = "POST",
              Headers = {
                  ["Content-Type"] = "application/json",
                  ["Origin"] = "https://discord.com"
              },
              Body = JSONEncode(game.HttpService, {
                  cmd = "INVITE_BROWSER",
                  args = {
                      code = "Monzz"
                 },
                 nonce = GenerateGUID(game.HttpService, false)
             }),
          })
        end)
        Notify('Monzz Scriptz', 'Auto Joining..', 2)
    end)

    local credits = creds:section("Admin & Vip Commands",true)
    credits:Label("Did you know you can buy VIP commands in Monzz?")
    credits:Label("You can kick any Monzz player off the game")
    credits:Label("And You can also make detect Monzz players using !Bring")
    credits:Label("Purchase VIP Commands for 5$")

    local woodtab = window:Tab('Wood','6034503369')

    local woods = woodtab:section('Bring Tree(s)',true)

    local wood_types = {"Generic","Oak","Cherry","Fir","Pine","Birch","Walnut","Koa","Volcano","Zombie","Gold","Palm","SnowGlow","Frost","Spooky","Sinister","CaveCrawler"}

    local TreeTypeDropdown = woods:Dropdown("Wood Type", "Wood Type", wood_types, function(Output)
        if Output ~= "" then
            if Output == "Gold" then
                SelectedTreeType = "GoldSwampy"
            elseif Output == "Zombie" then
                SelectedTreeType = "GreenSwampy"
            else    
                SelectedTreeType = Output
                end
            end
        end)

    local SelectedTreeTypeQuantity; 

    local TreeTypeQuantitySlider = woods:Slider("Amount to Bring", "", 1, 1, 15, false, function(Value)
        SelectedTreeTypeQuantity = Value
    end)

    woods:Button("Bring Tree",  function()
        if not CheckIfWPPlaced() then return end
        
        if CuttingTree then
            Notify('Monzz Scriptz', 'You already cutting a tree!', 3)
        return 
    end    
            
    local Axe
    GetChar().Humanoid:UnequipTools()
            
    if not Player.Backpack:FindFirstChild("Tool") then
        Notify('Monzz Scriptz', "You need axe!", 3)
            return 
        end

    for _,v in pairs(Player.Backpack:GetChildren()) do
        if v.Name ~= "BlueprintTool" then
            local AxeName = string.gsub(v.ToolTip," ","_")
            local BestAxeToolTip = GetBestAxeForTreeClass(AxeName,SelectedTreeType,true)
            if BestAxeToolTip then
                Axe = v
            end    
        end    
    end    
            
    if SelectedTreeType == "LoneCave" and not Axe then
        Notify("You do not have the correct Axe for this Tree","",10)
            return 
        elseif not Axe then
            local BackpackTable = {}
            for _,v in pairs(Player.Backpack:GetChildren()) do
                if v.Name ~= "BlueprintTool" then
                    table.insert(BackpackTable, v.ToolTip)
                end    
            end

            if table.find(BackpackTable,"The Many Axe") then
                for _,v in pairs(Player.Backpack:GetChildren()) do
                    if Axe then break end
                    if v.ToolTip == "The Many Axe" then
                        Axe = v
                        break
                    end
                end  

            elseif table.find(BackpackTable,"End Times Axe") then
                for _,v in pairs(Player.Backpack:GetChildren()) do
                    if Axe then break end
                    if v.ToolTip == "End Times Axe" then
                        Axe = v
                        break
                    end    
                end
            else
                Axe = Player.Backpack:FindFirstChild("Tool")
            end
        end    
        
        LastTool = Axe
        
        local OldCharacterPos = GetWPLoc()
        
        if SelectedTreeType ~= "LoneCave" then
            local KeepGettingTree = false
            for i = 1,SelectedTreeTypeQuantity do
                if CancelCutting then break end
                if FindTreeOfClass(SelectedTreeType) == false then Notify('Monzz Scriptz', 'Select wood type!', 3)  break end
                CuttingTree = true
                CutTree(FindTreeOfClass(SelectedTreeType),Axe,{1,0.3})
                if CancelCutting then CuttingTree = false break end
                BringObject(GetLooseTree(), OldCharacterPos, {true, false})
                CuttingTree = false
            end
            SetPrimaryPos(OldCharacterPos + Vector3.new(0,3,6))
        else
            CuttingTree = true
            CutAndBringLoneCaveTree()
            CuttingTree = false
            Player.CharacterAdded:Wait()
            repeat task.wait() until Player.Character:FindFirstChild("Humanoid")
            repeat task.wait() until Player.Character:FindFirstChild("HumanoidRootPart")
            wait(0.2)
            Player.Character:SetPrimaryPartCFrame(OldCharacterPos)
        end
        wait()
            local CancelCutting = false
        end)

    woods:Button("Abort",  function()
        AbortBringTree()
        wait(1)
        GetChar().HumanoidRootPart.Anchored = false
    end)


    local sellbring = woodtab:section('Log Selections',true)

    sellbring:Button("Bring all Log(s)",  function()
        if not CheckIfWPPlaced() then return end
        CuttingTree = true
        local OldCharacterPos = GetWPLoc()
        
        for _,v in pairs(workspace.LogModels:GetChildren()) do
            if v:IsA("Model") then
                if v:FindFirstChild("Owner") ~= nil and v.Owner.Value == Player then
                    if CancelActions then break end
                    BringObject(v, OldCharacterPos,{true, false})
                end     
            end    
        end
        
        GetChar():SetPrimaryPartCFrame(OldCharacterPos)
        Notify('Monzz Scriptz', 'Bring Log(s) Completed', 2)
        
        CuttingTree = false
        CancelActions = false 
    end)

    sellbring:Button("Sell all Log(s)",  function()
        local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for i, v in next, game:GetService("Workspace").LogModels:GetChildren() do
            if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=v.WoodSection.CFrame
                wait(0.5)
                for i = 1, 20 do
                    for i2, v2 in next, v:GetChildren() do
                        if v2.Name == "WoodSection" then
                            spawn(function()

                                for i = 1, 10 do

                                    game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                                    v:PivotTo(CFrame.new(314.20575, -0.400000274, 85.7978668, 0.94260478, -7.16537585e-08, -0.333910495, 5.62629374e-08, 1, -5.57635822e-08, 0.333910495, 3.37762351e-08, 0.94260478))
                                    v2.CFrame = CFrame.new(314.20575, -0.400000274, 85.7978668, 0.94260478, -7.16537585e-08, -0.333910495, 5.62629374e-08, 1, -5.57635822e-08, 0.333910495, 3.37762351e-08, 0.94260478)
                                    game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                                    task.wait()
                                end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame= CFrame.new(314.20575, -0.400000274, 85.7978668, 0.94260478, -7.16537585e-08, -0.333910495, 5.62629374e-08, 1, -5.57635822e-08, 0.333910495, 3.37762351e-08, 0.94260478)
                            end)
                            wait()
                        end
                    end
                    task.wait(0.1)
                end

                task.wait(0.3)
            end

        end
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=oldpos
        Notify('Monzz Scriptz', 'Sell Log(s) Completed', 2)
    end)

    local sellbring = woodtab:section('Plank Selections',true)

    sellbring:Button("Bring all Plank(s)",  function()
        if not CheckIfWPPlaced() then return end
        CuttingTree = true
        local OldCharacterPos = GetChar().Torso.CFrame
        for _,v in pairs(workspace.PlayerModels:GetChildren()) do
            if v.Name == "Plank" then
                if v:FindFirstChild("Owner") ~= nil and v.Owner.Value == Player then
                    if CancelActions then break end
                    BringObject(v, OldCharacterPos,{true, false})
                end     
            end    
        end
        GetChar():SetPrimaryPartCFrame(OldCharacterPos)
        CuttingTree = false
        CancelActions = false 
        Notify('Monzz Scriptz', 'Bring Plank(s)', 2)
    end)

    sellbring:Button("Sell all Plank(s)",  function()
        local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for i,v in next,game.Workspace.PlayerModels:GetChildren() do
            if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
                if v:FindFirstChild("WoodSection") then
                    game.Players.LocalPlayer.Character.Humanoid.Jump = true
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.WoodSection.CFrame
                    game.Players.LocalPlayer.Character.Humanoid.Jump = true
                    wait(1)
                    if v.WoodSection then
                        repeat wait()
                        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                        v.WoodSection.CFrame = CFrame.new(314.20575, -0.400000274, 85.7978668, 0.94260478, -7.16537585e-08, -0.333910495, 5.62629374e-08, 1, -5.57635822e-08, 0.333910495, 3.37762351e-08, 0.94260478)
                        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                        until v.WoodSection.CFrame
                    end
                end
            end
        end
    task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=oldpos
        Notify('Monzz Scriptz', 'Sell Plank(s) Completed', 2)
    end)

    sellbring:Button("1x1 Plank Cut",  function()
        Notify('Monzz Scriptz','Click on Plank', 1.5) 
        local ClickDetection
                        
        local Axe
        local Axes = {}
        
        GetChar().Humanoid:UnequipTools()
        
        if not Player.Backpack:FindFirstChild("Tool") then
            Notify('Monzz Scriptz','You need axe!', 3) 
            return 
        end
        
        for _,v in pairs(Player.Backpack:GetChildren()) do
            if v.Name ~= "BlueprintTool" then
                table.insert(Axes,v.ToolTip)    
            end    
        end
        --axes table--
        if table.find(Axes, "Bird Axe") then
            for _,v in pairs(Player.Backpack:GetChildren()) do
                if v.ToolTip == "Bird Axe" then
                    Axe = v
                end
            end
        end

        if table.find(Axes, "Alpha Axe of Testing") then
            for _,v in pairs(Player.Backpack:GetChildren()) do
                if v.ToolTip == "Alpha Axe of Testing" then
                    Axe = v
                end
            end
        end

        if table.find(Axes, "Beta Axe of Bosses") then
            for _,v in pairs(Player.Backpack:GetChildren()) do
                if v.ToolTip == "Beta Axe of Bosses" then
                    Axe = v
                end
            end
        end

        if table.find(Axes, "Rukiryaxe") then
            for _,v in pairs(Player.Backpack:GetChildren()) do
                if v.ToolTip == "Rukiryaxe" then
                    Axe = v
                end
            end
        end

        if table.find(Axes, "Fire Axe") then
            for _,v in pairs(Player.Backpack:GetChildren()) do
                if v.ToolTip == "Fire Axe" then
                    Axe = v
                end
            end
        end

        if table.find(Axes, "Amber Axe") then
            for _,v in pairs(Player.Backpack:GetChildren()) do
                if v.ToolTip == "Amber Axe" then
                    Axe = v
                end
            end
        end

        if table.find(Axes, "Beesaxe") then
            for _,v in pairs(Player.Backpack:GetChildren()) do
                if v.ToolTip == "Beesaxe" then
                    Axe = v
                end
            end
        end

        if table.find(Axes, "CHICKEN AXE") then
            for _,v in pairs(Player.Backpack:GetChildren()) do
                if v.ToolTip == "CHICKEN AXE" then
                    Axe = v
                end
            end
        end

        if table.find(Axes, "The Many Axe") then
            for _,v in pairs(Player.Backpack:GetChildren()) do
                if v.ToolTip == "The Many Axe" then
                    Axe = v
                end
            end
        end

        if table.find(Axes, "Rusty Axe") then
            for _,v in pairs(Player.Backpack:GetChildren()) do
                if v.ToolTip == "Rusty Axe" then
                    Axe = v
                end
            end
        end

        if table.find(Axes, "Candy Corn Axe") then
            for _,v in pairs(Player.Backpack:GetChildren()) do
                if v.ToolTip == "Candy Corn Axe" then
                    Axe = v
                end
            end
        end

        if table.find(Axes, "Cave Axe") then
            for _,v in pairs(Player.Backpack:GetChildren()) do
                if v.ToolTip == "Cave Axe" then
                    Axe = v
                end
            end
        end

        if table.find(Axes, "Overgrown Axe") then
            for _,v in pairs(Player.Backpack:GetChildren()) do
                if v.ToolTip == "Overgrown Axe" then
                    Axe = v
                end
            end
        end

        if table.find(Axes, "Frost Axe") then
            for _,v in pairs(Player.Backpack:GetChildren()) do
                if v.ToolTip == "Frost Axe" then
                    Axe = v
                end
            end
        end

        if table.find(Axes, "End Times Axe") then
            for _,v in pairs(Player.Backpack:GetChildren()) do
                if v.ToolTip == "End Times Axe" then
                    Axe = v
                end
            end
        end
        
        if not Axe then
            if table.find(Axes, "End Times Axe") then
                for _,v in pairs(Player.Backpack:GetChildren()) do
                    if v.ToolTip == "End Times Axe" then
                        Axe = v
                    end
                end
            end 
        end
        
        if not Axe then
            Axe = Axes[1] 
        end
        
        local AxeName = string.gsub(Axe.ToolTip," ","_")
        local AxeInfo = GetBestAxeForTreeClass(AxeName, "Generic")
        
        if AxeInfo[2] == "Default" then
            AxeInfo[2] = AxeIndex[AxeName].Cooldown
        end 

        SetOldCharacterPos()

        ClickDetection = Mouse.Button1Down:Connect(function()
            
            local MouseTarget = Mouse.Target
            
            if MouseTarget.Name == "WoodSection" and MouseTarget.Parent.Name == "Plank" then
                if MouseTarget.Parent:FindFirstChild("Owner") ~= nil and MouseTarget.Parent.Owner.Value == Player then
                    if MouseTarget.Parent.Parent == workspace.PlayerModels then
                        
                        ClickDetection:Disconnect()
                        
                        local CutEvent
                        local Wood
                        
                        CutEvent = MouseTarget.Parent.CutEvent
                        Wood = MouseTarget
                        
                        local CutAmount = math.floor(Wood.Size.Y,-0.3)
                        
                        for i = 1,CutAmount,1 do
                            if CancelCutting then break end
                            
                            local NewPlankDetection
                            task.spawn(function()
                                NewPlankDetection = workspace.PlayerModels.ChildAdded:Connect(function(Child)
                                    

                                    if Child.Name == "Plank" then
                                        repeat task.wait() if not Child:FindFirstChild("WoodSection") then return end until Child:FindFirstChild("WoodSection") or CancelActions
                                        if Child:FindFirstChild("Owner") then
                                            if Child.Owner.Value == Player then
                                                if Child:FindFirstChild("WoodSection") and Child:FindFirstChild("CutEvent") then
                                                    Wood = Child.WoodSection
                                                    CutEvent = Child.CutEvent
                                                    
                                                    NewPlankAdded = true
                                                    
                                                    NewPlankDetection:Disconnect()
                                                end
                                            end
                                        end
                                    end
                                end)    
                            end)
                            
                            
                            
                            if (GetChar().HumanoidRootPart.Position - Wood.Position).Magnitude > 17 then
                                GetChar():SetPrimaryPartCFrame(Wood.CFrame * CFrame.new(3,-Wood.Size.Y/2,0))
                            end
                            
                            repeat task.wait(AxeInfo[2] + 0.05)
                                if (GetChar().HumanoidRootPart.Position - Wood.Position).Magnitude > 17 then
                                    GetChar():SetPrimaryPartCFrame(Wood.CFrame * CFrame.new(3,-Wood.Size.Y/2,0))
                                end
                                
                                local args = {
                                [1] = CutEvent,
                                [2] = {
                                    ["tool"] = Axe,
                                    ["faceVector"] = Vector3.new(-0, -0, -1),
                                    ["height"] = 1,
                                    ["sectionId"] = 1,
                                    ["hitPoints"] = AxeInfo[1],
                                    ["cooldown"] = AxeInfo[2],
                                    ["cuttingClass"] = "Axe"
                                }
                                }
                                
                                game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(unpack(args))    

                        until NewPlankAdded or CancelActions
                        NewPlankAdded = false
                    end
                        CancelCutting = false
                        Notify('Monzz Scriptz','Done!', 3)
                    end
                end
            else
                ClickDetection:Disconnect()
                Notify('Monzz Scriptz','Canceled', 3) 
            end    
        end)
    end)

    sellbring:Button("Stand Plank",  function()
        if not CheckIfWPPlaced() then return end

        StandPlank = true

        Notify('Monzz Scriptz', 'Click on a Plank', 1)
        local OldCharacterPos = GetChar().Torso.CFrame
        local ClickDetection
        
        ClickDetection = Mouse.Button1Down:Connect(function()
            local MouseTarget = Mouse.Target
            if MouseTarget.Name == "WoodSection" and MouseTarget.Parent.Name == "Plank" then
                if MouseTarget.Parent:FindFirstChild("Owner") ~= nil and MouseTarget.Parent.Owner.Value == Player then
                    if MouseTarget.Parent.Parent == workspace.PlayerModels then
                        BringObject(MouseTarget.Parent, CFrame.new(MouseTarget.Position + Vector3.new(0,MouseTarget.Size.Y/2,0)) * CFrame.Angles(0,0,0), {true, true})
                        ClickDetection:Disconnect()
                        Notify('Monzz Scriptz', 'Done!', 1)
                        GetChar():SetPrimaryPartCFrame(OldCharacterPos)
                    end
                end
            else
                ClickDetection:Disconnect()
                Notify('Monzz Scriptz', 'Canceled', 1)
            end    
        end)
            StandPlank = false    
    end)

    local ELT = woodtab:section('Monzz Technologies',true)

    ELT:Button('Mod Wood Manual', function()
        ModWoodManual()
        end)

    ELT:Toggle('Click To Sell', '', false, function(Value)
        ClickToSell(Value)
    end)

    ELT:Button('Dismember Raw Tree', function()
        DicmemberTree()
        Notify("Monzz Scriptz", 'Click A Tree', 3)
        end)


    ELT:Toggle('Unit Checker', '', false, function(Value)
        UnitChecker(Value)
    end)

    ELT:Button("How Many Trees In Main Region",function()
        local count = game:GetService("ReplicatedStorage").RegionInfo["Region_Main"].TreeCount.Value

        Notify("Trees", count, 1.5)
    end)

    local lonecave = woodtab:section('LoneCave Option',true)

    lonecave:Toggle('View LoneCave', 'No Description', false, function(lone)
        if lone then
            startview()
        else
            endview()
        end
    end)

    lonecave:Button("Bring LoneCave",  function()
        getlonetree()
        bringy("LoneCave")
    end)
    lonecave:Label("There Is A Risk You Might Lose Your Axe")

    local Player = window:Tab("Client",'6022668898')

    local movement = Player:section('Acceleration',true)


    movement:Slider('Walkspeed', 'Walkspeed Slider', 16, 16, 500,false, function(value)
        getgenv().Speed = value
        speed()
    end)

    movement:Slider('JumpPower', 'JumpPower Slider', 50, 50, 500,false, function(value)
        LocalPlayer.Character.Humanoid.JumpPower = value
    end)

    movement:Slider('Flight Speed', 'JumpPower Slider', 25, 25, 500,false, function(value)
        maxspeed = value
    end)

    movement:Slider('HipHeight', '', 0, 0, 150,false, function(value)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = value
    end)


    local movement = Player:section('Humanoid',true)

    movement:Toggle('Flight [Q]', 'No Description', false, function(value)
        FlyingEnabled = value
    end)


    game:GetService("UserInputService").JumpRequest:connect(function()
        if getgenv().InfiniteJumpEnabled then
            game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
        end
    end)

    movement:Toggle("Infinite Jump", "Inf Jump", false, function(state)
        print("Toggled", value)
    getgenv().InfiniteJumpEnabled = state
    end)

    movement:Toggle("NoClip", "NoClip", false, function(state)
        if state then
            noclip()
        else
            clip()
        end
    end)

    movement:Toggle('Godmode', 'No Description', false, function(Value)
        if Value then
            local LP = game:GetService"Players".LocalPlayer
            local HRP = LP.Character.HumanoidRootPart
            local Clone = HRP:Clone()
            Clone.Parent = LP.Character
        else
            game.Players.LocalPlayer.Character.Torso:Destroy()
        end
    end)

    movement:Button("Safe Death",  function()
        SafeSuicide()
    end)

    movement:Button("Sky Launch",  function()
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = "200"
        wait(.1)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = "0"
    end)

    movement:Toggle("Light", "Light", false, function(Value)
        Light(Value)
    end)

    local misc = Player:section('Tools',true)

    misc:Toggle("Custom Dragger", "Dragger", false, function(Value)
        CustomDragger = Value
    end)
    Dragger()

    misc:Toggle("BTools", "", false, function(state)
        if state then
            BTools()
        else
            btoolsdisable()
        end
    end)

    local avatar = Player:section('Avatar Customization',true)

    avatar:Button("Yield Avatar",  function()
        for _, part in ipairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.Material = Enum.Material.ForceField 
                part.Color = Color3.fromRGB(221, 245, 5)
            end
        end
    end)

    avatar:Toggle("Become an NPC", "", false, function(state)
        if state then
            local Torso = game.Players.LocalPlayer.Character.Torso

            local npc = Instance.new("Dialog", Torso)
            
            npc.Purpose = "Help"
            npc.Tone = "Enemy"
            npc.InitialPrompt = "NIGGA IM A NPC!!!"
        else
            game:GetService("Workspace").LocalPlayer.Torso.Dialog:Destroy()
        end
    end)

    avatar:Button("Fire",  function()
        local Torso = game.Players.LocalPlayer.Character.Torso
        local emitter = Instance.new("Fire", Torso)
    end)

    avatar:Button("Sparkles",  function()
        local Torso = game.Players.LocalPlayer.Character.Torso
        local emitter = Instance.new("Sparkles", Torso)
    end)
    
    local EXP = window:Tab("Protection",'6034837802')

    local protect = EXP:section('Anti-Fling',true)

    protect:Toggle("Anti-Fling", "", false, function(Value)
        if Value then
            antifling()
            Notify('Monzz Scriptz', 'Anti-Fling Enabled', 2)
        else
            _G.disable()
            Notify('Monzz Scriptz', 'Anti-Fling Disabled', 2)
        end
    end)

    protect:Slider('Detection Range', 'JumpPower Slider', 30, 30, 100,false, function(Value)
        anchor_dist = Value
    end)

    local protect = EXP:section('Anti-Bring',true)

    protect:Button("Anti-Bring & Kill",  function()
        for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v.Name == "Seat" then
                v:Destroy()
            end
            end
    end)

    local TeleportTab = window:Tab("Teleports",'2790556871')

    local teleports = TeleportTab:section('Locations',true)

    teleports:Dropdown("Teleport to Area", "Location", locations, function(Value)
        local WaypointsPositions = {["The Den"] = CFrame.new(323, 49, 1930), ["Lighthouse"] = CFrame.new(1464.8, 356.3, 3257.2), ["Safari"] = CFrame.new(111.853, 11.0005, -998.805), ["Bridge"] = CFrame.new(112.308, 11.0005, -782.358), ["Bob's Shack"] = CFrame.new(260, 8, -2542), ["EndTimes Cave"] = CFrame.new(113, -214, -951), ["The Swamp"] = CFrame.new(-1209, 132, -801), ["The Cabin"] = CFrame.new(1244, 66, 2306), ["Volcano"] = CFrame.new(-1585, 625, 1140), ["Boxed Cars"] = CFrame.new(509, 5.2, -1463), ["Tiaga Peak"] = CFrame.new(1560, 410, 3274), ["Land Store"] = CFrame.new(258, 5, -99), ["Link's Logic"] = CFrame.new(4605, 3, -727), ["Palm Island"] = CFrame.new(2549, -5, -42), ["Palm Island 2"] = CFrame.new(1960, -5.900, -1501), ["Palm Island 3"] = CFrame.new(4344, -5.900, -1813), ["Fine Art Shop"] = CFrame.new(5207, -166, 719), ["SnowGlow Biome"] = CFrame.new(-1086.85, -5.89978, -945.316), ["Cave"] = CFrame.new(3581, -179, 430), ["Shrine Of Sight"] = CFrame.new(-1600, 195, 919), ["Fancy Furnishings"] = CFrame.new(491, 13, -1720), ["Docks"] = CFrame.new(1114, 3.2, -197), ["Strange Man"] = CFrame.new(1061, 20, 1131), ["Wood Dropoff"] = CFrame.new(323.406, -2.8, 134.734), ["Snow Biome"] = CFrame.new(889.955, 59.7999, 1195.55), ["Wood RUs"] = CFrame.new(265, 5, 57), ["Green Box"] = CFrame.new(-1668.05, 351.174, 1475.39), ["Spawn"] = CFrame.new(172, 2, 74), ["Cherry Meadow"] = CFrame.new(220.9, 59.8, 1305.8), ["Bird Cave"] = CFrame.new(4813.1, 33.5, -978.8),}
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = WaypointsPositions[Value]
    end)

    local teleports = TeleportTab:section('Teleport to Player',true)

    teleports:Dropdown("Choose Player", "Player Name", AllPlayers, function(Value)
        TeleportToPlayer(Value)
    end)

    local teleports = TeleportTab:section('Teleport to Players Base',true)

    teleports:Dropdown("Select Player Base", "Player", AllPlayers, function(Value)
        TeleportToBase(Value)
    end)

    local WorldTab = window:Tab("World",'6034452648')


    local worlds = WorldTab:section('Environment',true)

    worlds:Toggle("Always Day", "text", false, function(Value)
        Day = Value
    end)

    worlds:Toggle("Always Night", "text", false, function(Value)
        Night = Value
    end)

    worlds:Toggle("Remove Fog", "text", false, function(Value)
        if Value then
            game.Lighting.FogStart = math.huge
            game.Lighting.FogEnd = math.huge
         else
            game.Lighting.FogStart = 0
         end
    end)

    worlds:Toggle("Shadows", "text", true, function(Value)
        game:GetService("Lighting").GlobalShadows = Value
    end)

    worlds:Toggle("Spook", "text", false, function(Value)
        game:GetService("Lighting").Spook.Value = Value
    end)

    worlds:Toggle("Remove Snow Boulders", "text", false, function(Value)
            for i,v in next,game.Workspace.Region_Snow.PartSpawner:GetChildren() do
                if v.Name == "Boulder" then
                    if Value then
                        v.Transparency = 1
                        v.CanCollide = false
                        else
                        v.Transparency = 0
                        v.CanCollide = true
                    end
                end
            end
    end)

    worlds:Toggle("Ultra 4K HD Mode", "text", false, function(value)
        if value == true then
            game.Lighting.Brightness = 4
            game.Lighting.ColorCorrection.Saturation = 1	
            game.Lighting.ColorCorrection.Contrast = 1
        elseif value == false then
            game.Lighting.Brightness = 0
            game.Lighting.ColorCorrection.Saturation = 0	
            game.Lighting.ColorCorrection.Contrast = 0
            end
    end)

    worlds:Slider('Brightness', 'FOV Slider',  0, 0, 6,false, function(value)
        Brightness(value)
        end)


    local worlds = WorldTab:section('Miscellienaous',true)

    worlds:Button("Get Greenbox", function()
 local Torso = game.Players.LocalPlayer.Character.Torso   
            for i,v in pairs(game:GetService("Workspace")["Region_Volcano"]:GetDescendants()) do
            if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(Torso, v.Parent, 0)
        end
    end
 end)

 worlds:Button("Destroy Greenbox", function()
    for i,v in next, game:GetService("Workspace")["Region_Volcano"]:GetChildren() do
		if v.Name == "VolcanoWin" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
			game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
			v.BodyPosition:Destroy()
			v.BodyAngularVelocity:Destroy()
		end
	end
    end)

    worlds:Toggle("Lower Bridge", "text", false, function(bridge)
        if bridge then
            BridgeDown()
        else
        BridgeUp()
        end
    end)

    worlds:Button("Better Graphics", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/dTg3MtwM",true))()
    end)


    local water = WorldTab:section('Water',true)

    water:Button('Water GodMode', function()
        game:GetService("Players").LocalPlayer.PlayerGui.Scripts.CharacterFloat:Destroy()
end)

    water:Button('Better Water', function()
        for i,v in next, game.Workspace:GetDescendants() do
        if v:IsA("Part") and v.Name == "SeaSand" then
        v.Size = Vector3.new(2048, 60, 2048)
    end
    end

    for i,v in next, game.Workspace:GetDescendants() do
    if v:IsA("Part") and v.Name == "Water" then
        v.Size = Vector3.new(20480, 6, 20080)
        game.Workspace.Terrain:fillBlock(v.CFrame, v.Size, Enum.Material.Water)
        v:Destroy()
    end
    end
end)


    water:Toggle("Walk On Water", "text", false, function(value)
        for i,v in next,game.Workspace.Water:GetChildren() do
            if v.Name == "Water" then
                if value then
                    v.CanCollide = true
                    else
                    v.CanCollide = false
                end
            end
        end
    end)

    water:Toggle("Remove Water", "text", false, function(value)
        for i,v in next,game.Workspace.Water:GetChildren() do
            if v.Name == "Water" then
                if value then
                    v.Transparency = 1
                    else
                    v.Transparency = 0
                end
            end
        end
    end)

    local worlds = WorldTab:section('Camera',true)

    
    worlds:Slider('Zoom Distance', 'ZOOOOOM OUT!',  128, 128, 2000,false, function(value)
    game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = value
    end)

    worlds:Slider('FOV', 'FOV Slider',  70, 70, 120,false, function(value)
    game:GetService'Workspace'.Camera.FieldOfView = value
    end)

    worlds:Slider('Color Strenght', 'FOV Slider',  0, 0, 5,false, function(value)
        game:GetService("Lighting").ColorCorrection.Saturation = value
        end)

    local SlotTab = window:Tab("Property",'6035107936')

    local fastload = SlotTab:section('Property Loading',true)

    fastload:Slider('Slot Number', '', 1, 1, 6,false, function(value)
        slot = value
    end)

    fastload:Button("Load Base",  function()
        LoadSlot(slot)
    end)

    
    fastload:Button("Deload Current Base",  function()
        game:GetService("ReplicatedStorage").LoadSaveRequests.RequestLoad:InvokeServer(math.huge)
        Notify('Monzz Scriptz', 'Succesful! Deloaded Base', 2)
    end)

    skil = fastload:Toggle("Fast Load", " ", false, function(state)
        if state then
            skipLoading = true
        else
            skipLoading = false
        end
        return skipLoading
    end)

      fastload:Toggle("Disable Load Teleport", " ", false, function(state)
        if state then
            LoadTeleportOff()
        else
            game.Players.LocalPlayer.Character.Torso:Destroy()
        end
    end)
    

    local loadtimer = fastload:Label("Canload:")

    task.spawn(function()
       while task.wait(0.5) do
       if game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad:InvokeServer(game.Players.LocalPlayer) then
        loadtimer.Text = "You Can Load!"
        else
        loadtimer.Text = "You Cannot Load!"
        end
       end
    end)



    local slot = SlotTab:section('Property',true)

    

    slot:Button("Free Property Select",  function()
        FreeLandSelect()
    end)

    slot:Button("Free Property Random",  function()
        FreeLand()
    end)

    slot:Button("Max Property",  function()
        MaxLand()
    end)

    slot:Button("Sell Sold Sign",  function()
        SellSoldSign()
    end)

    slot:Button("Hide Laggy Bases",  function()
        HideBases()
        Notify('Monzz Scriptz', 'Succesful! Prevented Laggy Bases', 2)
    end)

    slot:Button("Teleport To Base",  function()
        TeleportToBase()
    end)

    local slot = SlotTab:section('Base Coloring',true)

    slot:Button("White",  function()
        for i,v in pairs(game:GetService("Workspace").Properties:GetDescendants()) do
            if v.Name == "Square" then
                v.Color = Color3.fromRGB(255,255,255)
            end
            end
    end)

    slot:Button("Black",  function()
        for i,v in pairs(game:GetService("Workspace").Properties:GetDescendants()) do
            if v.Name == "Square" then
                v.Color = Color3.fromRGB(0,0,0)
            end
            end
    end)

    slot:Button("Bright Orange",  function()
        for i,v in pairs(game:GetService("Workspace").Properties:GetDescendants()) do
            if v.Name == "Square" then
                v.Color = Color3.fromRGB(1226,104,63)
            end
            end
    end)

    slot:Button("Bright Yellow",  function()
        for i,v in pairs(game:GetService("Workspace").Properties:GetDescendants()) do
            if v.Name == "Square" then
                v.Color = Color3.fromRGB(12226,1204,63)
            end
            end
    end)

    slot:Button("Bright Blue",  function()
        for i,v in pairs(game:GetService("Workspace").Properties:GetDescendants()) do
            if v.Name == "Square" then
                v.Color = Color3.fromRGB(1222216,1204,21623)
            end
            end
    end)

    slot:Button("Bright Pink",  function()
        for i,v in pairs(game:GetService("Workspace").Properties:GetDescendants()) do
            if v.Name == "Square" then
                v.Color = Color3.fromRGB(122316,414,21641)
            end
            end
    end)

    slot:Button("Default Color",  function()
        for i,v in pairs(game:GetService("Workspace").Properties:GetDescendants()) do
            if v.Name == "Square" then
                v.Color = Color3.fromRGB(126,104,63)
            end
            end
    end)

    local AutoBuyTab = window:Tab("Auto Buy",'6031265976')

    local AutoBuy = AutoBuyTab:section('AutoBuy',true)

    AutoBuy:Slider("Amount", "Amount to Buy", 1, 1, 100, false, function(Value)
        AmountToBuy = Value
        if ItemsCostLabel and ItemToBuy then
            ItemsCostLabel.Text = ("Price - $"..tostring((GetPrice(ItemToBuy)) * AmountToBuy)) 
        end    
    end)
    AmountToBuy = 1

    local BuyListDropdown = AutoBuy:Dropdown("Select Item", "Select Item", ItemList, function(Value)
        ItemToBuy = Value
        if ItemsCostLabel then
            ItemsCostLabel.Text = ("Price - $"..tostring((GetPrice(ItemToBuy)) * AmountToBuy))
        end
    end)

    ItemsCostLabel = AutoBuy:Label("Due - $")

    AutoBuy:Button("Purchase Selected Item(s)",  function()
        if not CheckIfWPPlaced() then return end
        if ItemToBuy then               
            local OldCharacterPos = GetChar().Torso.CFrame
            BuyItem(ItemToBuy,AmountToBuy,GetWPLoc())
            GetChar():SetPrimaryPartCFrame(OldCharacterPos)
        else
            Notify('Monzz Scriptz', 'Please select item!', 2)
        end    
    end)

    AutoBuy:Button("Abort Purchasing",  function()
        AbortAutoBuy=true
    end)

    AutoBuy:Toggle("Fast Checkout", " ", false, function(value)
        getgenv().checkout = value
        if value then
            FastCheckout()
        end  
    end)

    local autobuyfun = AutoBuyTab:section('Special Purchase(s)',true)

    autobuyfun:Button("Purchase All Blueprint(s)",  function(v)
        blueprints()
        for i, v in pairs(game:GetService("ReplicatedStorage").ClientItemInfo:GetChildren()) do
            if v:FindFirstChild("WoodCost") then
                if not game.Players.LocalPlayer.PlayerBlueprints.Blueprints:FindFirstChild(v.Name) then
                    if AbortAutoBuy then break end
                    BuyItem(v.Name, 1)
                    task.wait()
                end
            end
        end
            wait(1)
            open:Disconnect();
            open = nil;
        end)

    autobuyfun:Button("Toll Bridge",  function()
        Purchase(15)
    end)

    autobuyfun:Button("Ferry Ticket",  function()
        Purchase(13)
    end)

    autobuyfun:Button("Power Of Ease",  function()
        Purchase(3)
    end)

    local VehTab = window:Tab("Vehicle",'6034744029')

    local veh = VehTab:section('Vehicle Adjusments',true)

    veh:Slider("Vehicle Speed", "", 1, 1, 5, false, function(Val)
        VehicleSpeed(Val)
    end)

    veh:Slider("Vehicle Fly Speed", "", 5, 5, 50, false, function(value)
        iyflyspeed = value
        vehicleflyspeed = value 
    end)

    local veh = VehTab:section('Vehicle Modifications',true)

    veh:Toggle("Vehicle Fly", " ", false, function(v)
        if v == true then
            player = game.Players.LocalPlayer
            humanoid = player.Character.Humanoid
            if humanoid.Seated then
            local CurrentSeat = player.Character.Humanoid.SeatPart
                if CurrentSeat and CurrentSeat.Parent.Type.Value == "Vehicle" then
            nf()
        wait()
        sFLY(true)
            end
            end
        else
            nf()
        end
    end)

    veh:Button("Flip Vehicle",  function()
    flip()
    end)

    veh:Button("Sit in Any Vehicle",  function()
        anyvehicle()
        end)


    colorcarselceted = {"Silver", "Dark red", "Sand red", "Sand yellow metalic", "Lemon metalic", "Gun metalic", "Earth orange", "Earth yellow", "Brick yellow", "Rust", "Really black", "Faded green", "Sand green", "Black metalic", "Dark grey metallic", "Dark grey", "Hot pink", "Medium stone grey", "Mid grey"}

    local vehcolorspawner = VehTab:section('Vehicle Spawner',true)

    local selectcolcar
    local text = true
    local abortspawn = false
    local clickcar

    vehcolorspawner:Dropdown("Car Colors", "Car Colors", colorcarselceted, function(SelectColour)
        selectcolcar = SelectColour
    end)

    vehcolorspawner:Button("Start Vehicle Spawner",  function(v)
        if v then
            Notify('Vehicle Spawner', 'Select Vehicle!', 4)
        local clicktoselect
        clicktoselect = Mouse.Button1Up:Connect(function()
            if Mouse.Target and Mouse.Target.Parent.Type and Mouse.Target.Parent.Type.Value == "Vehicle Spot" then
            local bob = Instance.new("SelectionBox",  Mouse.Target.Parent)
            bob.Name = "Selection"
            bob.Adornee = bob.Parent
            bob.SurfaceTransparency = 1
            bob.LineThickness = 0.02
            bob.SurfaceColor3 = Color3.fromRGB(0,0,0)
            bob.Color3 = Color3.fromRGB(255,255,255)
            clickcar = Mouse.Target.Parent:FindFirstChild("ButtonRemote_SpawnButton", true)
            end
        end)
        repeat
            task.wait()
        until clickcar~=nil
        clicktoselect:Disconnect();
        clicktoselect = nil;
        local Car
        local a = game:GetService("Workspace").PlayerModels.ChildAdded:connect(function(v)
            v:WaitForChild("Owner")
            if v:WaitForChild("PaintParts") and v.Owner.Value==game.Players.LocalPlayer then
            Car = v.PaintParts.Part
            end
        end)
        local oldcolor
        repeat
            task.wait(0.45)
            game.ReplicatedStorage.Interaction.RemoteProxy:FireServer(clickcar)
            repeat
                wait()
            until Car ~= oldcolor
            oldcolor = Car
        until Car.BrickColor.Name == selectcolcar or abortspawn == false
        else
            test = true
        end
    end)

    vehcolorspawner:Button("Abort",  function()
        abortspawn = false
        wait(0.5)
        abortspawn = true
    end)

    local DupeTab = window:Tab("Dupes",'6035053289')

    local dupe = DupeTab:section('Axe Dupe',true)

    dupe:Label("You can dupe over 9 axes safely now!")

    dupe:Slider("Slot number", "", 1, 1, 6, false, function(value)
        slotnumber = value
    end)

    dupe:Slider("Wait Time", "", 1, 1, 6, false, function(value)
        dupertimer = value
    end)

    dupe:Button("Dupe Inventory",  function()
        AxeDupe(Slot)
    end)

    getgenv().loopDupe = false;

    dupe:Toggle("Loop Dupe", " ", false, function(Value)
        if Value then
        Notify('Monzz Scriptz', 'Please Wait 75 Seconds', 3)
            AxeDupeLoop(Slot)
        end
    end)


    dupe:Button("Count your Axes",  function()
        local axe = count_backpack()
        Notify('Axe', 'You Have ' ..axe, 3)
    end)


    dupe:Button("Drop Axe(s)",  function()

            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "Tool" then
                    game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(v,"Drop tool",game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0,4,-4))
                    wait(0.50)
                end
            end
    end)


    local maxdupe = DupeTab:section('Base Dupe',true)

    maxdupe:Toggle("I Have Watched Tutorial Before Duping", " ", false, function(Value)
        if Value then
        print("Use Dupe")
        end
    end)

    maxdupe:Slider("Select Slot", "", 1, 1, 6, false, function(value)
        slotnumber = value
    end)

    maxdupe:Slider("Wait Time", "", 0.1, 1, 100, true, function(value)
        dupewaittime = value
    end)

    maxdupe:Button('Full Base Dupe',function()
        Notify('Monzz Scriptz', 'Duping Base..', 3)
        BaseDupe()
    end)

    maxdupe:Button('Remove Ownership',function()
        task.spawn(function()
            game:GetService("ReplicatedStorage").LoadSaveRequests.RequestLoad:InvokeServer(69420,game.Players.LocalPlayer)
        end)
    end)

    maxdupe:Label("âš ï¸ AVOID LOADING OVERTIME TO PREVENT BASE WIPE!")

    local blueprintdupe = DupeTab:section('Golden Blueprint Dupe',true)

    blueprintdupe:Slider("Select Slot", "", 1, 1, 6, false, function(value)
        slotnumber = value
    end)

    blueprintdupe:Button("Dupe",  function()
        GoldenBluePrintDupe(Slot)
    end)
    blueprintdupe:Label("Not Working At The Moment")

    local TrollingTab = window:Tab("Trolling",'6034230660')

    --[[troll:Toggle("Bypass Blacklist V3", " ", false, function(state)
        if state then
            antiblacklist()
        else
            offantiblacklist()
        end
    end)
    ]]


    local troll = TrollingTab:section('Griefing',true)

    troll:Dropdown("Player", "Select...", GetPlrs(), function(Value)
        plrselected = Value
        end)

        troll:Button('Kill Player', function()
            KillPlayer()
        end)
        
        troll:Button('Bring Player', function()
            BringPlayer()
        end)

        troll:Toggle("Fling", " ", false, function(state)
            if state then 
                noclip()
                fling()
            else
                clip()
                unfling()
            end
        end)

        local troll = TrollingTab:section('Local Server',true)

        getgenv().autoTrollSound = true;

        troll:Toggle("Annoying Sounds", " ", false, function(Value)
            while getgenv().autoTrollSound == true do
                wait(0.01)
            for _, v in next, (workspace.PlayerModels:GetChildren()) do
                if v:FindFirstChild("RunSounds") then
                    v.RunSounds:FireServer("Startup")
                end
            end
            end
        end)

        troll:Button('Fire All Scoobs', function()
            for i,v in next, game:GetService"Workspace".PlayerModels:GetChildren() do
                if v:FindFirstChild"Owner" and v.Owner.Value == game:GetService"Players".LocalPlayer then
                    if v:FindFirstChild"ItemName" and v.ItemName.Value == "Scoobis" then
                        repeat
                        game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(v.ButtonRemote_Main)
                        task.wait()
                        until v.Main.Sound.IsPlaying
                    end
                end
            end
        end)

        troll:Button('Trigger All Pressure Plates', function()
            for i,v in pairs(game:GetService("Workspace").PlayerModels:GetDescendants()) do
                if v.Name == "Plate" then
                task.wait(0.1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            end
        end
        end)

        troll:Button('Trigger All Seats', function()
            for i,v in pairs(game:GetService("Workspace").PlayerModels:GetDescendants()) do
                if v.Name == "Seat" then
                task.wait(0.1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                end
                end
        end)

        troll:Toggle("Open All Shop Doors", " ", false, function(Value)
            ToggleShopDoors()
            Notify('Monzz Scriptz', 'Opened All Doors', 2)
        end)

    local troll = TrollingTab:section('Trolling Options',true)

    troll:Button('Zombie',function()
        for i,v in next, game.Players.LocalPlayer.Character:GetChildren() do
            if v.Name == "Left Leg" or v.Name == "Right Leg" then
                v:Remove()
            end
        end
    end)

    troll:Button('Spinning Torso',function()
        loadstring(game:HttpGet("https://pastebin.com/raw/GqMHmzw1",true))()
    end)
    
    troll:Button('Walk On Walls',function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/specowos/scriptsforvideos1/main/walkonwalls.lua",true))()
    end)
    
    troll:Button('Front/Back Flip',function()
        loadstring(game:HttpGet("https://pastebin.com/raw/vR1LCghc",true))()
        Notify('Monzz Scriptz', 'Commands: Z, X, C', 3)
    end)
    
    troll:Button('Invisibe',function()
        loadstring(game:HttpGet("https://pastebin.com/raw/pLhjKeZH",true))()
        Notify('Monzz Scriptz', 'Loaded Invisible Script', 6)
    end)

    troll:Label("Visible To Other Players")

    local troll = TrollingTab:section('Client Sided',true)

    troll:Toggle("Clear Shop Items", " ", false, function(Value)
        ClearAllShopItems = Value
        if Value then
            ClearShopItems()
        end
        Notify('Monzz Scriptz', 'Success!', 2)
    end)

    troll:Toggle("Enable Spawner", " ", false, function(value)
        getgenv().partSpawner = value
        if value then
            PartSpawner()
        end  
    end)

    troll:Label("Not Visible To Others")

    local troll = TrollingTab:section('Spoofers',true)

    troll:Button('Fake Lag Spoofer',function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DylanIsAKingL/Lua-Scripts/main/fake-lag.lua"))()
    end)

    troll:Button('Ping Spoofer [1.21 MS]',function()
        local PerformanceStats = game:GetService("CoreGui"):WaitForChild("RobloxGui"):WaitForChild("PerformanceStats");
        local PingLabel;
        for I, Child in next, PerformanceStats:GetChildren() do
            if Child.StatsMiniTextPanelClass.TitleLabel.Text == "Ping" then
                PingLabel = Child.StatsMiniTextPanelClass.ValueLabel;
                break;
            end;
        end;

        local text = "spoof"; 
        PingLabel:GetPropertyChangedSignal("Text"):Connect(function()
            PingLabel.Text = "1.21 ms"; 
        end);
        PingLabel.Text = "1.21 ms";
    end)

    troll:Button('Ping Spoofer [3 Million MS]',function()
        local PerformanceStats = game:GetService("CoreGui"):WaitForChild("RobloxGui"):WaitForChild("PerformanceStats");
        local PingLabel;
        for I, Child in next, PerformanceStats:GetChildren() do
            if Child.StatsMiniTextPanelClass.TitleLabel.Text == "Ping" then
                PingLabel = Child.StatsMiniTextPanelClass.ValueLabel;
                break;
            end;
        end;

        local text = "spoof"; 
        PingLabel:GetPropertyChangedSignal("Text"):Connect(function()
            PingLabel.Text = "30000000 ms"; 
        end);
        PingLabel.Text = "30000000 ms";
    end)

    troll:Label("!Warning! Might Freeze/Lag Your Game")

    local ItemTab = window:Tab("Base Drop",'6034744057')

    local items = ItemTab:section('Item Teleportation',true)

    DropOwner = game.Players.LocalPlayer.Character.Name

    items:Toggle("Group Select", " ", false, function(Value)
        _G.selectionv2 = Value
        selectionv2(DropOwner)
    end)

    items:Toggle("Single Select", " ", false, function(Value)
        ClickTp = Value
        ClickToTP()
    end)

    items:Button('Teleport Selected Item(s)',function()
        SetCords()
        local WoodDirection = "Upwards"
        SelectionTp()
    end)

    items:Button('Deselect Item(s)',function()
        itemunselect()
        wait(0.1)
        woodunselect()
    end)

    local items = ItemTab:section('Wood Teleportation',true)

    TpToWoodAfterFinished = false

    items:Toggle("Wood Select", " ", false, function(Value)
        WOODClickToTP(Value)
    end)

    items:Button('Teleport Selected Wood(s)',function()
        SetCords()
        local WoodDirection = "Upwards"
        SelectionTp()
    end)

    items:Button('Deselect Wood(s)',function()
        itemunselect()
        wait(0.1)
        woodunselect()
    end)

    local items = ItemTab:section('Friend Base Drop',true)

    items:Toggle("Group Select", " ", false, function(Value)
        _G.selectionv2 = Value
        selectionv3()
    end)


    local SorterTab = window:Tab("Base Stack",'6031079158')

    local sort = SorterTab:section('Item Sorter',true)

    local X,Y,Z

    sort:Slider("X", "", 0, 0, 15, false, function(value)
        X = value
    end)

    sort:Slider("Y", "", 0, 0, 15, false, function(value)
        Y = value
    end)

    sort:Slider("Z", "", 0, 0, 15, false, function(value)
        Z = value
    end)

    local posmoves
    local selectpos
    local basesort=false

    local sort = SorterTab:section('Enable / Disable',true)

    sort:Button('Start',function()

        basesort=true
        Notify('Sorter', 'Select an item to sort', 1.5)
        
        local SelectedItem
        local itemname = false
        local ClickToSelectClick = Mouse.Button1Up:Connect(function()
            
            local Clicked = Mouse.Target
            if Clicked.Parent:FindFirstChild("Owner") and tostring(Clicked.Parent.Owner.Value) == playerseclet then
                if Clicked.Parent:FindFirstChild("ItemName") then
                    itemname = true
                    SelectedItem = Clicked.Parent.ItemName.Value
                else
                    SelectedItem = Clicked.Parent.PurchasedBoxItemName.Value
                end
            end
        end)
    repeat task.wait(0.1)
    until SelectedItem~=nil
        local XS, ZS = X,Z,Y
        local Count = 0
        local ItemsToSort = {}
    
        for i, v in next, game:GetService("Workspace").PlayerModels:GetChildren() do
            if v:FindFirstChild("PurchasedBoxItemName") and v.PurchasedBoxItemName.Value == SelectedItem and itemname==false  then
                if v:FindFirstChild("Owner") and tostring(v.Owner.Value)==playerseclet then
                table.insert(ItemsToSort, v)
                end
            elseif v:FindFirstChild("ItemName") and v.ItemName.Value == SelectedItem and itemname==true then 
                if v:FindFirstChild("Owner") and tostring(v.Owner.Value)==playerseclet then
                table.insert(ItemsToSort, v)
                end
            end
        end
    
        local SortPreview = Instance.new("Part", workspace)
        local  Selection = Instance.new("SelectionBox", SortPreview)
        Selection.LineThickness = 0.1
        Selection.Adornee = SortPreview
        SortPreview.Size = Vector3.new(ItemsToSort[1].Main.Size.X * XS,ItemsToSort[1].Main.Size.Y * math.ceil(#ItemsToSort / (XS * ZS)), ItemsToSort[1].Main.Size.Z * ZS)
        SortPreview.Transparency = 1
        SortPreview.CanCollide = false
        SortPreview.Anchored = true
        SortPreview.Name = "MonzzSort"
        local PreviewPos = SortPreview.Position + Vector3.new(-(SortPreview.Size.X / 2 + ItemsToSort[1].Main.Size.X / 2),
            -(SortPreview.Size.Y / 2 + ItemsToSort[1].Main.Size.Y / 2), -(SortPreview.Size.Z / 2 +
                ItemsToSort[1].Main.Size.Z / 2))
    
        for Y = 1, math.ceil(#ItemsToSort / (XS * ZS)) do
            for X = 1, XS do
                for Z = 1, ZS do
                    Count = Count + 1
                    if ItemsToSort[Count] then
                        local Itm = ItemsToSort[Count].Main:Clone()
                        Itm.CanCollide = false
                        Itm.Transparency = 0.5
                        Itm.Orientation = Vector3.new(0, 0, 0)
                        Itm.Position = Vector3.new(PreviewPos.X + X * ItemsToSort[1].Main.Size.X,PreviewPos.Y + Y * ItemsToSort[1].Main.Size.Y, PreviewPos.Z + Z * ItemsToSort[1].Main.Size.Z)
                        Itm.Parent = SortPreview
                        local ItmWeld = Instance.new("WeldConstraint", Itm)
                        ItmWeld.Part0 = Itm
                        ItmWeld.Part1 = SortPreview
                        for i, v in next, Itm:GetChildren() do
                            if v.Name:match("Decal") then
                                v.Transparency = 0.5
                            end
                        end
                    end
                end
            end
        end
        
        posmove = Mouse.Move:Connect(function()
            if Mouse.Target.Name ~= "Ground" then
                SortPreview.CFrame = CFrame.new(Mouse.Hit.X + XS / 2 * ItemsToSort[1].Main.Size.X,
                    Mouse.Hit.Y + SortPreview.Size.Y / 2, Mouse.Hit.Z + ZS / 2 * ItemsToSort[1].Main.Size.Z)
            end
        end)
        task.wait(0.5)
        selectpos = Mouse.Button1Down:Connect(function()
            if Mouse.Target.Name ~= "Ground" then
                SortPreview.CFrame = CFrame.new(Mouse.Hit.X + XS / 2 * ItemsToSort[1].Main.Size.X,
                    Mouse.Hit.Y + SortPreview.Size.Y / 2, Mouse.Hit.Z + ZS / 2 * ItemsToSort[1].Main.Size.Z)
            end
            selectpos:Disconnect()
            selectpos = nil
            posmove:Disconnect()
            posmove = nil
            local Count = 0
            local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    
            for i, w in next, game.Workspace.MonzzSort:GetChildren() do
                if w.Name == "Main" then
                    if basesort==false then break end
                    Count = Count + 1
                    
                    local Freeze= Instance.new("BodyVelocity", ItemsToSort[Count].Main)
                    Freeze.Velocity = Vector3.new(0, 0, 0)
                        Freeze.P = 100000
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=ItemsToSort[Count].Main.CFrame
                    wait(0.1)
                    
                        for a = 1,25,1 do
                            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(ItemsToSort[Count])
                            ItemsToSort[Count]:PivotTo(w.CFrame)
                            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(ItemsToSort[Count])
                            task.wait()
                    end
                    w:Destroy()
                    spawn(function()
                        Freeze:Destroy()
                    end)
                    
                end
                
            end
            game:GetService "Workspace":FindFirstChild "MonzzSort":Destroy()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=oldpos
            Notify('Sorter', 'Done!', 3)
        end)
    end)

    sort:Button('Stop',function()
        pcall(function()
            game:GetService "Workspace":FindFirstChild "MonzzSort":Destroy()
        end)
        pcall(function ()
            selectpos:Disconnect()
            selectpos = nil
        end)
            pcall (function()
                posmove:Disconnect()
                posmove = nil
            end)
        basesort=false
        Notify('Sorter', 'Done!', 3)
    end)

    local AutoBuildTab = window:Tab("AutoBuild",'6035067834')
    local woods = AutoBuildTab:section('Auto-Filler V3',true)

    woods:Label("Sligthly Improved with new wait times added and Ping Checker")

    local wood_build = {"Generic","Oak","Cherry","Fir","Birch","Walnut","Koa","Volcano","Zombie","Gold","Palm","SnowGlow","Frost","CaveCrawler"}

    local OresIndex = {
        Generic = Color3.fromRGB(204, 142, 105), --Done
        Oak = Color3.fromRGB(234, 184, 146), --Done
        Cherry = Color3.fromRGB(163, 75, 75), --Done
        Fir = Color3.fromRGB(215, 197, 154), --Done
        Birch = Color3.fromRGB(205, 205, 205), --Done
        Walnut = Color3.fromRGB(105, 64, 40), --Done
        Koa = Color3.fromRGB(143, 76, 42), --Done
        Volcano = Color3.fromRGB(255, 0, 0), --Done
        Zombie = Color3.fromRGB(52, 142, 64), --Done
        Gold = Color3.fromRGB(226, 155, 64), --Done
        Palm = Color3.fromRGB(226, 220, 188), --Done
        SnowGlow = Color3.fromRGB(255, 255, 0), --Done
        Frost = Color3.fromRGB(159, 243, 233), --Done
        CaveCrawler = Color3.fromRGB(16, 42, 220) --Done
    }
    
    local colorbuild = OresIndex.Generic
    
    woods:Dropdown("Wood Type", "Wood Type", wood_build, function(Value)
        colorbuild = OresIndex[Value]
    end)

    local function MeasurePing()
        local time = tick()
    game:GetService("ReplicatedStorage"):WaitForChild("TestPing"):InvokeServer()
        return tick() - time
    end
    

    woods:Button('Fill Once',function()
            for _,v in pairs(game:GetService("Workspace").PlayerModels:GetChildren()) do
                if v:IsA('Model') and v:FindFirstChild('Owner') and v:FindFirstChild('WoodSection') then
                    if v.Owner.Value == game.Players.LocalPlayer and v.WoodSection.Color == colorbuild then
                        for _,z in pairs(game:GetService("Workspace").PlayerModels:GetChildren()) do
                            if z:IsA('Model') and z:FindFirstChild('Owner') and z:FindFirstChild('BuildDependentWood') then
                                if z.Owner.Value == game.Players.LocalPlayer then
                                    MeasurePing()
                                    task.wait(2)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.WoodSection.CFrame
                                    MeasurePing()
                                    task.wait(1)
                                    game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(workspace.PlayerModels.Plank)
                                    MeasurePing()
                                    v.WoodSection.CFrame = z.BuildDependentWood.CFrame
                                    task.wait()
                                    MeasurePing()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = z.BuildDependentWood.CFrame
                                    break;
                                end
                            end
                        end
                    end
                end
            end
    end)


    woods:Toggle("AutoBuildLoops", " ", false, function(value)
        if value then
            getgenv().autoBuild = true
        while getgenv().autoBuild == true do
            task.wait(1)
            for _,v in pairs(game:GetService("Workspace").PlayerModels:GetChildren()) do
                if v:IsA('Model') and v:FindFirstChild('Owner') and v:FindFirstChild('WoodSection') then
                    if v.Owner.Value == game.Players.LocalPlayer and v.WoodSection.Color == colorbuild then
                        for _,z in pairs(game:GetService("Workspace").PlayerModels:GetChildren()) do
                            if z:IsA('Model') and z:FindFirstChild('Owner') and z:FindFirstChild('BuildDependentWood') then
                                if z.Owner.Value == game.Players.LocalPlayer then
                                    MeasurePing()
                                    task.wait(2)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.WoodSection.CFrame
                                    MeasurePing()
                                    task.wait(1)
                                    game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(workspace.PlayerModels.Plank)
                                    MeasurePing()
                                    v.WoodSection.CFrame = z.BuildDependentWood.CFrame
                                    task.wait()
                                    MeasurePing()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = z.BuildDependentWood.CFrame
                                    break;
                                end
                            end
                        end
                    end
                end
            end
        end
        task.wait()
    else
        getgenv().autoBuild = false
        task.wait()
    end
    end)

    woods:Button('Check Ping',function()
        Notify('Monzz Scriptz', MeasurePing(), 2)
end)

    local SettingsTab = window:Tab("Settings",'6034509993')

    local set = SettingsTab:section('Mobile Settings',true)

    set:Button("Virtual Keyboard",function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
    end)

    set:Toggle("Hide Virtual Keyboard", "Anti AFK", false, function(Val)
        if Val then
        game:GetService("CoreGui")["Keyboard gui WarriorRoberr Version"].Drag.Visible = true
    else
        game:GetService("CoreGui")["Keyboard gui WarriorRoberr Version"].Drag.Visible = false
    end
    end)

    set:Button("Mobile Fly GUI",function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
    end)

    set:Button("Check Which Device Im On",function()
local UserInputService = game:GetService("UserInputService")
if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled and not UserInputService.MouseEnabled then
    Notify('Monzz Scriptz', 'Mobile Detected', 4)
elseif not UserInputService.TouchEnabled and UserInputService.KeyboardEnabled and UserInputService.MouseEnabled then
    Notify('Monzz Scriptz', 'Desktop Detected', 4)
end
    end)

    local set = SettingsTab:section('Game Settings',true)
    set:Button("Server Hop",function()
        local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()

        module:Teleport(13822889)
    end)

    set:Button("Rejoin",function()
        local game_id = 13822889
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
    end)

        set:Button("Kill Roblox",function()
            game:Shutdown()
        end)

    set:Toggle("Anti-AFK", "Anti AFK", true, function(Val)
        AntiAFK(Val)
    end)

    set:Toggle("LT2 Music", "", true, function(Value)
        game.Players.LocalPlayer.Music.Value = Value
    end)


    set:Keybind("Toggle Sit", Enum.KeyCode.LeftAlt, function(Value)
        local PlayerHumanoid = game.Workspace[game.Players.LocalPlayer.Name].Humanoid
        PlayerHumanoid.Sit = true
    end)
    

    local set = SettingsTab:section("FPS Boosters",true)

    set:Button("Good",function()
        for _,v in pairs(workspace:GetDescendants()) do
            if v.ClassName == "Part"
            or v.ClassName == "SpawnLocation"
            or v.ClassName == "WedgePart"
            or v.ClassName == "Terrain"
            or v.ClassName == "MeshPart" then
            v.Material = "Plastic"
            end
            end
            
            for _,v in pairs(workspace:GetDescendants()) do
            if v.ClassName == "Decal"
            or v.ClassName == "Texture" then
            v:Destroy()
            end
            end
    end)

    set:Button("Nitro",function()
        for _,v in pairs(workspace:GetDescendants()) do
            if v.ClassName == "Part"
            or v.ClassName == "SpawnLocation"
            or v.ClassName == "WedgePart"
            or v.ClassName == "Terrain"
            or v.ClassName == "MeshPart" then
            v.Material = "Plastic"
            end
            end
    end)

    set:Button("Ultra",function()
        for _,v in pairs(workspace:GetDescendants()) do
            if v.ClassName == "Part"
            or v.ClassName == "SpawnLocation"
            or v.ClassName == "WedgePart"
            or v.ClassName == "Terrain"
            or v.ClassName == "MeshPart" then
            v.BrickColor = BrickColor.new(155, 155, 155)
            v.Material = "Plastic"
            end
            end
            
            for _,v in pairs(workspace:GetDescendants()) do
            if v.ClassName == "Decal"
            or v.ClassName == "Texture" then
            v:Destroy()
            end
            end
    end)

    local set = SettingsTab:section("UI Settings & Customization",true)

    set:Toggle("Remove UI Glow", "", false, function(state)
        if state then
            game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = false
        else
            game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = true
        end
    end)

    set:Toggle("Rainbow UI", "", false, function(state)
        if state then
            game:GetService("CoreGui")["frosty is cute"].Main.Style = "DropShadow"
        else
            game:GetService("CoreGui")["frosty is cute"].Main.Style = "Custom"
        end
    end)

        set:Button("Destroy GUI",function()
            game:GetService("CoreGui")["frosty is cute"]:Destroy()
        end)

        set:Keybind("Toggle UI", Enum.KeyCode.Home, function(Value)
            ToggleUILib()
        end)

    game:GetService("ReplicatedStorage").Notices.OwnerMessage.Value = "Monzz V40"

    local Timerstab1 = creds:section("Game Timers",true)
    
    local watercar = Timerstab1:Label("Ferry Departure:")

    local loadtimer = Timerstab1:Label("Canload:")

 task.spawn(function()
    while task.wait(0.5) do
    watercar.Text = "Ferry Take-Off: " .. tostring(game:GetService("Workspace").Ferry.TimeToDeparture.Value) .. " Seconds"
    if game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad:InvokeServer(game.Players.LocalPlayer) then
     loadtimer.Text = "You Can Load!"
     else
     loadtimer.Text = "You Cannot Load!"
     end
    end
 end)
    
    --Notify--
    Notify('Monzz Scriptz', 'Welcome to Monzz', 6)
    wait(2)
    NotifyBig('Monzz Scriptz', 'Make sure to join discord for updates and announcments!', 6)
    wait(10)
    NotifyBig('Monzz Scriptz', 'Did You Know Applebox Is A Skid?', 6)
    wait(20)
    NotifyBig('Monzz Scriptz', 'Becky is a slut', 6)
    wait(25)
    NotifyBig('Monzz Scriptz', 'Oldest Gift In game is fire gift', 6)
    wait(25)
    NotifyBig('Monzz Scriptz', '50CaLSpecialist#0001 is the owner!', 6)
    wait(25)
    NotifyBig('Monzz Scriptz', 'Monzz had many generations, Impulse,HotTakis, and more', 6)
