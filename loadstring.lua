if game.CoreGui:FindFirstChild("ForbiddedMenus") then
    game.CoreGui.ForbiddedMenus:Destroy()
end
 
--// gunz
local guns = {
    "ARP 5inch - $7500",
    "ARP - $9000",
    "Micro Draco - $9000",
    "Glock 19x EXT - $4500",
    "Tec9 - $4500",
    "UZI - $4500",
    "Mac 10 - $4500",
    "FN57 - $3500",
    "FN 502 - $3500",
    "Glock 40 - $3800",
    "Glock 23 - $2800",
    "Glock 29 - $1900",
    "PSA Dagger - $2000",
    "Polymer80 - $2500",
    "VP9 - $2300",
    "G2C - $1200",
    "Glock 27 - $1600",
    "Glock 27 V2 - $1600",
    "Glock 26 - $1200",
    "Ruger LCP - $800",
    "Hi-Point - $800",
    "Beretta 92Fs - $2800",
    "Glock 17 - $2800",
    "Glock 19 - $2500",
    "Glock 19x - $1800",
    "Springfield XD - $2500",
}
 
--// ammo tab
local ammoList = {
    "5.56",
    "5.7",
    "380 ACP",
    "10mm",
    "45 ACP",
    "40 S&W",
    "7.62",
    "9mm",
}
 
--// teleporting cords for purchase button
local purchaseTeleports = {
    -- gunz
    ["ARP 5inch - $7500"] = CFrame.new(312, 4, 475),
    ["ARP - $9000"] = CFrame.new(312, 4, 479),
    ["Micro Draco - $9000"] = CFrame.new(297, 4, 477),
    ["Glock 19x EXT - $4500"] = CFrame.new(303, 4, 479),
    ["Tec9 - $4500"] = CFrame.new(304, 4, 473),
    ["UZI - $4500"] = CFrame.new(304, 4, 469),
    ["Mac 10 - $4500"] = CFrame.new(302, 4, 464),
    ["FN57 - $3500"] = CFrame.new(286, 4, 482),
    ["FN 502 - $3500"] = CFrame.new(287, 4, 477),
    ["Glock 40 - $3800"] = CFrame.new(287, 4, 476),
    ["Glock 23 - $2800"] = CFrame.new(287, 4, 473),
    ["Glock 29 - $1900"] = CFrame.new(287, 4, 472),
    ["PSA Dagger - $2000"] = CFrame.new(287, 4, 470),
    ["Polymer80 - $2500"] = CFrame.new(287, 4, 467),
    ["VP9 - $2300"] = CFrame.new(287, 4, 466),
    ["G2C - $1200"] = CFrame.new(287, 4, 464),
    ["Glock 27 - $1600"] = CFrame.new(291, 4, 460),
    ["Glock 27 V2 - $1600"] = CFrame.new(293, 4, 460),
    ["Glock 26 - $1200"] = CFrame.new(295, 4, 459),
    ["Ruger LCP - $800"] = CFrame.new(297, 4, 459),
    ["Hi-Point - $800"] = CFrame.new(299, 4, 459),
    ["Beretta 92Fs - $2800"] = CFrame.new(301, 4, 459),
    ["Glock 17 - $2800"] = CFrame.new(303, 4, 460),
    ["Glock 19 - $2500"] = CFrame.new(305, 4, 460),
    ["Glock 19x - $1800"] = CFrame.new(306, 4, 460),
    ["Springfield XD - $2500"] = CFrame.new(306, 4, 460),
 
    -- ammmoooo
    ["5.7"] = CFrame.new(307, 4, 466),
    ["380 ACP"] = CFrame.new(308, 4, 467),
    ["10mm"] = CFrame.new(308, 4, 467),
    ["45 ACP"] = CFrame.new(310, 4, 469),
    ["40 S&W"] = CFrame.new(312, 4, 469),
    ["7.62"] = CFrame.new(313, 4, 469),
    ["9mm"] = CFrame.new(315, 4, 469),
    ["5.56"] = CFrame.new(316, 4, 470),
}
 
--// map teleport locations (Teleports tab)
local teleportLocations = {
    {name = "Gunstore 2", pos = CFrame.new(313, 4, 455)},
    {name = "Gun Store", pos = CFrame.new(561, 4, -250)},
    {name = "Gun Buyer", pos = CFrame.new(338, 4, -355)},
 
    {name = "Laundromat", pos = CFrame.new(-327, 4, 470)},
    {name = "Laundromat 2", pos = CFrame.new(557, 4, -481)},
 
    {name = "Clothing Store", pos = CFrame.new(723, 4, 575)},
    {name = "Clothing Store 2", pos = CFrame.new(-383, 4, 469)},
 
    {name = "Shoe Store", pos = CFrame.new(619, 4, 737)},
    {name = "Shoe Store 2", pos = CFrame.new(-423, 4, 474)},
 
    {name = "Electronics Store", pos = CFrame.new(-67, 4, 478)},
 
    {name = "Box Job", pos = CFrame.new(622, 4, 564)},
 
    {name = "Pawn Store", pos = CFrame.new(725, 4, 873)},
 
    {name = "Dealership", pos = CFrame.new(787, 4, 731)},
    {name = "Dealership 2", pos = CFrame.new(-785, 4, 141)},
 
    {name = "Tattoo Shop", pos = CFrame.new(879, 4, 563)},
 
    {name = "Pharmacy", pos = CFrame.new(569, 4, 193)},
    {name = "Pharmacy 2", pos = CFrame.new(267, 4, 465)},
 
    {name = "Trap House", pos = CFrame.new(-25, 4, -124)},
 
    {name = "Hardware Store", pos = CFrame.new(529, 4, 114)},
 
    {name = "Gardening Supplies", pos = CFrame.new(-125, 4, 333)},
 
    {name = "Black Market", pos = CFrame.new(-832, 4, 361)},
}
 
--// autofarm variablesz
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")
local vim = game:GetService("VirtualInputManager")
 
-- keep char/hrp updated after respawn
player.CharacterAdded:Connect(function(newChar)
    char = newChar
    hrp = newChar:WaitForChild("HumanoidRootPart")
end)
 
-- teleport helper (always uses the current character)
local function teleportTo(cf)
    local c = player.Character
    local root = c and c:FindFirstChild("HumanoidRootPart")
    if root then
        root.CFrame = cf + Vector3.new(0, 3, 0)
        return true
    end
    return false
end
 
local selling = false
 
local farm1 = {
    CFrame.new(582, 4, 560),
    CFrame.new(598, 4, 564),
    CFrame.new(582, 4, 560),
    CFrame.new(600, 4, 559),
    CFrame.new(582, 4, 560),
    CFrame.new(611, 4, 559),
    CFrame.new(582, 4, 560),
    CFrame.new(612, 4, 564),
    CFrame.new(582, 4, 560),
}
 
local farm2 = {
    CFrame.new(391, 4, 172),
    CFrame.new(392, 4, 174),
    CFrame.new(389, 4, 182),
    CFrame.new(379, 4, 182),
    CFrame.new(379, 4, 179),
    CFrame.new(363, 4, 177),
}
 
local chemPrep = CFrame.new(380, 4, 165)
 
local farm1Enabled = false
local farm2Enabled = false
 
--// gui root
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.Name = "ForbiddedMenus"
ScreenGui.ResetOnSpawn = false
 
--// the main hub frame
local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 600, 0, 400)
Main.Position = UDim2.new(0.5, -300, 0.5, -200)
Main.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Main.BorderSizePixel = 0
 
local MainCorner = Instance.new("UICorner", Main)
MainCorner.CornerRadius = UDim.new(0, 6)
 
local MainStroke = Instance.new("UIStroke", Main)
MainStroke.Thickness = 2
MainStroke.Color = Color3.fromRGB(255, 255, 255)
 
--// draggin motion
local dragging, dragInput, dragStart, startPos
 
Main.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = Main.Position
    end
end)
 
Main.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)
 
Main.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)
 
game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart
        Main.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)
 
--// side bar 
local Sidebar = Instance.new("Frame", Main)
Sidebar.Size = UDim2.new(0, 150, 1, 0)
Sidebar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Sidebar.BorderSizePixel = 0
 
local SidebarCorner = Instance.new("UICorner", Sidebar)
SidebarCorner.CornerRadius = UDim.new(0, 6)
 
local SidebarTitle = Instance.new("TextLabel", Sidebar)
SidebarTitle.Size = UDim2.new(1, 0, 0, 50)
SidebarTitle.BackgroundTransparency = 1
SidebarTitle.Text = "ForbiddedMenus"
SidebarTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
SidebarTitle.Font = Enum.Font.GothamBold
SidebarTitle.TextSize = 18
 
--// tab button function
local function createTabButton(name, order)
    local btn = Instance.new("TextButton", Sidebar)
    btn.Size = UDim2.new(1, -20, 0, 40)
    btn.Position = UDim2.new(0, 10, 0, 60 + (order * 50))
    btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 14
    btn.Text = name
 
    local corner = Instance.new("UICorner", btn)
    corner.CornerRadius = UDim.new(0, 4)
 
    return btn
end
 
local GunsBtn = createTabButton("Guns", 0)
local AmmoBtn = createTabButton("Ammo", 1)
local AutofarmBtn = createTabButton("Autofarms", 2)
local TeleportsBtn = createTabButton("Teleports", 3)
 
--// content panel ammo+guns
local Content = Instance.new("Frame", Main)
Content.Size = UDim2.new(1, -160, 1, -20)
Content.Position = UDim2.new(0, 160, 0, 10)
Content.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Content.BorderSizePixel = 0
 
local ContentCorner = Instance.new("UICorner", Content)
ContentCorner.CornerRadius = UDim.new(0, 6)
 
local ContentTitle = Instance.new("TextLabel", Content)
ContentTitle.Size = UDim2.new(1, 0, 0, 40)
ContentTitle.BackgroundTransparency = 1
ContentTitle.Text = "Gun Buyer"
ContentTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
ContentTitle.Font = Enum.Font.GothamBold
ContentTitle.TextSize = 18
 
--// scrolling list
local Scrolling = Instance.new("ScrollingFrame", Content)
Scrolling.Size = UDim2.new(1, -20, 1, -100)
Scrolling.Position = UDim2.new(0, 10, 0, 50)
Scrolling.CanvasSize = UDim2.new(0, 0, 0, 0)
Scrolling.ScrollBarThickness = 6
Scrolling.BackgroundTransparency = 1
 
local UIList = Instance.new("UIListLayout", Scrolling)
UIList.Padding = UDim.new(0, 6)
 
local selectedItem = nil
 
--// list loadarrrrr
local function loadList(list)
    for _, child in ipairs(Scrolling:GetChildren()) do
        if child:IsA("TextButton") then
            child:Destroy()
        end
    end
 
    Scrolling.CanvasSize = UDim2.new(0, 0, 0, #list * 40)
 
    for _, item in ipairs(list) do
        local Button = Instance.new("TextButton", Scrolling)
        Button.Size = UDim2.new(1, -10, 0, 35)
        Button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        Button.TextColor3 = Color3.fromRGB(255, 255, 255)
        Button.Font = Enum.Font.Gotham
        Button.TextSize = 14
        Button.Text = item
 
        local corner = Instance.new("UICorner", Button)
        corner.CornerRadius = UDim.new(0, 4)
 
        Button.MouseButton1Click:Connect(function()
            selectedItem = item
            ContentTitle.Text = "Selected: " .. item
        end)
    end
end
 
--// autofarm panell
local AutofarmPanel = Instance.new("Frame", Main)
AutofarmPanel.Size = UDim2.new(1, -160, 1, -20)
AutofarmPanel.Position = UDim2.new(0, 160, 0, 10)
AutofarmPanel.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
AutofarmPanel.BorderSizePixel = 0
AutofarmPanel.Visible = false
 
Instance.new("UICorner", AutofarmPanel).CornerRadius = UDim.new(0, 6)
 
local AFtitle = Instance.new("TextLabel", AutofarmPanel)
AFtitle.Size = UDim2.new(1, 0, 0, 40)
AFtitle.BackgroundTransparency = 1
AFtitle.Text = "Autofarms"
AFtitle.TextColor3 = Color3.fromRGB(255, 255, 255)
AFtitle.Font = Enum.Font.GothamBold
AFtitle.TextSize = 18
 
-- button maker/creator
local function createFarmButton(text, y, callback)
    local btn = Instance.new("TextButton", AutofarmPanel)
    btn.Size = UDim2.new(0, 240, 0, 45)
    btn.Position = UDim2.new(0, 20, 0, y)
    btn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 16
    btn.Text = text
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 4)
 
    btn.MouseButton1Click:Connect(function()
        callback(btn)
    end)
end
 
-- box job autofarm
createFarmButton("Box Job Autofarm: OFF", 60, function(btn)
    farm1Enabled = not farm1Enabled
    if farm1Enabled then
        btn.Text = "Box Job Autofarm: ON"
        btn.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
    else
        btn.Text = "Box Job Autofarm: OFF"
        btn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
    end
end)
 
-- chemistry autofarm
createFarmButton("Chemistry Autofarm: OFF", 120, function(btn)
    farm2Enabled = not farm2Enabled
    if farm2Enabled then
        btn.Text = "Chemistry Autofarm: ON"
        btn.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
    else
        btn.Text = "Chemistry Autofarm: OFF"
        btn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
    end
end)
 
--// autofarm looper
task.spawn(function()
    while true do
        if (farm1Enabled or farm2Enabled) and not selling then
            vim:SendKeyEvent(true, "E", false, game)
            vim:SendKeyEvent(false, "E", false, game)
        end
        task.wait(0.2)
    end
end)
 
task.spawn(function()
    while true do
        if farm1Enabled then
            local original = hrp.CFrame
            for _, pos in ipairs(farm1) do
                if not farm1Enabled then break end
                hrp.CFrame = pos + Vector3.new(0, 3, 0)
                task.wait(3)
            end
            if farm1Enabled then
                hrp.CFrame = original
            end
        end
        task.wait(0.1)
    end
end)
 
task.spawn(function()
    while true do
        if farm2Enabled then
            local original = hrp.CFrame
 
            hrp.CFrame = chemPrep + Vector3.new(0, 3, 0)
            local kickDuration = 8
            local startTime = tick()
 
            while tick() - startTime < kickDuration do
                if not farm2Enabled then break end
                vim:SendKeyEvent(true, "E", false, game)
                vim:SendKeyEvent(false, "E", false, game)
                task.wait(0.05)
            end
 
            task.wait(0.5)
 
            for _, pos in ipairs(farm2) do
                if not farm2Enabled then break end
                hrp.CFrame = pos + Vector3.new(0, 3, 0)
                task.wait(3)
            end
 
            if farm2Enabled then
                selling = true
 
                local sellPos = CFrame.new(-52, 4, 449)
                hrp.CFrame = sellPos + Vector3.new(0, 3, 0)
                task.wait(1)
 
                for _, tool in ipairs(player.Backpack:GetChildren()) do
                    if tool:IsA("Tool") then
                        local name = tool.Name:lower()
                        if name:find("candy bag") or name:find("blueberry") or name:find("strawberry") or name:find("raspberry") or name:find("blackberry") then
                            tool.Parent = char
                            task.wait(0.2)
                        end
                    end
                end
 
                for _, tool in ipairs(char:GetChildren()) do
                    if tool:IsA("Tool") then
                        local name = tool.Name:lower()
                        if name:find("candy bag") or name:find("blueberry") or name:find("strawberry") or name:find("raspberry") or name:find("blackberry") then
                            vim:SendKeyEvent(true, "E", false, game)
                            task.wait(3)
                            vim:SendKeyEvent(false, "E", false, game)
                            task.wait(0.5)
                        end
                    end
                end
 
                selling = false
                hrp.CFrame = original
            end
        end
 
        task.wait(0.1)
    end
end)
 
--// teleporting panel
local TeleportsPanel = Instance.new("Frame", Main)
TeleportsPanel.Size = UDim2.new(1, -160, 1, -20)
TeleportsPanel.Position = UDim2.new(0, 160, 0, 10)
TeleportsPanel.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TeleportsPanel.BorderSizePixel = 0
TeleportsPanel.Visible = false
 
local TPcorner = Instance.new("UICorner", TeleportsPanel)
TPcorner.CornerRadius = UDim.new(0, 6)
 
local TPtitle = Instance.new("TextLabel", TeleportsPanel)
TPtitle.Size = UDim2.new(1, 0, 0, 40)
TPtitle.BackgroundTransparency = 1
TPtitle.Text = "Teleports"
TPtitle.TextColor3 = Color3.fromRGB(255, 255, 255)
TPtitle.Font = Enum.Font.GothamBold
TPtitle.TextSize = 18
 
--// teleports scrolling list
local TPScrolling = Instance.new("ScrollingFrame", TeleportsPanel)
TPScrolling.Size = UDim2.new(1, -20, 1, -60)
TPScrolling.Position = UDim2.new(0, 10, 0, 50)
TPScrolling.CanvasSize = UDim2.new(0, 0, 0, 0)
TPScrolling.AutomaticCanvasSize = Enum.AutomaticSize.Y
TPScrolling.ScrollBarThickness = 6
TPScrolling.BackgroundTransparency = 1
TPScrolling.BorderSizePixel = 0
 
local TPList = Instance.new("UIListLayout", TPScrolling)
TPList.Padding = UDim.new(0, 6)
TPList.SortOrder = Enum.SortOrder.LayoutOrder
 
for i, loc in ipairs(teleportLocations) do
    local TPButton = Instance.new("TextButton", TPScrolling)
    TPButton.Name = loc.name
    TPButton.LayoutOrder = i
    TPButton.Size = UDim2.new(1, -10, 0, 35)
    TPButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    TPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TPButton.Font = Enum.Font.Gotham
    TPButton.TextSize = 14
    TPButton.Text = loc.name
 
    Instance.new("UICorner", TPButton).CornerRadius = UDim.new(0, 4)
 
    TPButton.MouseButton1Click:Connect(function()
        if teleportTo(loc.pos) then
            TPtitle.Text = "Teleported to: " .. loc.name
        else
            TPtitle.Text = "Character not found!"
        end
    end)
end
 
local function hideAll()
    Content.Visible = false
    AutofarmPanel.Visible = false
    TeleportsPanel.Visible = false
end
 
GunsBtn.MouseButton1Click:Connect(function()
    hideAll()
    Content.Visible = true
    ContentTitle.Text = "ForbiddedMenus"
    loadList(guns)
end)
 
AmmoBtn.MouseButton1Click:Connect(function()
    hideAll()
    Content.Visible = true
    ContentTitle.Text = "Ammo"
    loadList(ammoList)
end)
 
AutofarmBtn.MouseButton1Click:Connect(function()
    hideAll()
    AutofarmPanel.Visible = true
end)
 
TeleportsBtn.MouseButton1Click:Connect(function()
    hideAll()
    TPtitle.Text = "Teleports"
    TeleportsPanel.Visible = true
end)
 
-- Load guns upon script being injected
loadList(guns)
 
--// Buy Button
local SpawnBtn = Instance.new("TextButton", Content)
SpawnBtn.Size = UDim2.new(1, -20, 0, 45)
SpawnBtn.Position = UDim2.new(0, 10, 1, -55)
SpawnBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SpawnBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
SpawnBtn.Font = Enum.Font.GothamBold
SpawnBtn.TextSize = 16
SpawnBtn.Text = "Purchase Item"
 
local SpawnCorner = Instance.new("UICorner", SpawnBtn)
SpawnCorner.CornerRadius = UDim.new(0, 4)
 
SpawnBtn.MouseButton1Click:Connect(function()
    if not selectedItem then
        ContentTitle.Text = "Select an item first!"
        return
    end
 
    local tp = purchaseTeleports[selectedItem]
    if tp then
        teleportTo(tp)
        ContentTitle.Text = "Teleported to: " .. selectedItem
    else
        ContentTitle.Text = "No teleport found for: " .. selectedItem
    end
end)
