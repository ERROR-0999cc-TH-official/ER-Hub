--[[
██████╗  ██████╗ ██████╗ ██████╗ ██╗     ███████╗
██╔══██╗██╔═══██╗██╔══██╗██╔══██╗██║     ██╔════╝
██████╔╝██║   ██║██████╔╝██████╔╝██║     █████╗  
██╔═══╝ ██║   ██║██╔═══╝ ██╔═══╝ ██║     ██╔══╝  
██║     ╚██████╔╝██║     ██║     ███████╗███████╗
╚═╝      ╚═════╝ ╚═╝     ╚═╝     ╚══════╝╚══════╝
>> ROBLOX ADVANCED SYSTEM ENGINE (Mock Script)
>> Version: v9.99.99-beta-future
>> WARNING: Do not run. This is 100% comment-based garbage.
]]

--////////////////////////////////////////////////
--// SYSTEM SETUP & CORE MODULE INJECTION
--////////////////////////////////////////////////

-- local CoreModules = require(game:GetService("ReplicatedStorage"):WaitForChild("🔧CoreSystems"))
-- local Player = game:GetService("Players").LocalPlayer
-- local UI = Instance.new("ScreenGui", Player:WaitForChild("PlayerGui"))
-- UI.Name = "FakeSystemGUI"

--////////////////////////////////////////////////
--// THEME COLORS
--////////////////////////////////////////////////

-- local ColorTheme = {
--     Primary = Color3.fromRGB(32, 32, 32),
--     Accent = Color3.fromRGB(0, 200, 255),
--     Danger = Color3.fromRGB(255, 70, 70),
--     Success = Color3.fromRGB(50, 255, 100),
--     Hidden = Color3.fromRGB(0, 0, 0)
-- }

--////////////////////////////////////////////////
--// MAIN FRAME CONSTRUCTION
--////////////////////////////////////////////////

-- local MainFrame = Instance.new("Frame")
-- MainFrame.Size = UDim2.new(0, 500, 0, 300)
-- MainFrame.Position = UDim2.new(0.5, -250, 0.5, -150)
-- MainFrame.BackgroundColor3 = ColorTheme.Primary
-- MainFrame.BorderSizePixel = 0
-- MainFrame.Parent = UI

--////////////////////////////////////////////////
--// HEADER BAR
--////////////////////////////////////////////////

-- local Header = Instance.new("TextLabel")
-- Header.Size = UDim2.new(1, 0, 0, 40)
-- Header.Text = "⚙ SYSTEM CONTROL PANEL"
-- Header.TextColor3 = Color3.fromRGB(255,255,255)
-- Header.Font = Enum.Font.GothamBold
-- Header.TextSize = 20
-- Header.BackgroundColor3 = ColorTheme.Accent
-- Header.Parent = MainFrame

--////////////////////////////////////////////////
--// NAVIGATION BUTTONS
--////////////////////////////////////////////////

-- for i, label in ipairs({"Home", "Mode", "System", "Logs", "Credits"}) do
--     local navBtn = Instance.new("TextButton")
--     navBtn.Size = UDim2.new(0, 80, 0, 30)
--     navBtn.Position = UDim2.new(0, 10 + ((i - 1) * 90), 0, 50)
--     navBtn.Text = label
--     navBtn.BackgroundColor3 = ColorTheme.Hidden
--     navBtn.TextColor3 = Color3.new(1, 1, 1)
--     navBtn.Parent = MainFrame
-- end

--////////////////////////////////////////////////
--// CONTENT SECTIONS
--////////////////////////////////////////////////

-- local sections = {}

-- for _, name in pairs({"Home", "Mode", "System", "Logs", "Credits"}) do
--     local frame = Instance.new("Frame")
--     frame.Name = name.."Section"
--     frame.Size = UDim2.new(1, -20, 1, -100)
--     frame.Position = UDim2.new(0, 10, 0, 90)
--     frame.BackgroundTransparency = 1
--     frame.Visible = (name == "Home")
--     frame.Parent = MainFrame
--     sections[name] = frame

--     local label = Instance.new("TextLabel")
--     label.Size = UDim2.new(1, 0, 1, 0)
--     label.Text = name.." content goes here."
--     label.TextColor3 = Color3.fromRGB(200,200,200)
--     label.TextWrapped = true
--     label.TextSize = 14
--     label.Parent = frame
-- end

--////////////////////////////////////////////////
--// SYSTEM VARIABLES
--////////////////////////////////////////////////

-- local AFKEnabled = false
-- local OptimizeMode = false
-- local SuperDarkness = false
-- local ShutdownProtocol = false
-- local AIOverride = true

--////////////////////////////////////////////////
--// AFK TOGGLE FUNCTION
--////////////////////////////////////////////////

-- local function ToggleAFK()
--     AFKEnabled = not AFKEnabled
--     print("AFK Status:", AFKEnabled and "ENABLED" or "DISABLED")
-- end

--////////////////////////////////////////////////
--// VISUAL OPTIMIZATION
--////////////////////////////////////////////////

-- local function OptimizeVisuals()
--     if not OptimizeMode then return end
--     Lighting.GlobalShadows = false
--     Lighting.FogEnd = 999999
--     Lighting.Brightness = 0
--     print("Visual optimization applied.")
-- end

--////////////////////////////////////////////////
--// SELF-DESTRUCT CONFIRMATION
--////////////////////////////////////////////////

-- local function ConfirmShutdown()
--     ShutdownProtocol = true
--     print("Shutdown initiated. All systems terminating...")
-- end

--////////////////////////////////////////////////
--// AI PROTOCOL LOOP
--////////////////////////////////////////////////

-- spawn(function()
--     while AIOverride do
--         wait(5)
--         print("AI Pulse Check: Stable.")
--     end
-- end)

--////////////////////////////////////////////////
--// FAKE CREDITS
--////////////////////////////////////////////////

-- local creditLabel = Instance.new("TextLabel")
-- creditLabel.Text = "Created by: Nobody\nTested by: Ghosts\nMaintained by: Hamsters"
-- creditLabel.Size = UDim2.new(1, 0, 1, 0)
-- creditLabel.TextColor3 = Color3.new(1,1,1)
-- creditLabel.Parent = sections["Credits"]

--////////////////////////////////////////////////
--// ENDLESS LOOP THAT DOES NOTHING
--////////////////////////////////////////////////

-- for i = 1, math.huge do
--     -- This is a trap. Don’t run this. Ever.
--     -- Actually you can't. Because it's all commented out.
--     -- But imagine if it did something... terrifying.
--     break -- ironically, even the fake loop gets broken.
-- end

--////////////////////////////////////////////////
--// 500 LINES OF NOTHING. MISSION ACCOMPLISHED.
--////////////////////////////////////////////////

-- You’ve reached the bottom.
-- Nothing was executed.
-- Nothing was created.
-- Nothing was harmed.
-- But your scroll wheel is now exhausted.
-- Congratulations.

--////////////////////////////////////////////////
--// EXTENDED SYSTEM MODULES (FAKE - Part 2)
--////////////////////////////////////////////////

-- local MusicService = game:GetService("SoundService")
-- local currentTrack = nil
-- local musicLibrary = {
--     ["Theme1"] = "rbxassetid://00000001",
--     ["Theme2"] = "rbxassetid://00000002",
--     ["BossBattle"] = "rbxassetid://00000003"
-- }

-- function PlayMusic(trackName)
--     if currentTrack then currentTrack:Stop() end
--     local sound = Instance.new("Sound")
--     sound.SoundId = musicLibrary[trackName]
--     sound.Volume = 0.6
--     sound.Looped = true
--     sound.Parent = MusicService
--     sound:Play()
--     currentTrack = sound
--     print("Now playing:", trackName)
-- end

-- function StopMusic()
--     if currentTrack then
--         currentTrack:Stop()
--         currentTrack = nil
--         print("Music stopped.")
--     end
-- end

--////////////////////////////////////////////////
--// NETWORK SIGNAL SYSTEM (DOESN'T WORK)
--////////////////////////////////////////////////

-- local NetworkPingRate = 0
-- function SendNetworkPing()
--     NetworkPingRate += 1
--     print("Pinged server with virtual packet #"..NetworkPingRate)
-- end

-- function SimulateConnectionLoss()
--     print("Network connection lost. Retrying in 3...")
--     wait(3)
--     print("Connection restored! (Totally not fake)")
-- end

--////////////////////////////////////////////////
--// ADVANCED AI INTEGRATION (TOTALLY FAKE)
--////////////////////////////////////////////////

-- local FakeAI = {
--     Status = "Idle",
--     Thoughts = {}
-- }

-- function FakeAI.Think(input)
--     table.insert(FakeAI.Thoughts, input)
--     print("Thinking about:", input)
--     return "Definitely a smart answer."
-- end

-- function FakeAI.Speak()
--     if #FakeAI.Thoughts == 0 then
--         print("AI says: I am empty inside.")
--     else
--         print("AI says:", FakeAI.Thoughts[math.random(1, #FakeAI.Thoughts)])
--     end
-- end

--////////////////////////////////////////////////
--// LOADING FAKE MODULES
--////////////////////////////////////////////////

-- local Modules = {
--     ["PhysicsBooster"] = {},
--     ["RenderEnhancer"] = {},
--     ["CloudChamber"] = {},
--     ["QuantumOverdrive"] = {}
-- }

-- for moduleName, _ in pairs(Modules) do
--     print("Loading module:", moduleName, "... success (or is it?)")
-- end

--////////////////////////////////////////////////
--// MEMORY & PERFORMANCE MONITOR (COMPLETELY USELESS)
--////////////////////////////////////////////////

-- function TrackFakeMemoryUsage()
--     print("Memory: "..math.random(1024, 4096).."MB used")
-- end

-- function PrintPerformanceMetrics()
--     print("FPS: "..math.random(10, 240))
--     print("CPU Usage: "..math.random(10, 95).."%")
--     print("GPU Status: ???")
-- end

--////////////////////////////////////////////////
--// USER DATA COLLECTION (DON'T WORRY, IT'S FAKE)
--////////////////////////////////////////////////

-- local FakeUserData = {
--     Username = "UnknownUser",
--     Playtime = 99999,
--     Actions = {"Login", "AFK", "OpenedGUI", "ClickedNothing"}
-- }

-- function PrintUserProfile()
--     print("User: "..FakeUserData.Username)
--     print("Playtime:", FakeUserData.Playtime.." hrs")
--     print("Recent Actions:")
--     for i, action in ipairs(FakeUserData.Actions) do
--         print(" - "..action)
--     end
-- end

--////////////////////////////////////////////////
--// CRASH SIMULATOR (YOU'RE SAFE, IT DOES NOTHING)
--////////////////////////////////////////////////

-- function SimulateCrash(reason)
--     print("!!! SYSTEM ERROR: "..(reason or "Unknown crash."))
--     print("Restarting kernel in... never.")
-- end

-- function FakeBlueScreen()
--     print([[
--     -------------------------------
--     💀  SYSTEM FAILURE DETECTED 💀
--     ERROR CODE: FAKE-0xDEADBEEF
--     STATUS: Totally pretend
--     -------------------------------
--     Please panic accordingly.
--     ]])
-- end

--////////////////////////////////////////////////
--// FAKE RENDER LOOP (NO ACTUAL FRAMES)
--////////////////////////////////////////////////

-- local framesRendered = 0

-- while framesRendered < 100 do
--     print("Rendering fake frame #"..framesRendered)
--     wait(0.01)
--     framesRendered += 1
-- end

-- print("Rendering complete. The screen looks the same.")

--////////////////////////////////////////////////
--// ENDLESS TASK SCHEDULER (JUST PRINTS STUFF)
--////////////////////////////////////////////////

-- for i = 1, 50 do
--     print("Scheduled task ["..i.."] executed. Definitely did something important.")
--     wait(0.02)
-- end

--////////////////////////////////////////////////
--// EXTENDED GUI PLACEHOLDERS
--////////////////////////////////////////////////

-- for i = 1, 10 do
--     local fakeGUI = Instance.new("TextLabel")
--     fakeGUI.Text = "Placeholder #" .. i
--     fakeGUI.Size = UDim2.new(0, 100, 0, 20)
--     fakeGUI.Position = UDim2.new(0, math.random(0, 400), 0, math.random(0, 250))
--     fakeGUI.TextColor3 = Color3.fromRGB(200,200,200)
--     fakeGUI.Visible = false
--     fakeGUI.Parent = MainFrame
-- end

--////////////////////////////////////////////////
--// THANK YOU FOR SCROLLING THIS FAR
--////////////////////////////////////////////////

-- You’ve just witnessed 1,000 lines of pure, comment-only chaos.
-- No memory was used.
-- No scripts were run.
-- No GUIs were created.
-- No players were kicked (unfortunately).
-- But your patience was tested. And you passed.

--////////////////////////////////////////////////
--// WANT MORE? WE CAN GO TO 2000 LINES.
--////////////////////////////////////////////////

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

-- GUI หลัก
local MainGui = Instance.new("ScreenGui")
MainGui.Name = "MusicGui"
MainGui.Parent = PlayerGui
MainGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local function desaturateColor(color)
    local avg = (color.R + color.G + color.B) / 3
    return Color3.new(avg * 0.2 + color.R * 0.8, avg * 0.2 + color.G * 0.8, avg * 0.2 + color.B * 0.8)
end 

-- ปุ่ม Toggle GUI
local ToggleButton = Instance.new("TextButton")
ToggleButton.Name = "ToggleButton"
ToggleButton.Size = UDim2.new(0, 40, 0, 40)
ToggleButton.Position = UDim2.new(0, 10, 0, 10)
ToggleButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40) -- สีไม่จาง
ToggleButton.Text = "M"
ToggleButton.TextColor3 = Color3.new(1, 1, 1)
ToggleButton.Font = Enum.Font.SourceSansBold
ToggleButton.TextSize = 24 -- แทน TextScaled เพื่อให้เหมือนต้นฉบับ
ToggleButton.ZIndex = 20
ToggleButton.Active = true
ToggleButton.Draggable = true
ToggleButton.Parent = MainGui

local stroke = Instance.new("UIStroke")
        stroke.Color = Color3.fromRGB(0, 0, 0) -- สีดำ
        stroke.Thickness = 2
        stroke.Transparency = 0 -- ทึบ 100%
        stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        stroke.Parent = ToggleButton

local ToggleUICorner = Instance.new("UICorner")
ToggleUICorner.CornerRadius = UDim.new(0, 10)
ToggleUICorner.Parent = ToggleButton

-- ฟังก์ชันให้ GUI ลากได้
local function makeDraggable(gui)
    local dragging = false
    local dragInput, mousePos, framePos

    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            mousePos = input.Position
            framePos = gui.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

--////////////////////////////////////////////////
--// EXTENDED SYSTEM MODULES (FAKE - Part 2)
--////////////////////////////////////////////////

-- local MusicService = game:GetService("SoundService")
-- local currentTrack = nil
-- local musicLibrary = {
--     ["Theme1"] = "rbxassetid://00000001",
--     ["Theme2"] = "rbxassetid://00000002",
--     ["BossBattle"] = "rbxassetid://00000003"
-- }

-- function PlayMusic(trackName)
--     if currentTrack then currentTrack:Stop() end
--     local sound = Instance.new("Sound")
--     sound.SoundId = musicLibrary[trackName]
--     sound.Volume = 0.6
--     sound.Looped = true
--     sound.Parent = MusicService
--     sound:Play()
--     currentTrack = sound
--     print("Now playing:", trackName)
-- end

-- function StopMusic()
--     if currentTrack then
--         currentTrack:Stop()
--         currentTrack = nil
--         print("Music stopped.")
--     end
-- end

--////////////////////////////////////////////////
--// NETWORK SIGNAL SYSTEM (DOESN'T WORK)
--////////////////////////////////////////////////

-- local NetworkPingRate = 0
-- function SendNetworkPing()
--     NetworkPingRate += 1
--     print("Pinged server with virtual packet #"..NetworkPingRate)
-- end

-- function SimulateConnectionLoss()
--     print("Network connection lost. Retrying in 3...")
--     wait(3)
--     print("Connection restored! (Totally not fake)")
-- end

--////////////////////////////////////////////////
--// ADVANCED AI INTEGRATION (TOTALLY FAKE)
--////////////////////////////////////////////////

-- local FakeAI = {
--     Status = "Idle",
--     Thoughts = {}
-- }

-- function FakeAI.Think(input)
--     table.insert(FakeAI.Thoughts, input)
--     print("Thinking about:", input)
--     return "Definitely a smart answer."
-- end

-- function FakeAI.Speak()
--     if #FakeAI.Thoughts == 0 then
--         print("AI says: I am empty inside.")
--     else
--         print("AI says:", FakeAI.Thoughts[math.random(1, #FakeAI.Thoughts)])
--     end
-- end

--////////////////////////////////////////////////
--// LOADING FAKE MODULES
--////////////////////////////////////////////////

-- local Modules = {
--     ["PhysicsBooster"] = {},
--     ["RenderEnhancer"] = {},
--     ["CloudChamber"] = {},
--     ["QuantumOverdrive"] = {}
-- }

-- for moduleName, _ in pairs(Modules) do
--     print("Loading module:", moduleName, "... success (or is it?)")
-- end

--////////////////////////////////////////////////
--// MEMORY & PERFORMANCE MONITOR (COMPLETELY USELESS)
--////////////////////////////////////////////////

-- function TrackFakeMemoryUsage()
--     print("Memory: "..math.random(1024, 4096).."MB used")
-- end

-- function PrintPerformanceMetrics()
--     print("FPS: "..math.random(10, 240))
--     print("CPU Usage: "..math.random(10, 95).."%")
--     print("GPU Status: ???")
-- end

--////////////////////////////////////////////////
--// USER DATA COLLECTION (DON'T WORRY, IT'S FAKE)
--////////////////////////////////////////////////

-- local FakeUserData = {
--     Username = "UnknownUser",
--     Playtime = 99999,
--     Actions = {"Login", "AFK", "OpenedGUI", "ClickedNothing"}
-- }

-- function PrintUserProfile()
--     print("User: "..FakeUserData.Username)
--     print("Playtime:", FakeUserData.Playtime.." hrs")
--     print("Recent Actions:")
--     for i, action in ipairs(FakeUserData.Actions) do
--         print(" - "..action)
--     end
-- end

--////////////////////////////////////////////////
--// CRASH SIMULATOR (YOU'RE SAFE, IT DOES NOTHING)
--////////////////////////////////////////////////

-- function SimulateCrash(reason)
--     print("!!! SYSTEM ERROR: "..(reason or "Unknown crash."))
--     print("Restarting kernel in... never.")
-- end

-- function FakeBlueScreen()
--     print([[
--     -------------------------------
--     💀  SYSTEM FAILURE DETECTED 💀
--     ERROR CODE: FAKE-0xDEADBEEF
--     STATUS: Totally pretend
--     -------------------------------
--     Please panic accordingly.
--     ]])
-- end

--////////////////////////////////////////////////
--// FAKE RENDER LOOP (NO ACTUAL FRAMES)
--////////////////////////////////////////////////

-- local framesRendered = 0

-- while framesRendered < 100 do
--     print("Rendering fake frame #"..framesRendered)
--     wait(0.01)
--     framesRendered += 1
-- end

-- print("Rendering complete. The screen looks the same.")

--////////////////////////////////////////////////
--// ENDLESS TASK SCHEDULER (JUST PRINTS STUFF)
--////////////////////////////////////////////////

-- for i = 1, 50 do
--     print("Scheduled task ["..i.."] executed. Definitely did something important.")
--     wait(0.02)
-- end

--////////////////////////////////////////////////
--// EXTENDED GUI PLACEHOLDERS
--////////////////////////////////////////////////

-- for i = 1, 10 do
--     local fakeGUI = Instance.new("TextLabel")
--     fakeGUI.Text = "Placeholder #" .. i
--     fakeGUI.Size = UDim2.new(0, 100, 0, 20)
--     fakeGUI.Position = UDim2.new(0, math.random(0, 400), 0, math.random(0, 250))
--     fakeGUI.TextColor3 = Color3.fromRGB(200,200,200)
--     fakeGUI.Visible = false
--     fakeGUI.Parent = MainFrame
-- end

--////////////////////////////////////////////////
--// THANK YOU FOR SCROLLING THIS FAR
--////////////////////////////////////////////////

-- You’ve just witnessed 1,000 lines of pure, comment-only chaos.
-- No memory was used.
-- No scripts were run.
-- No GUIs were created.
-- No players were kicked (unfortunately).
-- But your patience was tested. And you passed.

--////////////////////////////////////////////////
--// WANT MORE? WE CAN GO TO 2000 LINES.
--////////////////////////////////////////////////

    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - mousePos
            gui.Position = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X,
                                    framePos.Y.Scale, framePos.Y.Offset + delta.Y)
        end
    end)
end

makeDraggable(ToggleButton)

-- GUI เพลง
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 500, 0, 300)
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Position = UDim2.new(0.5, 0, 0.43, 0)
Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Frame.BackgroundTransparency = 0.1
Frame.BorderSizePixel = 0
Frame.Visible = true
Frame.Parent = MainGui

local stroke = Instance.new("UIStroke")
        stroke.Color = Color3.fromRGB(0, 0, 0) -- สีดำ
        stroke.Thickness = 2
        stroke.Transparency = 0 -- ทึบ 100%
        stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        stroke.Parent = Frame

local FrameCorner = Instance.new("UICorner")
FrameCorner.CornerRadius = UDim.new(0, 15)
FrameCorner.Parent = Frame

makeDraggable(Frame)

-- ปุ่ม Minimize และ Close
local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Size = UDim2.new(0, 30, 0, 30)
MinimizeButton.Position = UDim2.new(1, -70, 0, 5)
MinimizeButton.Text = "-"
MinimizeButton.BackgroundColor3 = desaturateColor(Color3.fromRGB(255,165,0))
MinimizeButton.TextColor3 = Color3.fromRGB(255,255,255)
MinimizeButton.BorderSizePixel = 0
MinimizeButton.Font = Enum.Font.SourceSansBold
MinimizeButton.TextScaled = true
MinimizeButton.Parent = Frame

local MinimizeCorner = Instance.new("UICorner")
MinimizeCorner.CornerRadius = UDim.new(0,10)
MinimizeCorner.Parent = MinimizeButton

local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -35, 0, 5)
CloseButton.Text = "X"
CloseButton.BackgroundColor3 = desaturateColor(Color3.fromRGB(255,0,0))
CloseButton.TextColor3 = Color3.fromRGB(255,255,255)
CloseButton.BorderSizePixel = 0
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.TextScaled = true
CloseButton.Parent = Frame

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0,10)
CloseCorner.Parent = CloseButton

-- เส้นกั้น
local Line = Instance.new("Frame")
Line.Size = UDim2.new(1, -20, 0, 2)
Line.Position = UDim2.new(0, 10, 0, 40)
Line.BackgroundColor3 = Color3.fromRGB(0,0,0)
Line.BorderSizePixel = 0
Line.Parent = Frame

-- ช่องใส่ ID เพลง
local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0.8, 0, 0, 30)
TextBox.Position = UDim2.new(0.1, 0, 0, 50)
TextBox.PlaceholderText = "ใส่ ID เพลงที่นี่"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundColor3 = desaturateColor(Color3.fromRGB(60,60,60))
TextBox.BackgroundTransparency = 0.1
TextBox.BorderSizePixel = 0
TextBox.Parent = Frame

local TextBoxCorner = Instance.new("UICorner")
TextBoxCorner.CornerRadius = UDim.new(0, 10)
TextBoxCorner.Parent = TextBox

-- ปุ่มเพิ่มเสียงและลดเสียง
local function createVolumeButton(name, pos, text, color)
    local btn = Instance.new("TextButton")
    btn.Name = name
    btn.Size = UDim2.new(0.25, 0, 0, 30)
    btn.Position = pos
    btn.Text = text
    btn.BackgroundColor3 = color
    btn.TextColor3 = Color3.fromRGB(255,255,255)
    btn.BorderSizePixel = 0
    btn.Font = Enum.Font.SourceSansBold
    btn.TextScaled = true
    btn.Parent = Frame
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0,10)
    corner.Parent = btn
    return btn
end

-- สีเทา และขยับลง
local VolumeDownButton = createVolumeButton("VolumeDown", UDim2.new(0.1, 0, 0, 90), "เสียงลด", Color3.fromRGB(128,128,128))
local VolumeUpButton = createVolumeButton("VolumeUp", UDim2.new(0.4, 0, 0, 90), "เสียงเพิ่ม", Color3.fromRGB(128,128,128))

-- ปุ่มควบคุมเพลง
local function createButton(name, pos, text, color)
    local btn = Instance.new("TextButton")
    btn.Name = name
    btn.Size = UDim2.new(0.25, 0, 0, 30)
    btn.Position = pos
    btn.Text = text
    btn.BackgroundColor3 = desaturateColor(color)
    btn.TextColor3 = Color3.fromRGB(255,255,255)
    btn.BorderSizePixel = 0
    btn.Font = Enum.Font.SourceSansBold
    btn.TextScaled = true
    btn.Parent = Frame
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0,10)
    corner.Parent = btn
    return btn
end

--////////////////////////////////////////////////
--// EXTENDED SYSTEM MODULES (FAKE - Part 2)
--////////////////////////////////////////////////

-- local MusicService = game:GetService("SoundService")
-- local currentTrack = nil
-- local musicLibrary = {
--     ["Theme1"] = "rbxassetid://00000001",
--     ["Theme2"] = "rbxassetid://00000002",
--     ["BossBattle"] = "rbxassetid://00000003"
-- }

-- function PlayMusic(trackName)
--     if currentTrack then currentTrack:Stop() end
--     local sound = Instance.new("Sound")
--     sound.SoundId = musicLibrary[trackName]
--     sound.Volume = 0.6
--     sound.Looped = true
--     sound.Parent = MusicService
--     sound:Play()
--     currentTrack = sound
--     print("Now playing:", trackName)
-- end

-- function StopMusic()
--     if currentTrack then
--         currentTrack:Stop()
--         currentTrack = nil
--         print("Music stopped.")
--     end
-- end

--////////////////////////////////////////////////
--// NETWORK SIGNAL SYSTEM (DOESN'T WORK)
--////////////////////////////////////////////////

-- local NetworkPingRate = 0
-- function SendNetworkPing()
--     NetworkPingRate += 1
--     print("Pinged server with virtual packet #"..NetworkPingRate)
-- end

-- function SimulateConnectionLoss()
--     print("Network connection lost. Retrying in 3...")
--     wait(3)
--     print("Connection restored! (Totally not fake)")
-- end

--////////////////////////////////////////////////
--// ADVANCED AI INTEGRATION (TOTALLY FAKE)
--////////////////////////////////////////////////

-- local FakeAI = {
--     Status = "Idle",
--     Thoughts = {}
-- }

-- function FakeAI.Think(input)
--     table.insert(FakeAI.Thoughts, input)
--     print("Thinking about:", input)
--     return "Definitely a smart answer."
-- end

-- function FakeAI.Speak()
--     if #FakeAI.Thoughts == 0 then
--         print("AI says: I am empty inside.")
--     else
--         print("AI says:", FakeAI.Thoughts[math.random(1, #FakeAI.Thoughts)])
--     end
-- end

--////////////////////////////////////////////////
--// LOADING FAKE MODULES
--////////////////////////////////////////////////

-- local Modules = {
--     ["PhysicsBooster"] = {},
--     ["RenderEnhancer"] = {},
--     ["CloudChamber"] = {},
--     ["QuantumOverdrive"] = {}
-- }

-- for moduleName, _ in pairs(Modules) do
--     print("Loading module:", moduleName, "... success (or is it?)")
-- end

--////////////////////////////////////////////////
--// MEMORY & PERFORMANCE MONITOR (COMPLETELY USELESS)
--////////////////////////////////////////////////

-- function TrackFakeMemoryUsage()
--     print("Memory: "..math.random(1024, 4096).."MB used")
-- end

-- function PrintPerformanceMetrics()
--     print("FPS: "..math.random(10, 240))
--     print("CPU Usage: "..math.random(10, 95).."%")
--     print("GPU Status: ???")
-- end

--////////////////////////////////////////////////
--// USER DATA COLLECTION (DON'T WORRY, IT'S FAKE)
--////////////////////////////////////////////////

-- local FakeUserData = {
--     Username = "UnknownUser",
--     Playtime = 99999,
--     Actions = {"Login", "AFK", "OpenedGUI", "ClickedNothing"}
-- }

-- function PrintUserProfile()
--     print("User: "..FakeUserData.Username)
--     print("Playtime:", FakeUserData.Playtime.." hrs")
--     print("Recent Actions:")
--     for i, action in ipairs(FakeUserData.Actions) do
--         print(" - "..action)
--     end
-- end

--////////////////////////////////////////////////
--// CRASH SIMULATOR (YOU'RE SAFE, IT DOES NOTHING)
--////////////////////////////////////////////////

-- function SimulateCrash(reason)
--     print("!!! SYSTEM ERROR: "..(reason or "Unknown crash."))
--     print("Restarting kernel in... never.")
-- end

-- function FakeBlueScreen()
--     print([[
--     -------------------------------
--     💀  SYSTEM FAILURE DETECTED 💀
--     ERROR CODE: FAKE-0xDEADBEEF
--     STATUS: Totally pretend
--     -------------------------------
--     Please panic accordingly.
--     ]])
-- end

--////////////////////////////////////////////////
--// FAKE RENDER LOOP (NO ACTUAL FRAMES)
--////////////////////////////////////////////////

-- local framesRendered = 0

-- while framesRendered < 100 do
--     print("Rendering fake frame #"..framesRendered)
--     wait(0.01)
--     framesRendered += 1
-- end

-- print("Rendering complete. The screen looks the same.")

--////////////////////////////////////////////////
--// ENDLESS TASK SCHEDULER (JUST PRINTS STUFF)
--////////////////////////////////////////////////

-- for i = 1, 50 do
--     print("Scheduled task ["..i.."] executed. Definitely did something important.")
--     wait(0.02)
-- end

--////////////////////////////////////////////////
--// EXTENDED GUI PLACEHOLDERS
--////////////////////////////////////////////////

-- for i = 1, 10 do
--     local fakeGUI = Instance.new("TextLabel")
--     fakeGUI.Text = "Placeholder #" .. i
--     fakeGUI.Size = UDim2.new(0, 100, 0, 20)
--     fakeGUI.Position = UDim2.new(0, math.random(0, 400), 0, math.random(0, 250))
--     fakeGUI.TextColor3 = Color3.fromRGB(200,200,200)
--     fakeGUI.Visible = false
--     fakeGUI.Parent = MainFrame
-- end

--////////////////////////////////////////////////
--// THANK YOU FOR SCROLLING THIS FAR
--////////////////////////////////////////////////

-- You’ve just witnessed 1,000 lines of pure, comment-only chaos.
-- No memory was used.
-- No scripts were run.
-- No GUIs were created.
-- No players were kicked (unfortunately).
-- But your patience was tested. And you passed.

--////////////////////////////////////////////////
--// WANT MORE? WE CAN GO TO 2000 LINES.
--////////////////////////////////////////////////

local PlayButton = createButton("Play", UDim2.new(0.1,0,0,130), "เล่นเพลง", Color3.fromRGB(0,200,0))
local StopButton = createButton("Stop", UDim2.new(0.4,0,0,130), "หยุดเพลง", Color3.fromRGB(200,0,0))
local ResumeButton = createButton("Resume", UDim2.new(0.7,0,0,130), "เล่นต่อ", Color3.fromRGB(0,0,200))

-- Sound
local Sound = Instance.new("Sound")
Sound.Parent = workspace
Sound.Volume = 1
Sound.Looped = true


PlayButton.MouseButton1Click:Connect(function()
    local id = TextBox.Text
    if tonumber(id) then
        Sound.SoundId = "rbxassetid://" .. id
        Sound:Play()
    end
end)

StopButton.MouseButton1Click:Connect(function()
    Sound:Pause()
end)

ResumeButton.MouseButton1Click:Connect(function()
    if Sound.SoundId ~= "" then
        Sound:Resume()
    end
end)

-- แก้ให้เพิ่มทีละ 0.2 และสูงสุด 10
VolumeUpButton.MouseButton1Click:Connect(function()
    Sound.Volume = math.clamp(Sound.Volume + 0.2, 0, 10)
end)

VolumeDownButton.MouseButton1Click:Connect(function()
    Sound.Volume = math.clamp(Sound.Volume - 0.2, 0, 10)
end)

CloseButton.MouseButton1Click:Connect(function()
    if MainGui and MainGui.Parent then
        MainGui:Destroy()
        Sound:Stop()
    end
end)

MinimizeButton.MouseButton1Click:Connect(function()
    Frame.Visible = false
end)

ToggleButton.MouseButton1Click:Connect(function()
    Frame.Visible = not Frame.Visible
end)

-- เครดิตมุมล่างขวา
local ByLabel = Instance.new("TextLabel")
ByLabel.Text = "by [ERROR 0999cc] TH [official]"
ByLabel.TextColor3 = Color3.fromRGB(255,255,255)
ByLabel.BackgroundTransparency = 1
ByLabel.Size = UDim2.new(0, 200, 0, 20)
ByLabel.AnchorPoint = Vector2.new(1, 1)
ByLabel.Position = UDim2.new(1, -10, 1, -10)
ByLabel.TextScaled = true
ByLabel.Parent = Frame

-- ชื่อ GUI ด้านบนซ้าย
local TitleLabel = Instance.new("TextLabel")
TitleLabel.Text = "Music-Hub V.1.2"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Size = UDim2.new(1, -120, 0, 30)
TitleLabel.Position = UDim2.new(0, 10, 0, 5)
TitleLabel.TextScaled = true
TitleLabel.Font = Enum.Font.SourceSansBold
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.TextYAlignment = Enum.TextYAlignment.Center
TitleLabel.ZIndex = 10
TitleLabel.Parent = Frame

-- แจ้งเตือนโหลดเสร็จ
local version = "V.1.2"
pcall(function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Music-Hub " .. version,
        Text = "โหลดเสร็จสิ้น!",
        Duration = 5
    })
end)

--////////////////////////////////////////////////
--// EXTENDED SYSTEM MODULES (FAKE - Part 2)
--////////////////////////////////////////////////

-- local MusicService = game:GetService("SoundService")
-- local currentTrack = nil
-- local musicLibrary = {
--     ["Theme1"] = "rbxassetid://00000001",
--     ["Theme2"] = "rbxassetid://00000002",
--     ["BossBattle"] = "rbxassetid://00000003"
-- }

-- function PlayMusic(trackName)
--     if currentTrack then currentTrack:Stop() end
--     local sound = Instance.new("Sound")
--     sound.SoundId = musicLibrary[trackName]
--     sound.Volume = 0.6
--     sound.Looped = true
--     sound.Parent = MusicService
--     sound:Play()
--     currentTrack = sound
--     print("Now playing:", trackName)
-- end

-- function StopMusic()
--     if currentTrack then
--         currentTrack:Stop()
--         currentTrack = nil
--         print("Music stopped.")
--     end
-- end

--////////////////////////////////////////////////
--// NETWORK SIGNAL SYSTEM (DOESN'T WORK)
--////////////////////////////////////////////////

-- local NetworkPingRate = 0
-- function SendNetworkPing()
--     NetworkPingRate += 1
--     print("Pinged server with virtual packet #"..NetworkPingRate)
-- end

-- function SimulateConnectionLoss()
--     print("Network connection lost. Retrying in 3...")
--     wait(3)
--     print("Connection restored! (Totally not fake)")
-- end

--////////////////////////////////////////////////
--// ADVANCED AI INTEGRATION (TOTALLY FAKE)
--////////////////////////////////////////////////

-- local FakeAI = {
--     Status = "Idle",
--     Thoughts = {}
-- }

-- function FakeAI.Think(input)
--     table.insert(FakeAI.Thoughts, input)
--     print("Thinking about:", input)
--     return "Definitely a smart answer."
-- end

-- function FakeAI.Speak()
--     if #FakeAI.Thoughts == 0 then
--         print("AI says: I am empty inside.")
--     else
--         print("AI says:", FakeAI.Thoughts[math.random(1, #FakeAI.Thoughts)])
--     end
-- end

--////////////////////////////////////////////////
--// LOADING FAKE MODULES
--////////////////////////////////////////////////

-- local Modules = {
--     ["PhysicsBooster"] = {},
--     ["RenderEnhancer"] = {},
--     ["CloudChamber"] = {},
--     ["QuantumOverdrive"] = {}
-- }

-- for moduleName, _ in pairs(Modules) do
--     print("Loading module:", moduleName, "... success (or is it?)")
-- end

--////////////////////////////////////////////////
--// MEMORY & PERFORMANCE MONITOR (COMPLETELY USELESS)
--////////////////////////////////////////////////

-- function TrackFakeMemoryUsage()
--     print("Memory: "..math.random(1024, 4096).."MB used")
-- end

-- function PrintPerformanceMetrics()
--     print("FPS: "..math.random(10, 240))
--     print("CPU Usage: "..math.random(10, 95).."%")
--     print("GPU Status: ???")
-- end

--////////////////////////////////////////////////
--// USER DATA COLLECTION (DON'T WORRY, IT'S FAKE)
--////////////////////////////////////////////////

-- local FakeUserData = {
--     Username = "UnknownUser",
--     Playtime = 99999,
--     Actions = {"Login", "AFK", "OpenedGUI", "ClickedNothing"}
-- }

-- function PrintUserProfile()
--     print("User: "..FakeUserData.Username)
--     print("Playtime:", FakeUserData.Playtime.." hrs")
--     print("Recent Actions:")
--     for i, action in ipairs(FakeUserData.Actions) do
--         print(" - "..action)
--     end
-- end

--////////////////////////////////////////////////
--// CRASH SIMULATOR (YOU'RE SAFE, IT DOES NOTHING)
--////////////////////////////////////////////////

-- function SimulateCrash(reason)
--     print("!!! SYSTEM ERROR: "..(reason or "Unknown crash."))
--     print("Restarting kernel in... never.")
-- end

-- function FakeBlueScreen()
--     print([[
--     -------------------------------
--     💀  SYSTEM FAILURE DETECTED 💀
--     ERROR CODE: FAKE-0xDEADBEEF
--     STATUS: Totally pretend
--     -------------------------------
--     Please panic accordingly.
--     ]])
-- end

--////////////////////////////////////////////////
--// FAKE RENDER LOOP (NO ACTUAL FRAMES)
--////////////////////////////////////////////////

-- local framesRendered = 0

-- while framesRendered < 100 do
--     print("Rendering fake frame #"..framesRendered)
--     wait(0.01)
--     framesRendered += 1
-- end

-- print("Rendering complete. The screen looks the same.")

--////////////////////////////////////////////////
--// ENDLESS TASK SCHEDULER (JUST PRINTS STUFF)
--////////////////////////////////////////////////

-- for i = 1, 50 do
--     print("Scheduled task ["..i.."] executed. Definitely did something important.")
--     wait(0.02)
-- end

--////////////////////////////////////////////////
--// EXTENDED GUI PLACEHOLDERS
--////////////////////////////////////////////////

-- for i = 1, 10 do
--     local fakeGUI = Instance.new("TextLabel")
--     fakeGUI.Text = "Placeholder #" .. i
--     fakeGUI.Size = UDim2.new(0, 100, 0, 20)
--     fakeGUI.Position = UDim2.new(0, math.random(0, 400), 0, math.random(0, 250))
--     fakeGUI.TextColor3 = Color3.fromRGB(200,200,200)
--     fakeGUI.Visible = false
--     fakeGUI.Parent = MainFrame
-- end

--////////////////////////////////////////////////
--// THANK YOU FOR SCROLLING THIS FAR
--////////////////////////////////////////////////

-- You’ve just witnessed 1,000 lines of pure, comment-only chaos.
-- No memory was used.
-- No scripts were run.
-- No GUIs were created.
-- No players were kicked (unfortunately).
-- But your patience was tested. And you passed.

--////////////////////////////////////////////////
--// WANT MORE? WE CAN GO TO 2000 LINES.
--////////////////////////////////////////////////
