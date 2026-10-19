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

    {name = "Pack Buyer - Crazy Joe", pos = CFrame.new(-50, 4, 448)},
    {name = "Pet store", pos = CFrame.new(583, 4, -364)},
}
 
--// autofarm variablesz
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")
local vim = game:GetService("VirtualInputManager")
local RS = game:GetService("ReplicatedStorage")
 
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
local farm3Enabled = false -- berry/fruit farm (one crop at a time)
local activeCrop = "Raspberry"
local switchToken = nil -- set while waiting to switch crops
local cropList = {"Raspberry", "Strawberry", "Blackberry", "Blueberry"} -- what shows in the seed menu
local autoSwitchCrops = true -- if the selected crop is out of stock, farm one that isn't
 
--// THEME: every panel/button registers a role here, so the Misc tab can restyle it live
local Theme = {
    base   = Color3.fromRGB(14, 10, 22),
    bg = Color3.new(), sidebar = Color3.new(), panel = Color3.new(), card = Color3.new(),
    button = Color3.fromRGB(44, 32, 66),
    accent = Color3.fromRGB(150, 70, 230),
    text   = Color3.fromRGB(255, 255, 255),
    trans  = 0.2, -- menu see-through amount (0 solid .. 0.8 very clear)
}
local function setBase(c)
    local white = Color3.new(1, 1, 1)
    Theme.base    = c
    Theme.bg      = c
    Theme.sidebar = c:Lerp(white, 0.04)
    Theme.panel   = c:Lerp(white, 0.07)
    Theme.card    = c:Lerp(white, 0.12)
end
setBase(Theme.base)

local themed, themeHooks = {}, {}
local function clampT(x) return math.clamp(x, 0, 0.95) end

local function applyOne(e)
    local inst, role, t = e.inst, e.role, Theme.trans
    if role == "bg" then
        inst.BackgroundColor3 = Theme.bg;      inst.BackgroundTransparency = clampT(t)
    elseif role == "sidebar" then
        inst.BackgroundColor3 = Theme.sidebar; inst.BackgroundTransparency = clampT(t + 0.06)
    elseif role == "panel" then
        inst.BackgroundColor3 = Theme.panel;   inst.BackgroundTransparency = clampT(t + 0.1)
    elseif role == "card" then
        inst.BackgroundColor3 = Theme.card;    inst.BackgroundTransparency = clampT(t + 0.08)
    elseif role == "button" then
        inst.BackgroundColor3 = Theme.button;  inst.BackgroundTransparency = clampT(t * 0.6)
    elseif role == "popup" then
        inst.BackgroundColor3 = Theme.button;  inst.BackgroundTransparency = 0.05
    elseif role == "accent" then
        inst.BackgroundColor3 = Theme.accent;  inst.BackgroundTransparency = 0.05
    elseif role == "stroke" then
        inst.Color = Theme.accent
    elseif role == "scroll" then
        inst.ScrollBarImageColor3 = Theme.accent
    end
end

local function reg(inst, role)
    local e = { inst = inst, role = role }
    table.insert(themed, e)
    applyOne(e)
    return inst
end

local function applyAll()
    for i = #themed, 1, -1 do -- forget destroyed instances (the lists get rebuilt a lot)
        if not themed[i].inst.Parent then table.remove(themed, i) end
    end
    for _, e in ipairs(themed) do applyOne(e) end
    for _, h in ipairs(themeHooks) do pcall(h) end
end

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
MainStroke.Thickness = 1.5
MainStroke.Color = Theme.accent
reg(Main, "bg")
reg(MainStroke, "stroke")

-- big faded logo in the middle of the menu (dark purple, black outline)
local Watermark = Instance.new("TextLabel", Main)
Watermark.BackgroundTransparency = 1
Watermark.Size = UDim2.new(0, 430, 0, 80)
Watermark.Position = UDim2.new(0, 160, 0.5, -40)
Watermark.Font = Enum.Font.GothamBlack
Watermark.Text = "ForbiddedMenus"
Watermark.TextScaled = true
Watermark.TextColor3 = Color3.fromRGB(78, 22, 130)
Watermark.TextTransparency = 0.55
Watermark.ZIndex = 1
Instance.new("UITextSizeConstraint", Watermark).MaxTextSize = 56
local WatermarkStroke = Instance.new("UIStroke", Watermark)
WatermarkStroke.Thickness = 3
WatermarkStroke.Color = Color3.fromRGB(0, 0, 0)
WatermarkStroke.Transparency = 0.6
 
--// draggin motion
local dragging, dragInput, dragStart, startPos
local uiBusy = false -- true while a slider is being dragged, so the window does not move too
 
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
    if input == dragInput and dragging and not uiBusy then
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
Sidebar.BorderSizePixel = 0
reg(Sidebar, "sidebar")

local SidebarCorner = Instance.new("UICorner", Sidebar)
SidebarCorner.CornerRadius = UDim.new(0, 6)

-- logo: dark purple with a black outline
local SidebarTitle = Instance.new("TextLabel", Sidebar)
SidebarTitle.Size = UDim2.new(1, -16, 0, 34)
SidebarTitle.Position = UDim2.new(0, 8, 0, 8)
SidebarTitle.BackgroundTransparency = 1
SidebarTitle.Text = "ForbiddedMenus"
SidebarTitle.TextColor3 = Color3.fromRGB(110, 36, 185)
SidebarTitle.Font = Enum.Font.GothamBlack
SidebarTitle.TextScaled = true
Instance.new("UITextSizeConstraint", SidebarTitle).MaxTextSize = 22
local TitleStroke = Instance.new("UIStroke", SidebarTitle)
TitleStroke.Thickness = 2
TitleStroke.Color = Color3.fromRGB(0, 0, 0)

local SidebarSub = Instance.new("TextLabel", Sidebar)
SidebarSub.Size = UDim2.new(1, -16, 0, 14)
SidebarSub.Position = UDim2.new(0, 8, 0, 42)
SidebarSub.BackgroundTransparency = 1
SidebarSub.Text = game.Players.LocalPlayer.DisplayName
SidebarSub.TextColor3 = Color3.fromRGB(150, 150, 165)
SidebarSub.Font = Enum.Font.Gotham
SidebarSub.TextSize = 11

--// tab buttons (the active one gets an accent bar)
local tabButtons = {}
local function setActiveTab(active)
    for btn, bar in pairs(tabButtons) do
        bar.Visible = (btn == active)
        btn.TextColor3 = (btn == active) and Theme.text or Color3.fromRGB(165, 165, 178)
    end
end

local function createTabButton(name, order)
    local btn = Instance.new("TextButton", Sidebar)
    btn.Size = UDim2.new(1, -20, 0, 40)
    btn.Position = UDim2.new(0, 10, 0, 66 + (order * 48))
    btn.TextColor3 = Color3.fromRGB(165, 165, 178)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 14
    btn.Text = name
    btn.BorderSizePixel = 0
    reg(btn, "button")
 
    local corner = Instance.new("UICorner", btn)
    corner.CornerRadius = UDim.new(0, 6)

    local bar = Instance.new("Frame", btn)
    bar.Size = UDim2.new(0, 3, 0, 22)
    bar.Position = UDim2.new(0, 0, 0.5, -11)
    bar.BorderSizePixel = 0
    bar.Visible = false
    Instance.new("UICorner", bar).CornerRadius = UDim.new(1, 0)
    reg(bar, "accent")
    tabButtons[btn] = bar
 
    return btn
end
 
local GunsBtn = createTabButton("Buy Guns", 0)
local AmmoBtn = createTabButton("Buy Ammo", 1)
local AutofarmBtn = createTabButton("Autofarms", 2)
local TeleportsBtn = createTabButton("Teleports", 3)
local MiscBtn = createTabButton("Misc", 4)
 
--// content panel ammo+guns
local Content = Instance.new("Frame", Main)
Content.Size = UDim2.new(1, -160, 1, -20)
Content.Position = UDim2.new(0, 160, 0, 10)
Content.BorderSizePixel = 0
reg(Content, "panel")
 
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
reg(Scrolling, "scroll")
 
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
        Button.BorderSizePixel = 0
        reg(Button, "button")
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
AutofarmPanel.BorderSizePixel = 0
reg(AutofarmPanel, "panel")
AutofarmPanel.Visible = false
 
Instance.new("UICorner", AutofarmPanel).CornerRadius = UDim.new(0, 6)
 
local AFtitle = Instance.new("TextLabel", AutofarmPanel)
AFtitle.Size = UDim2.new(1, 0, 0, 40)
AFtitle.BackgroundTransparency = 1
AFtitle.Text = "Autofarms"
AFtitle.TextColor3 = Color3.fromRGB(255, 255, 255)
AFtitle.Font = Enum.Font.GothamBold
AFtitle.TextSize = 18
 
-- ===========================================================================
-- AUTOFARM PANEL UI: card sections with toggle switches
-- ===========================================================================
local TweenService = game:GetService("TweenService")

local UI = {
    card  = Color3.fromRGB(33, 33, 33),
    line  = Color3.fromRGB(55, 55, 55),
    field = Color3.fromRGB(46, 46, 46),
    text  = Color3.fromRGB(255, 255, 255),
    muted = Color3.fromRGB(150, 150, 150),
    note  = Color3.fromRGB(255, 205, 120),
    on    = Theme.accent,                 -- toggles / highlights follow the theme accent
    go    = Color3.fromRGB(70, 195, 120), -- Start button stays green on purpose
    off   = Color3.fromRGB(72, 72, 72),
    stop  = Color3.fromRGB(205, 75, 75),
}

local function makeCard(y, height, titleText)
    local card = Instance.new("Frame", AutofarmPanel)
    card.Size = UDim2.new(1, -40, 0, height)
    card.Position = UDim2.new(0, 20, 0, y)
    card.BorderSizePixel = 0
    reg(card, "card")
    Instance.new("UICorner", card).CornerRadius = UDim.new(0, 8)
    local stroke = Instance.new("UIStroke", card)
    stroke.Color = UI.line
    stroke.Thickness = 1

    local title = Instance.new("TextLabel", card)
    title.BackgroundTransparency = 1
    title.Position = UDim2.new(0, 14, 0, 8)
    title.Size = UDim2.new(1, -90, 0, 22)
    title.Font = Enum.Font.GothamBold
    title.TextSize = 14
    title.TextColor3 = UI.text
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.Text = titleText
    return card, title
end

local function makeNote(card, text, y)
    local lbl = Instance.new("TextLabel", card)
    lbl.BackgroundTransparency = 1
    lbl.Position = UDim2.new(0, 14, 0, y)
    lbl.Size = UDim2.new(1, -28, 0, 30)
    lbl.Font = Enum.Font.Gotham
    lbl.TextSize = 11
    lbl.TextColor3 = UI.note
    lbl.TextWrapped = true
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.TextYAlignment = Enum.TextYAlignment.Top
    lbl.Text = text
    return lbl
end

local switchSyncs = {}

-- pill toggle switch. returns set(on) so the UI can be synced from code.
local function makeSwitch(parent, position, initial, onChange)
    local track = Instance.new("TextButton", parent)
    track.AutoButtonColor = false
    track.Text = ""
    track.Size = UDim2.new(0, 44, 0, 22)
    track.Position = position
    track.BackgroundColor3 = initial and UI.on or UI.off
    Instance.new("UICorner", track).CornerRadius = UDim.new(1, 0)

    local knob = Instance.new("Frame", track)
    knob.Size = UDim2.new(0, 16, 0, 16)
    knob.BackgroundColor3 = UI.text
    knob.BorderSizePixel = 0
    Instance.new("UICorner", knob).CornerRadius = UDim.new(1, 0)
    local posOn, posOff = UDim2.new(1, -19, 0.5, -8), UDim2.new(0, 3, 0.5, -8)
    knob.Position = initial and posOn or posOff

    local state = initial
    local function set(on)
        state = on
        local info = TweenInfo.new(0.15, Enum.EasingStyle.Quad)
        TweenService:Create(track, info, { BackgroundColor3 = on and UI.on or UI.off }):Play()
        TweenService:Create(knob, info, { Position = on and posOn or posOff }):Play()
    end
    track.MouseButton1Click:Connect(function()
        set(not state)
        onChange(state)
    end)
    table.insert(switchSyncs, function() set(state) end)
    return set
end

-- Box Job -------------------------------------------------------------------
local boxCard = makeCard(48, 40, "Box Job Autofarm")
makeSwitch(boxCard, UDim2.new(1, -58, 0, 9), false, function(on) farm1Enabled = on end)

-- Chemistry -----------------------------------------------------------------
local chemCard = makeCard(96, 74, "Chemistry Autofarm")
makeSwitch(chemCard, UDim2.new(1, -58, 0, 9), false, function(on) farm2Enabled = on end)
makeNote(chemCard, "Snapped your legs on startup? Toggle it off and back on. Same fix if the door doesn't break.", 36)

-- Seed farm -----------------------------------------------------------------
local seedCard, seedTitle = makeCard(178, 150, "Seed Autofarm")

local statusLbl = Instance.new("TextLabel", seedCard)
statusLbl.BackgroundTransparency = 1
statusLbl.Position = UDim2.new(1, -180, 0, 8)
statusLbl.Size = UDim2.new(0, 166, 0, 22)
statusLbl.Font = Enum.Font.Gotham
statusLbl.TextSize = 12
statusLbl.TextColor3 = UI.muted
statusLbl.TextXAlignment = Enum.TextXAlignment.Right

makeNote(seedCard, "If you turn the farm off then back on, you gotta either server hop or pick up your plant pots, otherwise it bugs out.", 34)

-- seed selector (left) and start/stop (right) share one row
local dropBtn = Instance.new("TextButton", seedCard)
dropBtn.Size = UDim2.new(0, 168, 0, 32)
dropBtn.Position = UDim2.new(0, 14, 0, 76)
reg(dropBtn, "button")
dropBtn.BorderSizePixel = 0
dropBtn.AutoButtonColor = true
dropBtn.TextColor3 = UI.text
dropBtn.Font = Enum.Font.GothamMedium
dropBtn.TextSize = 13
dropBtn.TextXAlignment = Enum.TextXAlignment.Left
Instance.new("UICorner", dropBtn).CornerRadius = UDim.new(0, 6)
local dropPad = Instance.new("UIPadding", dropBtn)
dropPad.PaddingLeft = UDim.new(0, 10)
local dropStroke = Instance.new("UIStroke", dropBtn)
dropStroke.Color = UI.line

local chevron = Instance.new("TextLabel", dropBtn)
chevron.BackgroundTransparency = 1
chevron.Size = UDim2.new(0, 24, 1, 0)
chevron.Position = UDim2.new(1, -26, 0, 0)
chevron.Font = Enum.Font.GothamBold
chevron.TextSize = 12
chevron.TextColor3 = UI.muted
chevron.Text = "v"

local startBtn = Instance.new("TextButton", seedCard)
startBtn.Size = UDim2.new(1, -208, 0, 32)
startBtn.Position = UDim2.new(0, 194, 0, 76)
startBtn.TextColor3 = UI.text
startBtn.Font = Enum.Font.GothamBold
startBtn.TextSize = 13
Instance.new("UICorner", startBtn).CornerRadius = UDim.new(0, 6)

-- auto-switch row
local autoLbl = Instance.new("TextLabel", seedCard)
autoLbl.BackgroundTransparency = 1
autoLbl.Position = UDim2.new(0, 14, 0, 116)
autoLbl.Size = UDim2.new(1, -80, 0, 22)
autoLbl.Font = Enum.Font.Gotham
autoLbl.TextSize = 12
autoLbl.TextColor3 = UI.muted
autoLbl.TextXAlignment = Enum.TextXAlignment.Left
autoLbl.Text = "Auto-switch seed if out of stock"
local setAutoSwitch = makeSwitch(seedCard, UDim2.new(1, -58, 0, 116), autoSwitchCrops, function(on)
    autoSwitchCrops = on
end)

-- dropdown list (sits on top of the cards)
local ROW_H = 22
local dropList = Instance.new("Frame", AutofarmPanel)
dropList.Size = UDim2.new(0, 168, 0, #cropList * ROW_H + 8)
dropList.Position = UDim2.new(0, 34, 0, 178 + 76 + 36)
reg(dropList, "popup")
dropList.BorderSizePixel = 0
dropList.Visible = false
dropList.ZIndex = 10
Instance.new("UICorner", dropList).CornerRadius = UDim.new(0, 6)
local listStroke = Instance.new("UIStroke", dropList)
listStroke.Color = UI.line
local listPad = Instance.new("UIPadding", dropList)
listPad.PaddingTop = UDim.new(0, 4)
listPad.PaddingBottom = UDim.new(0, 4)
local dropLayout = Instance.new("UIListLayout", dropList)
dropLayout.SortOrder = Enum.SortOrder.LayoutOrder

local listItems = {}

local function refreshFarmUI()
    local on = farm3Enabled or switchToken ~= nil
    dropBtn.Text = activeCrop
    startBtn.Text = on and "Stop Farm" or "Start Farm"
    startBtn.BackgroundColor3 = on and UI.stop or UI.go
    statusLbl.Text = on and ("Running  -  " .. activeCrop) or "Stopped"
    statusLbl.TextColor3 = on and UI.on or UI.muted
    setAutoSwitch(autoSwitchCrops)
    for name, item in pairs(listItems) do
        item.TextColor3 = (name == activeCrop) and UI.on or UI.text
    end
end

local function selectCrop(name)
    dropList.Visible = false
    if name == activeCrop then refreshFarmUI() return end
    if farm3Enabled then
        -- switching while running: stop the current round, restart on the new seed after it unwinds
        farm3Enabled = false
        activeCrop = name
        local token = tick()
        switchToken = token
        task.delay(4, function()
            if switchToken == token then
                switchToken = nil
                farm3Enabled = true
                refreshFarmUI()
            end
        end)
    else
        activeCrop = name
    end
    refreshFarmUI()
end

for i, name in ipairs(cropList) do
    local item = Instance.new("TextButton", dropList)
    item.LayoutOrder = i
    item.Size = UDim2.new(1, 0, 0, ROW_H)
    item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    item.BackgroundTransparency = 1
    item.TextColor3 = UI.text
    item.Font = Enum.Font.Gotham
    item.TextSize = 13
    item.Text = name
    item.AutoButtonColor = false
    item.ZIndex = 11
    item.MouseEnter:Connect(function() item.BackgroundTransparency = 0.88 end)
    item.MouseLeave:Connect(function() item.BackgroundTransparency = 1 end)
    item.MouseButton1Click:Connect(function() selectCrop(name) end)
    listItems[name] = item
end

dropBtn.MouseButton1Click:Connect(function()
    dropList.Visible = not dropList.Visible
end)

startBtn.MouseButton1Click:Connect(function()
    dropList.Visible = false
    if farm3Enabled or switchToken ~= nil then
        farm3Enabled = false
        switchToken = nil
    else
        farm3Enabled = true
    end
    refreshFarmUI()
end)

refreshFarmUI()

-- when the accent colour changes, recolour switches / highlights too
table.insert(themeHooks, function()
    UI.on = Theme.accent
    for _, f in ipairs(switchSyncs) do f() end
    refreshFarmUI()
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
 
do -- scope: keeps the farm's many locals out of the top level (Luau allows 200 per function)
--==================================================================
--// RASPBERRY AUTOFARM
--==================================================================
local Plants        = RS:WaitForChild("Events"):WaitForChild("Plants")
local PlantSeed     = Plants:WaitForChild("PlantSeed")
local WaterPot      = Plants:WaitForChild("WaterPot")
local HarvestPot    = Plants:WaitForChild("HarvestPot")
local PlacedObjects = workspace:WaitForChild("Game"):WaitForChild("PlacedObjects")
 
local RASP_MAX_BUY   = 5   -- HARD CAP per round on seeds/pots/bags/water, no matter how much stock the shop has
local RASP_GROW_TIME = 90                       -- 1:30
local RASP_SHOP_POS  = CFrame.new(-135, 4, 338)
local RASP_FARM_POS  = CFrame.new(-41, 4, -112)   -- plant / water / harvest here
local RASP_SELL_POS  = CFrame.new(-53, 4, 450)
 
local raspPots = {}          -- pots persist for the whole server session
 
-- sleeps up to `t` seconds but bails out early if the farm is toggled off
local function raspWait(t)
    local start = tick()
    while tick() - start < t do
        if not farm3Enabled then return false end
        task.wait(0.25)
    end
    return true
end
 
local function equipByName(name)
    local c = player.Character
    if not c then return nil end
    local tool = c:FindFirstChild(name) or player.Backpack:FindFirstChild(name)
    if tool and tool:IsA("Tool") then
        tool.Parent = c
        return tool
    end
end
 
----------------------------------------------------------------------
-- SHOP: Events.Shop.Purchase:FireServer(shopName, itemName), one fire per item
----------------------------------------------------------------------
local PurchaseRemote = RS:WaitForChild("Events"):WaitForChild("Shop"):WaitForChild("Purchase")

local RASP_ITEMS = {
    seeds = {"Gardening", "Raspberry Seeds"},
    water = {"Gardening", "Water Bottle"},
    bag   = {"Gardening", "Empty Bag"},
}

-- confirmed with a remote spy (fired by ShopLocal): Purchase("Gardening", "PlantPot")
local RASP_POT_ITEM = "PlantPot"

local function tapE()
    vim:SendKeyEvent(true, "E", false, game)
    task.wait(0.1)
    vim:SendKeyEvent(false, "E", false, game)
end

-- tools whose name (spaces/case removed) contains `pattern`
local function countTools(pattern)
    local n = 0
    for _, container in ipairs({player.Backpack, player.Character}) do
        if container then
            for _, t in ipairs(container:GetChildren()) do
                if t:IsA("Tool") and (t.Name:lower():gsub("%s", "")):find(pattern, 1, true) then
                    n = n + 1
                end
            end
        end
    end
    return n
end

-- is this GUI object actually on screen (it and all its parents visible/enabled)?
local function isShown(obj)
    local cur = obj
    while cur and cur ~= game do
        if cur:IsA("GuiObject") and not cur.Visible then return false end
        if cur:IsA("ScreenGui") and not cur.Enabled then return false end
        cur = cur.Parent
    end
    return true
end

-- the shop GUI is open when a visible "<crop> Seeds" row exists
local function shopIsOpen()
    local ok, res = pcall(function()
        for _, d in ipairs(player.PlayerGui:GetDescendants()) do
            if d:IsA("TextLabel") and d.Text:lower():find(" seeds$") and isShown(d) then
                return true
            end
        end
        return false
    end)
    return ok and res
end

-- the pot GUI is open when a visible HARVEST button exists
local function potGuiOpen()
    local ok, res = pcall(function()
        for _, d in ipairs(player.PlayerGui:GetDescendants()) do
            if (d:IsA("TextButton") or d:IsA("TextLabel"))
                and (d.Text:lower():gsub("%s", "")) == "harvest" and isShown(d) then
                return true
            end
        end
        return false
    end)
    return ok and res
end

local shopFailStreak = 0

-- go to the shop NPC and open his GUI with E; confirms it is really open before returning.
-- returns true when open. Purchases only work while it is open.
local function raspOpenShop()
    teleportTo(RASP_SHOP_POS)
    task.wait(0.8)
    for attempt = 1, 3 do
        -- check BEFORE tapping so we never tap E on an already-open GUI (could close it)
        if shopIsOpen() then shopFailStreak = 0 return true end
        tapE()
        task.wait(1.2)
    end
    if shopIsOpen() then shopFailStreak = 0 return true end

    shopFailStreak = shopFailStreak + 1
    warn("[Raspberry] shop GUI did not open (try " .. shopFailStreak .. ")")
    if shopFailStreak >= 3 then
        -- 3 rounds in a row "failed": detection may be wrong for this GUI, so carry on anyway
        warn("[Raspberry] open-check keeps failing, continuing without confirmation")
        shopFailStreak = 0
        return true
    end
    return false
end

local RASP_BUY_DELAY  = 1.0  -- seconds between purchase fires (too fast = server drops some)
local RASP_ITEM_PAUSE  = 1.5  -- pause between different items
local RASP_BUY_MARGIN  = 0    -- keep 0: everything is matched to the seed count

-- tool-name patterns (spaces/case removed) used to verify a purchase actually landed
local RASP_VERIFY = { seeds = "raspberryseed", water = "waterbottle", bag = "emptybag" }

-- per-crop settings. growTime is a guess (90s) for every crop except what you've timed:
-- change it per crop if some fruits grow faster or slower.
local CROPS = {
    Raspberry  = { seedItem = "Raspberry Seeds",  bagName = "raspberry candy bag",  growTime = 90 },
    Strawberry = { seedItem = "Strawberry Seeds", bagName = "strawberry candy bag", growTime = 90 },
    Blackberry = { seedItem = "Blackberry Seeds", bagName = "blackberry candy bag", growTime = 90 },
    Blueberry  = { seedItem = "Blueberry Seeds",  bagName = "blueberry candy bag",  growTime = 90 },
    -- lemons are special: harvest gives "Bag of Lemons" -> fruit mixer (~26s) -> Lemonade -> sell
    Lemon      = { seedItem = "Lemon Seeds",      bagName = "lemonade",             growTime = 90,
                   mixer = { ingredient = "Bag of Lemons", pattern = "bagoflemons" } },
    Orange     = { seedItem = "Orange Seeds",     bagName = "orange candy bag",     growTime = 90 },
}
local cropCfg = CROPS.Raspberry

-- point every crop-specific lookup at the chosen crop
local function setCrop(name)
    cropCfg = CROPS[name]
    RASP_ITEMS.seeds = {"Gardening", cropCfg.seedItem}
    RASP_VERIFY.seeds = (cropCfg.seedItem:lower():gsub("%s", "")):gsub("s$", "") -- "lemonseed"
    return cropCfg
end

local function raspFire(key)
    local args = RASP_ITEMS[key]
    PurchaseRemote:FireServer(args[1], args[2])
    task.wait(RASP_BUY_DELAY)
end

local function raspBuy(key, qty)
    local pattern = RASP_VERIFY[key]
    local before = countTools(pattern)

    for i = 1, qty + RASP_BUY_MARGIN do
        if not farm3Enabled then return end
        raspFire(key)
    end

    -- Top up any shortfall. Only works if the item shows up as a tool; if the count never
    -- moves we can't tell what was bought, so we leave it alone rather than overbuy.
    for attempt = 1, 3 do
        local gained = countTools(pattern) - before
        if gained <= 0 or gained >= qty then break end
        warn(("[Raspberry] %s: got %d/%d, topping up"):format(key, gained, qty))
        for i = 1, qty - gained do
            if not farm3Enabled then return end
            raspFire(key)
        end
    end
    task.wait(RASP_ITEM_PAUSE)
end

local function raspBuyPots(qty)
    local startCount = countTools("plantpot")

    local function fire(n)
        for i = 1, n do
            if not farm3Enabled then return end
            PurchaseRemote:FireServer("Gardening", RASP_POT_ITEM)
            task.wait(RASP_BUY_DELAY) -- too fast and the shop drops some purchases
        end
    end

    fire(qty)

    -- top up anything the shop dropped (works while pots show up as tools)
    for attempt = 1, 3 do
        task.wait(1)
        local gained = countTools("plantpot") - startCount
        if gained <= 0 then
            warn("[Raspberry] no new pots detected in inventory (shop open? enough cash?)")
            break
        end
        if gained >= qty then break end
        warn(("[Raspberry] pots: got %d/%d, buying the rest"):format(gained, qty))
        fire(qty - gained)
    end
    print(("[Raspberry] pots bought: %d of %d wanted"):format(countTools("plantpot") - startCount, qty))
end

-- PLACING: equip the PlantPot tool, then fire PlaceModelEvent with a position.
local PlaceModelEvent = RS:WaitForChild("PlaceModelEvent")

-- base spot you gave me; pots are spread out along X so they don't overlap
local RASP_PLACE_BASE   = Vector3.new(-41, 1.7242934703826904, -116) -- centre of the pot row, just in front of the farm spot
local RASP_PLACE_SPREAD = 4 -- studs between pots; raise it if pots collide

local RASP_NUDGES = {
    Vector3.new(0, 0, 0), Vector3.new(0, 0, -4), Vector3.new(0, 0, 4), Vector3.new(0, 0, -8),
}

local function raspPlacePot(index, attempt)
    local tool = equipByName("PlantPot") or equipByName("Plant Pot")
    if not tool then
        warn("[Raspberry] no PlantPot tool found in backpack/character")
        return
    end
    task.wait(0.4) -- let the tool actually be held before placing
    -- pots are spread in a row centred on the base spot; later attempts nudge sideways/forward
    local pos = RASP_PLACE_BASE
        + Vector3.new((index - (RASP_MAX_BUY + 1) / 2) * RASP_PLACE_SPREAD, 0, 0)
        + (RASP_NUDGES[attempt or 1] or Vector3.new(0, 0, 0))
    PlaceModelEvent:FireServer("PlantPot", CFrame.new(pos))
end
----------------------------------------------------------------------

-- ---------------------------------------------------------------------------
-- STOCK + MATCHING: seeds have limited stock, so seeds decide how many of everything.
-- ---------------------------------------------------------------------------
local function normalize(str) return (str:lower():gsub("%s", "")) end

-- read the stock number next to an item name in the shop GUI (e.g. "Raspberry Seeds 0")
local function readStock(itemName)
    local ok, result = pcall(function()
        for _, d in ipairs(player.PlayerGui:GetDescendants()) do
            if d:IsA("TextLabel") and d.Text == itemName and d.Parent and isShown(d) then
                -- a shop row holds exactly one bare number (the stock; the price has a "$").
                -- if the parent holds several numbers it's the whole table or the
                -- "selected item" panel at the bottom, so skip it instead of misreading.
                local nums = {}
                for _, sib in ipairs(d.Parent:GetDescendants()) do
                    if sib ~= d and (sib:IsA("TextLabel") or sib:IsA("TextButton")) then
                        local n = sib.Text:match("^%s*(%d+)%s*$")
                        if n then table.insert(nums, tonumber(n)) end
                    end
                end
                if #nums == 1 then return nums[1] end
            end
        end
    end)
    return ok and result or nil
end

-- adopt plant pots that are already placed (they survive in the server), so none are rebought
local function adoptExistingPots()
    for _, obj in ipairs(PlacedObjects:GetChildren()) do
        if normalize(obj.Name):find("plantpot", 1, true) and not table.find(raspPots, obj) then
            local owner = obj:GetAttribute("Owner")
            local ov = obj:FindFirstChild("Owner")
            if ov and ov:IsA("ValueBase") then owner = ov.Value end
            local mine = owner == nil or owner == player.Name or owner == player.DisplayName
                or owner == player.UserId or owner == player
            if mine then table.insert(raspPots, obj) end
        end
    end
end

-- FRUIT MIXER ($2000): confirmed remote is Purchase("Gardening", "FruitMixer").
-- Bought AT MOST ONCE per script run, and never if one is already placed or in hand, so a
-- long autofarm can't buy a second one. A mixer placed earlier is found in PlacedObjects.
local RASP_MIXER_ITEM = {"Gardening", "FruitMixer"}
local mixerBuyAttempted = false
local function raspBuyMixerIfNeeded()
    if PlacedObjects:FindFirstChild("FruitMixer") or countTools("mixer") > 0 then return end
    for _, obj in ipairs(PlacedObjects:GetChildren()) do
        if obj.Name:lower():find("mixer", 1, true) then return end -- already placed
    end
    if mixerBuyAttempted then return end -- one purchase attempt per run, even if detection fails
    mixerBuyAttempted = true
    print("[Raspberry] no fruit mixer found, buying ONE ($2000)")
    PurchaseRemote:FireServer(RASP_MIXER_ITEM[1], RASP_MIXER_ITEM[2])
    task.wait(1.5)
    if countTools("mixer") == 0 and not PlacedObjects:FindFirstChild("FruitMixer") then
        warn("[Raspberry] couldn't see the mixer after buying. Not buying again. Check your cash/inventory.")
    end
end

-- Runs inside the open shop GUI. Returns how many full sets (seed+pot+bag+water) we got.
local function raspShopRun()
    local want = RASP_MAX_BUY

    -- 1) seeds first: they are the limiting item
    local stock = readStock(cropCfg.seedItem)
    if stock then
        print("[Raspberry] seed stock: " .. stock)
        want = math.min(want, stock)
    end
    if want <= 0 then
        print("[Raspberry] seeds out of stock")
        return 0
    end

    local toolsBefore = countTools(RASP_VERIFY.seeds)
    local got = 0
    for i = 1, want do
        if not farm3Enabled then return 0 end
        raspFire("seeds")
        got = i
        local now = readStock(cropCfg.seedItem)
        if now and now <= 0 then break end -- sold out, stop firing
    end

    -- work out how many actually landed. the stock label lags behind the server, so give it a
    -- moment, then take the HIGHEST estimate (label lag / stacked items can only under-count)
    local fired = got
    local byStock, byTools = 0, 0

    -- measure how many seeds really landed (stock label lags, so settle first and take the
    -- HIGHEST estimate: lag / stacked items can only under-count)
    local function measure()
        task.wait(1.5)
        byStock, byTools = 0, 0
        if stock then
            local after = readStock(cropCfg.seedItem)
            if after then byStock = stock - after end
        end
        local gain = countTools(RASP_VERIFY.seeds) - toolsBefore
        if gain > 0 then byTools = gain end
        local est = math.max(byStock, byTools)
        if est > 0 then got = math.min(fired, est) end
        return est
    end

    local est = measure()
    -- if the shop dropped some purchases, buy the missing seeds (a failed buy costs nothing)
    for round = 1, 3 do
        if got >= want or est <= 0 or not farm3Enabled then break end
        local left = readStock(cropCfg.seedItem)
        if left ~= nil and left <= 0 then break end -- genuinely sold out
        warn(("[Raspberry] seeds: got %d/%d, buying the rest"):format(got, want))
        for i = 1, want - got do
            if not farm3Enabled then return 0 end
            raspFire("seeds")
            fired = fired + 1
        end
        est = measure()
    end
    print(("[Raspberry] seeds: fired %d, stock says %d, inventory says %d -> using %d")
        :format(fired, byStock, byTools, got))
    if got <= 0 then return 0 end
    print("[Raspberry] bought " .. got .. " seeds, matching everything else to " .. got)

    -- 2) pots: only the ones we're missing (already-placed or already-held pots count)
    local held = countTools("plantpot")
    local missing = math.max(0, got - #raspPots - held)
    print(("[Raspberry] plan: %d seeds, pots needed %d (have %d placed + %d in hand, buying %d), %d bags, %d water")
        :format(got, got, #raspPots, held, missing, got, got))
    if missing > 0 then raspBuyPots(missing) end

    -- lemons need the fruit mixer (bought once, never twice)
    if cropCfg.mixer then raspBuyMixerIfNeeded() end

    -- 3) bags and water match the seed count exactly
    raspBuy("bag", got)
    raspBuy("water", got)

    print(("[Raspberry] after shopping -> seeds:%d bags:%d water:%d pots:%d (tool counts)")
        :format(countTools(RASP_VERIFY.seeds), countTools("emptybag"),
                countTools("waterbottle"), countTools("plantpot")))
    return got
end

-- place pots until we have `n` (existing ones are kept)
local function raspPlaceMissing(n)
    teleportTo(RASP_FARM_POS)
    task.wait(0.6)
    for i = #raspPots + 1, n do
        if not farm3Enabled then return end
        local placed = false

        -- if a spot is blocked the pot never appears, so retry it at a nudged position
        for attempt = 1, #RASP_NUDGES do
            local before = {}
            for _, v in ipairs(PlacedObjects:GetChildren()) do before[v] = true end

            raspPlacePot(i, attempt)
            task.wait(0.9)

            for _, v in ipairs(PlacedObjects:GetChildren()) do
                if not before[v] then
                    table.insert(raspPots, v)
                    placed = true
                    break
                end
            end
            if placed then break end
            warn(("[Raspberry] pot %d did not appear (attempt %d), trying another spot"):format(i, attempt))
        end

        if not placed then
            warn("[Raspberry] pot " .. i .. " could not be placed anywhere")
        end
    end
end

-- hold E for `t` seconds (the pot GUI needs a 2-3s hold)
local RASP_HOLD_E = 2.7
local function holdE(t)
    vim:SendKeyEvent(true, "E", false, game)
    task.wait(t)
    vim:SendKeyEvent(false, "E", false, game)
end

-- stand next to a specific pot and hold E on it to open its GUI
local function openPotGui(pot)
    local ok, cf = pcall(function() return pot:GetPivot() end)
    if not ok then return false end
    -- stand right beside it so its prompt is the nearest one, not a neighbouring pot's
    teleportTo(CFrame.new(cf.Position + Vector3.new(0, 0, 3)))
    task.wait(0.5)
    for attempt = 1, 2 do
        holdE(RASP_HOLD_E)
        task.wait(0.6) -- let the GUI finish opening
        if potGuiOpen() then break end
    end
    return true
end

-- everything the pack buyer takes: candy bags (any berry) and lemonade
local SELL_PATTERNS = { "candybag", "lemonade" }

local function candyBagTools()
    local list = {}
    for _, container in ipairs({player.Backpack, player.Character}) do
        if container then
            for _, t in ipairs(container:GetChildren()) do
                if t:IsA("Tool") then
                    local n = normalize(t.Name)
                    for _, pat in ipairs(SELL_PATTERNS) do
                        if n:find(pat, 1, true) then
                            table.insert(list, t)
                            break
                        end
                    end
                end
            end
        end
    end
    return list
end

-- ---------------------------------------------------------------------------
-- FRUIT MIXER: place it once, then Bag of Lemons -> AddIngredient -> wait -> Collect
-- ---------------------------------------------------------------------------
local MIXER_TIME = 26 -- seconds the mixer needs per batch
local MIXER_CF_A = CFrame.new(-46.065074920654297, 1.5755547285079956, -105.37035369873047, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local MIXER_CF_B = CFrame.new(-46.065074920654297, 1.5755547285079956, -105.37035369873047)

local function getMixer()
    local exact = PlacedObjects:FindFirstChild("FruitMixer")
    if exact then return exact end
    for _, obj in ipairs(PlacedObjects:GetChildren()) do
        if normalize(obj.Name):find("mixer", 1, true) then return obj end
    end
end

local function mixerRemote(name)
    local folder = RS.Events:FindFirstChild("Mixer")
    return folder and folder:FindFirstChild(name)
end

-- run an InvokeServer and report whether the server answered {ok = true}
local function remoteOk(remote, ...)
    if not remote then return false end
    local args = table.pack(...)
    local ok, res = pcall(function() return remote:InvokeServer(table.unpack(args, 1, args.n)) end)
    if not ok then return false end
    if type(res) == "table" then return res.ok ~= false end
    return res ~= false
end

-- the mixer GUI is the only one with a "Limes" ingredient button
local function mixerGuiOpen()
    local ok, res = pcall(function()
        for _, d in ipairs(player.PlayerGui:GetDescendants()) do
            if (d:IsA("TextLabel") or d:IsA("TextButton"))
                and (d.Text:lower():gsub("%s", "")) == "limes" and isShown(d) then
                return true
            end
        end
        return false
    end)
    return ok and res
end

-- the bag count shown on the "Lemons" button of the open mixer GUI (e.g. "x5"), or nil
local function mixerGuiLemonCount()
    local ok, res = pcall(function()
        for _, d in ipairs(player.PlayerGui:GetDescendants()) do
            if d:IsA("TextLabel") and d.Text:lower():gsub("%s", "") == "lemons" and isShown(d) and d.Parent then
                for _, sib in ipairs(d.Parent:GetDescendants()) do
                    if sib ~= d and (sib:IsA("TextLabel") or sib:IsA("TextButton")) then
                        local n = sib.Text:match("^%s*[xX](%d+)%s*$")
                        if n then return tonumber(n) end
                    end
                end
            end
        end
    end)
    return ok and res or nil
end

local function openMixerGui(mixer)
    local ok, cf = pcall(function() return mixer:GetPivot() end)
    if not ok then return false end
    teleportTo(CFrame.new(cf.Position + Vector3.new(0, 0, 3)))
    task.wait(0.5)
    for attempt = 1, 2 do
        holdE(RASP_HOLD_E)
        task.wait(0.6)
        if mixerGuiOpen() then break end
    end
    return true
end

-- place the one mixer if it isn't down yet (needs to be in your hand/backpack)
local function raspEnsureMixer()
    if getMixer() then return true end
    if countTools("mixer") == 0 then
        warn("[Raspberry] no fruit mixer placed or in inventory")
        return false
    end
    teleportTo(RASP_FARM_POS)
    task.wait(0.6)
    -- equip whichever tool has "mixer" in its name
    for _, container in ipairs({player.Backpack, player.Character}) do
        for _, t in ipairs(container and container:GetChildren() or {}) do
            if t:IsA("Tool") and normalize(t.Name):find("mixer", 1, true) then
                local hum = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
                if hum then hum:EquipTool(t) else t.Parent = player.Character end
                break
            end
        end
    end
    task.wait(0.5)
    PlaceModelEvent:FireServer("FruitMixer", MIXER_CF_A)
    task.wait(1.5)
    if not getMixer() then
        PlaceModelEvent:FireServer("FruitMixer", MIXER_CF_B) -- fallback form
        task.wait(1.5)
    end
    if not getMixer() then warn("[Raspberry] mixer did not appear after placing") end
    return getMixer() ~= nil
end

-- make sure a mixer exists right now: placed already, in hand to place, or (once) bought
local function raspPrepareMixer()
    if getMixer() then return true end
    print("[Raspberry] no placed mixer found, preparing one")

    if countTools("mixer") == 0 and not mixerBuyAttempted then
        -- nothing in inventory and never tried to buy: go to the shop (guarded: one buy per run)
        if raspOpenShop() then raspBuyMixerIfNeeded() end
        task.wait(1.5) -- the bought tool takes a moment to appear
    end

    for attempt = 1, 3 do
        if raspEnsureMixer() then return true end
        task.wait(1.5)
    end
    return getMixer() ~= nil
end

-- turn every Bag of Lemons into Lemonade, one batch at a time. returns how many were collected.
-- With `expected` > 0 the script ALWAYS goes to the mixer and runs that many batches, trusting
-- the server's {ok=...} answer rather than the inventory scan (which can miss stacked items).
local function raspMixerProcess(mcfg, expected)
    local mixer = getMixer()
    if not mixer then
        warn("[Raspberry] no fruit mixer placed, can't process lemons")
        return 0
    end
    local AddIngredient, Collect = mixerRemote("AddIngredient"), mixerRemote("Collect")
    if not AddIngredient or not Collect then
        warn("[Raspberry] Events.Mixer remotes not found")
        return 0
    end

    local target = (expected and expected > 0) and expected or countTools(mcfg.pattern)
    if target <= 0 then return 0 end

    -- 1) go to the mixer FIRST, no matter what the inventory scan says
    print("[Raspberry] going to the fruit mixer (" .. target .. " batch(es))")
    openMixerGui(mixer)

    -- 2) harvested bags can take a moment to appear; wait for them while standing here
    if expected and expected > 0 then
        local t0 = tick()
        while tick() - t0 < 10 and farm3Enabled
            and math.max(countTools(mcfg.pattern), mixerGuiLemonCount() or 0) < expected do
            task.wait(0.5)
        end
        print("[Raspberry] mixer GUI shows " .. tostring(mixerGuiLemonCount()) .. " Bag(s) of Lemons")
    end

    local collected, guard = 0, 0
    while farm3Enabled and collected < target and guard < target + 4 do
        guard = guard + 1
        openMixerGui(mixer)

        local added = false
        for attempt = 1, 4 do
            if remoteOk(AddIngredient, mixer, mcfg.ingredient) then added = true break end
            task.wait(2)
            if attempt == 2 then openMixerGui(mixer) end
        end
        if not added then
            warn("[Raspberry] mixer refused the ingredient (no Bag of Lemons left?), stopping")
            break
        end

        if not raspWait(MIXER_TIME) then break end

        local done = false
        for attempt = 1, 6 do
            if remoteOk(Collect, mixer) then done = true break end
            task.wait(2.5)
            if attempt == 3 then openMixerGui(mixer) end
        end
        if not done then
            warn("[Raspberry] could not collect from the mixer")
            break
        end
        collected = collected + 1
        print("[Raspberry] mixer batch " .. collected .. "/" .. target .. " collected")
        task.wait(0.5)
    end
    return collected
end

-- sell bags ONE AT A TIME at the pack buyer, re-scanning the inventory until none are left.
-- `expected` = how many bags we should have after harvesting. With expected > 0 the script
-- ALWAYS goes to the buyer, even if the bags haven't shown up in the inventory yet.
local function raspSell(expected)
    expected = expected or 0
    selling = true

    -- harvested bags can take a moment to appear: wait for them before judging anything
    if expected > 0 then
        local t0 = tick()
        while tick() - t0 < 12 and #candyBagTools() < expected and farm3Enabled do
            task.wait(0.5)
        end
    end
    print(("[Raspberry] %d candy bag(s) in inventory (expected %d)"):format(#candyBagTools(), expected))

    local sold = 0
    local remaining = #candyBagTools()

    for pass = 1, 4 do
        if not farm3Enabled then break end
        -- nothing expected and nothing in the inventory: no reason to travel
        if expected == 0 and #candyBagTools() == 0 then break end

        teleportTo(RASP_SELL_POS)
        task.wait(1)

        local guard = 0
        while guard < 15 and farm3Enabled do
            local bags = candyBagTools()
            if #bags == 0 then break end
            local countBefore = #bags
            local tool = bags[1]
            local hum = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
            if hum then hum:EquipTool(tool) else tool.Parent = player.Character end
            task.wait(0.4)
            holdE(3)          -- same hold the chemistry farm uses to sell
            task.wait(0.7)    -- give the sale time to register before re-scanning
            if #candyBagTools() < countBefore then sold = sold + 1 end
            guard = guard + 1
        end

        remaining = #candyBagTools()
        if remaining == 0 then
            if sold > 0 or expected == 0 then break end
            -- we went to the buyer but never saw a bag: give them a few more seconds and loop again
            if pass >= 2 then
                warn("[Raspberry] no candy bags ever appeared after harvest. Check the bag name or the harvest.")
                break
            end
            task.wait(4)
        else
            warn("[Raspberry] " .. remaining .. " candy bag(s) still unsold after pass " .. pass .. ", retrying")
        end
    end

    if remaining == 0 and sold > 0 then
        print("[Raspberry] inventory scan: all candy bags sold (" .. sold .. " sold)")
    elseif remaining > 0 then
        warn("[Raspberry] inventory scan: " .. remaining .. " candy bag(s) could NOT be sold")
    end
    selling = false
    return remaining == 0
end
 
task.spawn(function()
    while true do
        if farm3Enabled then
          local okRound, errRound = pcall(function()
            -- forget pots that no longer exist, adopt any already placed at the house
            for i = #raspPots, 1, -1 do
                if not raspPots[i].Parent then table.remove(raspPots, i) end
            end
            adoptExistingPots()

            -- unprocessed Bag of Lemons from an earlier round? mix them first
            if countTools(CROPS.Lemon.mixer.pattern) > 0 and getMixer() then
                print("[Raspberry] leftover Bag of Lemons found, mixing first")
                raspMixerProcess(CROPS.Lemon.mixer)
            end

            -- sell anything left over from a previous round BEFORE doing anything else
            if #candyBagTools() > 0 then
                print("[Raspberry] leftover candy bags found, selling first")
                raspSell()
            end

            setCrop(activeCrop) -- pick up whichever crop is selected for this round
            local opened = raspOpenShop()

            -- if the selected crop is sold out, fall back to the next crop that has stock.
            -- the shop GUI is open, so every crop's seed stock can be read right now.
            local n = 0
            local roundCrop = opened and activeCrop or nil
            if opened and autoSwitchCrops then
                local order = { activeCrop }
                for _, name in ipairs(cropList) do
                    if name ~= activeCrop then table.insert(order, name) end
                end
                roundCrop = nil
                for _, name in ipairs(order) do
                    local st = readStock(CROPS[name].seedItem)
                    -- the selected crop gets the benefit of the doubt if its stock can't be read;
                    -- a fallback crop must show a real stock above 0 (item may not be in this shop)
                    if (name == activeCrop and (st == nil or st > 0)) or (name ~= activeCrop and st and st > 0
                            and (not CROPS[name].mixer or getMixer())) then
                        roundCrop = name
                        break
                    end
                end
            end

            if roundCrop then
                if roundCrop ~= activeCrop then
                    print(("[Raspberry] %s is out of stock, farming %s this round"):format(activeCrop, roundCrop))
                end
                setCrop(roundCrop)
                n = raspShopRun() -- how many full sets we can farm this round
            elseif opened then
                print("[Raspberry] every crop is out of stock")
            end

            if not opened then
                print("[Raspberry] shop did not open, retrying in 5s")
                raspWait(5)
            elseif n <= 0 then
                print("[Raspberry] nothing to farm (out of stock?), retrying in 30s, will go back to " .. activeCrop .. " when it restocks")
                raspWait(30)
            else
                raspPlaceMissing(n)
                if cropCfg.mixer then raspEnsureMixer() end

                -- only farm as many pots as we have matching seeds/water/bags for
                local active = {}
                for i = 1, math.min(n, #raspPots) do active[i] = raspPots[i] end

                if farm3Enabled and #active > 0 then
                    teleportTo(RASP_FARM_POS)
                    task.wait(0.6)

                    -- plant + water, one pot at a time, each with its own GUI open
                    for _, pot in ipairs(active) do
                        if not farm3Enabled then break end
                        if openPotGui(pot) then
                            pcall(function() PlantSeed:InvokeServer(pot, cropCfg.seedItem) end)
                            task.wait(1.2) -- seed needs ~1s to finish planting before watering
                            pcall(function() WaterPot:InvokeServer(pot) end)
                            task.wait(0.6)
                        end
                    end

                    if raspWait(cropCfg.growTime) then
                        -- harvest each pot with its GUI open
                        for _, pot in ipairs(active) do
                            if not farm3Enabled then break end
                            if openPotGui(pot) then
                                pcall(function() HarvestPot:InvokeServer(pot) end)
                                task.wait(0.8)
                            end
                        end
                        task.wait(0.5)
                        local toSell = #active
                        if cropCfg.mixer then
                            print("[Raspberry] harvest done, setting up the fruit mixer")
                            raspPrepareMixer()
                            print("[Raspberry] running the bags through the fruit mixer")
                            toSell = raspMixerProcess(cropCfg.mixer, #active)
                        end
                        print("[Raspberry] heading to the pack buyer")
                        raspSell(toSell)
                        teleportTo(RASP_FARM_POS)
                    end
                end
            end
          end)
          if not okRound then
              selling = false
              warn("[Raspberry] round crashed, restarting it: " .. tostring(errRound))
              task.wait(3)
          end
        end
        task.wait(0.1)
    end
end)
 
end -- end of farm scope

--// teleporting panel
local TeleportsPanel = Instance.new("Frame", Main)
TeleportsPanel.Size = UDim2.new(1, -160, 1, -20)
TeleportsPanel.Position = UDim2.new(0, 160, 0, 10)
TeleportsPanel.BorderSizePixel = 0
reg(TeleportsPanel, "panel")
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
reg(TPScrolling, "scroll")
TPScrolling.BorderSizePixel = 0
 
local TPList = Instance.new("UIListLayout", TPScrolling)
TPList.Padding = UDim.new(0, 6)
TPList.SortOrder = Enum.SortOrder.LayoutOrder
 
for i, loc in ipairs(teleportLocations) do
    local TPButton = Instance.new("TextButton", TPScrolling)
    TPButton.Name = loc.name
    TPButton.LayoutOrder = i
    TPButton.Size = UDim2.new(1, -10, 0, 35)
    TPButton.BorderSizePixel = 0
    reg(TPButton, "button")
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
 
--// MISC PANEL: build-your-own theme + world (time of day / sky) controls
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")

local MiscPanel = Instance.new("Frame", Main)
MiscPanel.Size = UDim2.new(1, -160, 1, -20)
MiscPanel.Position = UDim2.new(0, 160, 0, 10)
MiscPanel.BorderSizePixel = 0
MiscPanel.Visible = false
Instance.new("UICorner", MiscPanel).CornerRadius = UDim.new(0, 6)
reg(MiscPanel, "panel")

local MiscTitle = Instance.new("TextLabel", MiscPanel)
MiscTitle.Size = UDim2.new(1, 0, 0, 40)
MiscTitle.BackgroundTransparency = 1
MiscTitle.Text = "Misc"
MiscTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
MiscTitle.Font = Enum.Font.GothamBold
MiscTitle.TextSize = 18

local MiscScroll = Instance.new("ScrollingFrame", MiscPanel)
MiscScroll.Size = UDim2.new(1, -16, 1, -48)
MiscScroll.Position = UDim2.new(0, 8, 0, 42)
MiscScroll.BackgroundTransparency = 1
MiscScroll.BorderSizePixel = 0
MiscScroll.ScrollBarThickness = 4
MiscScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
MiscScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
reg(MiscScroll, "scroll")
local miscLayout = Instance.new("UIListLayout", MiscScroll)
miscLayout.Padding = UDim.new(0, 10)
miscLayout.SortOrder = Enum.SortOrder.LayoutOrder

local function miscCard(order, height, titleText)
    local card = Instance.new("Frame", MiscScroll)
    card.LayoutOrder = order
    card.Size = UDim2.new(1, -12, 0, height)
    card.BorderSizePixel = 0
    Instance.new("UICorner", card).CornerRadius = UDim.new(0, 8)
    local stroke = Instance.new("UIStroke", card)
    stroke.Color = UI.line
    stroke.Thickness = 1
    reg(card, "card")
    local t = Instance.new("TextLabel", card)
    t.BackgroundTransparency = 1
    t.Position = UDim2.new(0, 14, 0, 8)
    t.Size = UDim2.new(1, -60, 0, 22)
    t.Font = Enum.Font.GothamBold
    t.TextSize = 14
    t.TextColor3 = UI.text
    t.TextXAlignment = Enum.TextXAlignment.Left
    t.Text = titleText
    return card
end

-- a row of equal-width buttons
local function buttonRow(parent, y, names, onClick)
    local row = Instance.new("Frame", parent)
    row.BackgroundTransparency = 1
    row.Position = UDim2.new(0, 14, 0, y)
    row.Size = UDim2.new(1, -28, 0, 26)
    local buttons, n = {}, #names
    for i, name in ipairs(names) do
        local b = Instance.new("TextButton", row)
        b.Size = UDim2.new(1 / n, -5, 1, 0)
        b.Position = UDim2.new((i - 1) / n, 0, 0, 0)
        b.Text = name
        b.Font = Enum.Font.GothamMedium
        b.TextSize = 12
        b.TextColor3 = UI.text
        b.BorderSizePixel = 0
        Instance.new("UICorner", b).CornerRadius = UDim.new(0, 6)
        reg(b, "button")
        b.MouseButton1Click:Connect(function() onClick(name) end)
        buttons[name] = b
    end
    return buttons
end

-- draggable slider. returns set(value) to move it from code without firing onChange.
local function makeSlider(parent, y, labelText, minV, maxV, initial, fmt, onChange)
    local lbl = Instance.new("TextLabel", parent)
    lbl.BackgroundTransparency = 1
    lbl.Position = UDim2.new(0, 14, 0, y)
    lbl.Size = UDim2.new(0, 96, 0, 22)
    lbl.Font = Enum.Font.Gotham
    lbl.TextSize = 12
    lbl.TextColor3 = UI.muted
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.Text = labelText

    local val = Instance.new("TextLabel", parent)
    val.BackgroundTransparency = 1
    val.Position = UDim2.new(1, -62, 0, y)
    val.Size = UDim2.new(0, 48, 0, 22)
    val.Font = Enum.Font.GothamMedium
    val.TextSize = 12
    val.TextColor3 = UI.text
    val.TextXAlignment = Enum.TextXAlignment.Right

    local hit = Instance.new("TextButton", parent)
    hit.Text = ""
    hit.AutoButtonColor = false
    hit.BackgroundTransparency = 1
    hit.Position = UDim2.new(0, 114, 0, y)
    hit.Size = UDim2.new(1, -184, 0, 22)

    local track = Instance.new("Frame", hit)
    track.Size = UDim2.new(1, 0, 0, 6)
    track.Position = UDim2.new(0, 0, 0.5, -3)
    track.BackgroundColor3 = Color3.fromRGB(70, 70, 78)
    track.BorderSizePixel = 0
    Instance.new("UICorner", track).CornerRadius = UDim.new(1, 0)

    local fill = Instance.new("Frame", track)
    fill.BorderSizePixel = 0
    Instance.new("UICorner", fill).CornerRadius = UDim.new(1, 0)
    reg(fill, "accent")

    local knob = Instance.new("Frame", track)
    knob.Size = UDim2.new(0, 14, 0, 14)
    knob.AnchorPoint = Vector2.new(0.5, 0.5)
    knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    knob.BorderSizePixel = 0
    Instance.new("UICorner", knob).CornerRadius = UDim.new(1, 0)

    local function visual(v)
        local rel = math.clamp((v - minV) / (maxV - minV), 0, 1)
        fill.Size = UDim2.new(rel, 0, 1, 0)
        knob.Position = UDim2.new(rel, 0, 0.5, 0)
        val.Text = fmt(v)
    end
    visual(initial)

    local dragging = false
    local function fromInput(pos)
        local rel = math.clamp((pos.X - track.AbsolutePosition.X) / math.max(track.AbsoluteSize.X, 1), 0, 1)
        local v = minV + rel * (maxV - minV)
        visual(v)
        onChange(v)
    end
    local function isPress(input)
        return input.UserInputType == Enum.UserInputType.MouseButton1
            or input.UserInputType == Enum.UserInputType.Touch
    end
    hit.InputBegan:Connect(function(input)
        if isPress(input) then
            dragging = true
            uiBusy = true
            fromInput(input.Position)
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement
            or input.UserInputType == Enum.UserInputType.Touch) then
            fromInput(input.Position)
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if dragging and isPress(input) then
            dragging = false
            uiBusy = false
        end
    end)

    return function(v) visual(v) end
end

local function fmtInt(v) return tostring(math.floor(v + 0.5)) end
local function fmtPct(v) return math.floor(v * 100 + 0.5) .. "%" end
local function fmtClock(v)
    local h = math.floor(v) % 24
    local m = math.floor((v - math.floor(v)) * 60)
    return string.format("%02d:%02d", h, m)
end

-- ===================== MENU THEME =====================
local PRESETS = {
    Purple  = { bg = Color3.fromRGB(14, 10, 22), button = Color3.fromRGB(44, 32, 66), accent = Color3.fromRGB(150, 70, 230) },
    Blue    = { bg = Color3.fromRGB(9, 13, 24),  button = Color3.fromRGB(30, 42, 72), accent = Color3.fromRGB(70, 140, 255) },
    Crimson = { bg = Color3.fromRGB(22, 10, 12), button = Color3.fromRGB(64, 28, 33), accent = Color3.fromRGB(225, 60, 72) },
    Emerald = { bg = Color3.fromRGB(9, 20, 15),  button = Color3.fromRGB(28, 62, 48), accent = Color3.fromRGB(50, 200, 130) },
    Mono    = { bg = Color3.fromRGB(16, 16, 16), button = Color3.fromRGB(44, 44, 44), accent = Color3.fromRGB(205, 205, 205) },
}
local presetOrder = { "Purple", "Blue", "Crimson", "Emerald", "Mono" }

local themeCard = miscCard(1, 232, "Menu Theme")

local swatch = Instance.new("Frame", themeCard)
swatch.Size = UDim2.new(0, 22, 0, 22)
swatch.Position = UDim2.new(1, -36, 0, 8)
swatch.BorderSizePixel = 0
Instance.new("UICorner", swatch).CornerRadius = UDim.new(0, 6)
local swatchStroke = Instance.new("UIStroke", swatch)
swatchStroke.Color = Color3.fromRGB(255, 255, 255)
swatchStroke.Thickness = 1

local target = "Accent"
local rv, gv, bv = 0, 0, 0
local setR, setG, setB

local function targetColor()
    if target == "Accent" then return Theme.accent end
    if target == "Background" then return Theme.base end
    return Theme.button
end

local function syncSliders()
    local c = targetColor()
    rv, gv, bv = math.floor(c.R * 255 + 0.5), math.floor(c.G * 255 + 0.5), math.floor(c.B * 255 + 0.5)
    setR(rv); setG(gv); setB(bv)
    swatch.BackgroundColor3 = c
end

local function pushColor()
    local c = Color3.fromRGB(rv, gv, bv)
    swatch.BackgroundColor3 = c
    if target == "Accent" then Theme.accent = c
    elseif target == "Background" then setBase(c)
    else Theme.button = c end
    applyAll()
end

local function applyPreset(name)
    local p = PRESETS[name]
    setBase(p.bg)
    Theme.button = p.button
    Theme.accent = p.accent
    applyAll()
    syncSliders()
end

buttonRow(themeCard, 36, presetOrder, applyPreset)

local targetButtons
local function refreshTargetButtons()
    for name, b in pairs(targetButtons) do
        b.TextColor3 = (name == target) and Theme.accent or UI.text
    end
end
targetButtons = buttonRow(themeCard, 68, { "Accent", "Background", "Buttons" }, function(name)
    target = name
    syncSliders()
    refreshTargetButtons()
end)

setR = makeSlider(themeCard, 102, "Red",   0, 255, 0, fmtInt, function(v) rv = math.floor(v + 0.5) pushColor() end)
setG = makeSlider(themeCard, 128, "Green", 0, 255, 0, fmtInt, function(v) gv = math.floor(v + 0.5) pushColor() end)
setB = makeSlider(themeCard, 154, "Blue",  0, 255, 0, fmtInt, function(v) bv = math.floor(v + 0.5) pushColor() end)
makeSlider(themeCard, 190, "Transparency", 0, 0.8, Theme.trans, fmtPct, function(v)
    Theme.trans = v
    applyAll()
end)

syncSliders()
refreshTargetButtons()
table.insert(themeHooks, refreshTargetButtons)

-- ===================== WORLD (time of day / sky) =====================
-- everything here only changes YOUR view (client side lighting)
local origLight = {
    ClockTime = Lighting.ClockTime, Brightness = Lighting.Brightness,
    Ambient = Lighting.Ambient, OutdoorAmbient = Lighting.OutdoorAmbient,
    ColorShift_Top = Lighting.ColorShift_Top, ColorShift_Bottom = Lighting.ColorShift_Bottom,
    FogColor = Lighting.FogColor,
}
local atmo = Lighting:FindFirstChildOfClass("Atmosphere")
local origAtmo = atmo and { Color = atmo.Color, Decay = atmo.Decay, Density = atmo.Density,
                            Haze = atmo.Haze, Glare = atmo.Glare }
local ownAtmo = false

local SKIES = {
    Purple = { Color = Color3.fromRGB(175, 115, 240), Decay = Color3.fromRGB(105, 50, 175), Density = 0.35, Haze = 1.8, Glare = 0.2,
               Ambient = Color3.fromRGB(95, 60, 140), Outdoor = Color3.fromRGB(125, 85, 180),
               Top = Color3.fromRGB(175, 115, 240), Bottom = Color3.fromRGB(95, 55, 155), Fog = Color3.fromRGB(105, 65, 165) },
    Blue   = { Color = Color3.fromRGB(120, 185, 255), Decay = Color3.fromRGB(60, 115, 210), Density = 0.3, Haze = 0.9, Glare = 0.1,
               Ambient = Color3.fromRGB(90, 125, 190), Outdoor = Color3.fromRGB(125, 165, 235),
               Top = Color3.fromRGB(120, 185, 255), Bottom = Color3.fromRGB(70, 120, 210), Fog = Color3.fromRGB(130, 175, 240) },
    Sunset = { Color = Color3.fromRGB(255, 160, 110), Decay = Color3.fromRGB(190, 80, 100), Density = 0.35, Haze = 1.5, Glare = 0.4,
               Ambient = Color3.fromRGB(140, 85, 90), Outdoor = Color3.fromRGB(190, 120, 110),
               Top = Color3.fromRGB(255, 165, 115), Bottom = Color3.fromRGB(200, 90, 100), Fog = Color3.fromRGB(215, 130, 110) },
}

local currentSky = nil
local timeLock = false
local chosenTime = Lighting.ClockTime

local function applySky()
    local sky = currentSky and SKIES[currentSky]
    if not sky then return end
    if not atmo then
        atmo = Instance.new("Atmosphere")
        atmo.Name = "FMAtmosphere"
        atmo.Parent = Lighting
        ownAtmo = true
    end
    atmo.Color, atmo.Decay, atmo.Density, atmo.Haze, atmo.Glare = sky.Color, sky.Decay, sky.Density, sky.Haze, sky.Glare
    Lighting.Ambient, Lighting.OutdoorAmbient = sky.Ambient, sky.Outdoor
    Lighting.ColorShift_Top, Lighting.ColorShift_Bottom, Lighting.FogColor = sky.Top, sky.Bottom, sky.Fog
end

local function restoreSky()
    currentSky = nil
    Lighting.Ambient, Lighting.OutdoorAmbient = origLight.Ambient, origLight.OutdoorAmbient
    Lighting.ColorShift_Top, Lighting.ColorShift_Bottom = origLight.ColorShift_Top, origLight.ColorShift_Bottom
    Lighting.FogColor, Lighting.Brightness = origLight.FogColor, origLight.Brightness
    if origAtmo and atmo then
        atmo.Color, atmo.Decay, atmo.Density = origAtmo.Color, origAtmo.Decay, origAtmo.Density
        atmo.Haze, atmo.Glare = origAtmo.Haze, origAtmo.Glare
    elseif ownAtmo and atmo then
        atmo:Destroy()
        atmo, ownAtmo = nil, false
    end
end

-- keep the chosen time / sky applied even if the game's day cycle fights it
local worldConn
worldConn = RunService.Heartbeat:Connect(function()
    if not ScreenGui.Parent then worldConn:Disconnect() return end -- menu was closed / reloaded
    if timeLock then Lighting.ClockTime = chosenTime end
    if currentSky then applySky() end
end)

local worldCard = miscCard(2, 238, "World")
local setTimeSlider, setLockSwitch

setTimeSlider = makeSlider(worldCard, 36, "Time of day", 0, 24, Lighting.ClockTime, fmtClock, function(v)
    chosenTime = v
    timeLock = true
    setLockSwitch(true)
    Lighting.ClockTime = v
end)

local timePresets = { Dawn = 6, Day = 14, Sunset = 18, Night = 23 }
buttonRow(worldCard, 68, { "Dawn", "Day", "Sunset", "Night" }, function(name)
    chosenTime = timePresets[name]
    timeLock = true
    setLockSwitch(true)
    Lighting.ClockTime = chosenTime
    setTimeSlider(chosenTime)
end)

local lockLbl = Instance.new("TextLabel", worldCard)
lockLbl.BackgroundTransparency = 1
lockLbl.Position = UDim2.new(0, 14, 0, 104)
lockLbl.Size = UDim2.new(1, -80, 0, 22)
lockLbl.Font = Enum.Font.Gotham
lockLbl.TextSize = 12
lockLbl.TextColor3 = UI.muted
lockLbl.TextXAlignment = Enum.TextXAlignment.Left
lockLbl.Text = "Lock time (stops the day cycle)"
setLockSwitch = makeSwitch(worldCard, UDim2.new(1, -58, 0, 104), false, function(on)
    timeLock = on
    if on then chosenTime = Lighting.ClockTime end
end)

local skyLbl = Instance.new("TextLabel", worldCard)
skyLbl.BackgroundTransparency = 1
skyLbl.Position = UDim2.new(0, 14, 0, 136)
skyLbl.Size = UDim2.new(1, -28, 0, 18)
skyLbl.Font = Enum.Font.Gotham
skyLbl.TextSize = 12
skyLbl.TextColor3 = UI.muted
skyLbl.TextXAlignment = Enum.TextXAlignment.Left
skyLbl.Text = "Sky"

local skyButtons
local function refreshSkyButtons()
    for name, b in pairs(skyButtons) do
        local active = (name == "Default" and currentSky == nil) or name == currentSky
        b.TextColor3 = active and Theme.accent or UI.text
    end
end
skyButtons = buttonRow(worldCard, 156, { "Default", "Purple", "Blue", "Sunset" }, function(name)
    if name == "Default" then restoreSky() else currentSky = name applySky() end
    refreshSkyButtons()
end)
refreshSkyButtons()
table.insert(themeHooks, refreshSkyButtons)

local resetRow = buttonRow(worldCard, 196, { "Reset World" }, function()
    timeLock = false
    setLockSwitch(false)
    restoreSky()
    Lighting.ClockTime = origLight.ClockTime
    chosenTime = origLight.ClockTime
    setTimeSlider(origLight.ClockTime)
    refreshSkyButtons()
end)

local function hideAll()
    Content.Visible = false
    AutofarmPanel.Visible = false
    TeleportsPanel.Visible = false
    MiscPanel.Visible = false
end
 
GunsBtn.MouseButton1Click:Connect(function()
    hideAll()
    Content.Visible = true
    ContentTitle.Text = "ForbiddedMenus"
    setActiveTab(GunsBtn)
    loadList(guns)
end)
 
AmmoBtn.MouseButton1Click:Connect(function()
    hideAll()
    Content.Visible = true
    ContentTitle.Text = "Buy Ammo"
    setActiveTab(AmmoBtn)
    loadList(ammoList)
end)
 
AutofarmBtn.MouseButton1Click:Connect(function()
    hideAll()
    setActiveTab(AutofarmBtn)
    AutofarmPanel.Visible = true
end)
 
TeleportsBtn.MouseButton1Click:Connect(function()
    hideAll()
    TPtitle.Text = "Teleports"
    setActiveTab(TeleportsBtn)
    TeleportsPanel.Visible = true
end)

MiscBtn.MouseButton1Click:Connect(function()
    hideAll()
    setActiveTab(MiscBtn)
    MiscPanel.Visible = true
end)
 
-- Load guns upon script being injected
setActiveTab(GunsBtn)
loadList(guns)
 
--// Buy Button
local SpawnBtn = Instance.new("TextButton", Content)
SpawnBtn.Size = UDim2.new(1, -20, 0, 45)
SpawnBtn.Position = UDim2.new(0, 10, 1, -55)
SpawnBtn.BorderSizePixel = 0
reg(SpawnBtn, "accent")
SpawnBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
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
