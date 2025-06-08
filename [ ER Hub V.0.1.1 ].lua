local Players = game:GetService("Players")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

-- ฟังก์ชันช่วยทำให้ GUI ลากได้
local function makeDraggable(guiObject)
    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
        local delta = input.Position - dragStart
        guiObject.Position = UDim2.new(
            math.clamp(startPos.X.Scale, 0, 1),
            math.clamp(startPos.X.Offset + delta.X, 0, workspace.CurrentCamera.ViewportSize.X - guiObject.AbsoluteSize.X),
            math.clamp(startPos.Y.Scale, 0, 1),
            math.clamp(startPos.Y.Offset + delta.Y, 0, workspace.CurrentCamera.ViewportSize.Y - guiObject.AbsoluteSize.Y)
        )
    end

    guiObject.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = guiObject.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    guiObject.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
end

local function desaturateColor(color)
    local avg = (color.R + color.G + color.B) / 3
    return Color3.new(avg * 0.2 + color.R * 0.8, avg * 0.2 + color.G * 0.8, avg * 0.2 + color.B * 0.8)
end

-- GUI หลัก
local MainGui = Instance.new("ScreenGui")
MainGui.Name = "MusicGui"
MainGui.Parent = PlayerGui
MainGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- ปุ่ม Toggle GUI
local ToggleButton = Instance.new("TextButton")
ToggleButton.Size = UDim2.new(0, 32, 0, 32)
ToggleButton.Position = UDim2.new(0, 10, 0, 10)
ToggleButton.Text = "E"
ToggleButton.BackgroundColor3 = desaturateColor(Color3.fromRGB(255,255,255))
ToggleButton.BackgroundTransparency = 0.3
ToggleButton.TextColor3 = Color3.fromRGB(0,0,0)
ToggleButton.Font = Enum.Font.SourceSansBold
ToggleButton.TextScaled = true
ToggleButton.BorderColor3 = Color3.fromRGB(0,0,0)
ToggleButton.Parent = MainGui

local ToggleUICorner = Instance.new("UICorner")
ToggleUICorner.CornerRadius = UDim.new(0, 10)
ToggleUICorner.Parent = ToggleButton

makeDraggable(ToggleButton) -- ทำให้ปุ่ม E ลากได้

-- GUI เพลง
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 500, 0, 300)
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Position = UDim2.new(0.5, 0, 0.43, 0)
Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Frame.BackgroundTransparency = 0.1
Frame.BorderSizePixel = 0
Frame.Visible = false
Frame.Parent = MainGui

local FrameCorner = Instance.new("UICorner")
FrameCorner.CornerRadius = UDim.new(0, 15)
FrameCorner.Parent = Frame

makeDraggable(Frame) -- ทำให้กรอบเพลงหลักลากได้

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

-- เส้นกั้น (เต็มความกว้าง Frame)
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

-- ปุ่มควบคุมเพลง
local function createButton(name, pos, text, color)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.3, 0, 0, 30)
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

local PlayButton = createButton("Play", UDim2.new(0.1,0,0.5,0), "เล่นเพลง", Color3.fromRGB(0,200,0))
local StopButton = createButton("Stop", UDim2.new(0.6,0,0.5,0), "หยุดเพลง", Color3.fromRGB(200,0,0))
local ResumeButton = createButton("Resume", UDim2.new(0.1,0,0.7,0), "เล่นต่อ", Color3.fromRGB(0,0,200))

-- เพิ่มปุ่มลดเสียง
local VolumeDownButton = createButton("VolDown", UDim2.new(0.6,0,0.7,0), "ลดเสียง", Color3.fromRGB(255, 140, 0))
-- เพิ่มปุ่มเพิ่มเสียง
local VolumeUpButton = createButton("VolUp", UDim2.new(0.35,0,0.7,0), "เพิ่มเสียง", Color3.fromRGB(0, 140, 255))

-- Sound
local Sound = Instance.new("Sound")
Sound.Parent = workspace
Sound.Volume = 1

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

VolumeDownButton.MouseButton1Click:Connect(function()
    Sound.Volume = math.clamp(Sound.Volume - 0.1, 0, 1)
end)

VolumeUpButton.MouseButton1Click:Connect(function()
    Sound.Volume = math.clamp(Sound.Volume + 0.1, 0, 1)
end)

CloseButton.MouseButton1Click:Connect(function()
    if MainGui and MainGui.Parent then
        MainGui:Destroy()
    end
end)

MinimizeButton.MouseButton1Click:Connect(function()
    Frame.Visible = false
end)

ToggleButton.MouseButton1Click:Connect(function()
    Frame.Visible = not Frame.Visible
end)

-- "by [ERROR 0999cc] TH [official]" มุมขวาล่าง GUI เพลง
local ByLabel = Instance.new("TextLabel")
ByLabel.Text = "by [ERROR 0999cc] TH [official]"
ByLabel.TextColor3 = Color3.fromRGB(255,255,255)
ByLabel.BackgroundTransparency = 1
ByLabel.Size = UDim2.new(0, 200, 0, 20)
ByLabel.AnchorPoint = Vector2.new(1, 1)
ByLabel.Position = UDim2.new(1, -10, 1, -10)
ByLabel.TextScaled = true
