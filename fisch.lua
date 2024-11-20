-- Tải Fluent UI Library
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()

-- Cấu hình cho các chức năng
local config = {
    fpsCap = 60,  -- FPS Cap mặc định
    disableChat = true,            -- Ẩn chat mặc định
    enableBigButton = false,       -- Bật nút lớn khi lắc (off mặc định)
    bigButtonScaleFactor = 2,      -- Tỉ lệ nút lớn
    shakeSpeed = 0.1,              -- Tốc độ rung (shake)
    freezeCharacter = false,       -- Đóng băng nhân vật khi câu cá (off mặc định)
    autoCast = false,              -- Tự động quăng cần câu
    autoReel = false               -- Tự động thu cần câu
}

-- Tạo UI Window
local Window = Fluent:CreateWindow({
    Title = "Fishing Script",
    SubTitle = "Beta Version",
    TabWidth = 160,
    Size = UDim2.fromOffset(530, 350),
    Acrylic = true,
    Theme = "Rose",
    MinimizeKey = Enum.KeyCode.End
})

-- Tabs
local Tabs = {
    Main = Window:AddTab({ Title = "Main" }),
    Fishing = Window:AddTab({ Title = "Fishing" }),
    Misc = Window:AddTab({ Title = "Misc" })
}

-- Services
local StarterGui = game:GetService("StarterGui")
local run_service = game:GetService("RunService")
local players = game:GetService("Players")
local localplayer = players.LocalPlayer
local playergui = localplayer.PlayerGui

-- FPS Cap Function
local function set_fps_cap(value)
    setfpscap(value)
end

-- Freeze Character Function
local function freeze_character(freeze)
    local character = localplayer.Character
    if character then
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            if freeze then
                humanoid.WalkSpeed = 0
                humanoid.JumpPower = 0
            else
                humanoid.WalkSpeed = 16  -- Tốc độ mặc định
                humanoid.JumpPower = 50  -- Nhảy mặc định
            end
        end
    end
end

-- Fishing Functions
local function cast_fishing_rod()
    local rod = localplayer.Character:FindFirstChildOfClass("Tool")
    if rod then
        rod.events.cast:FireServer(100, 1)
    end
end

local function auto_fish()
    while config.autoCast or config.autoReel do
        if config.autoCast then cast_fishing_rod() end
        if config.autoReel then
            -- Gọi chức năng tự động thu câu
            -- Giả sử script đã tìm được hàm và sự kiện chính xác
            print("Auto Reel Triggered")
        end
        wait(config.shakeSpeed)
    end
end

-- Main Tab UI
Tabs.Main:AddSwitch({
    Title = "Disable Chat",
    Default = config.disableChat,
    Callback = function(state)
        config.disableChat = state
        StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, not state)
        print("Chat visibility set to: " .. tostring(state))
    end
})

Tabs.Main:AddSlider({
    Title = "FPS Cap",
    Min = 30,
    Max = 240,
    Default = config.fpsCap,
    Callback = function(value)
        config.fpsCap = value
        set_fps_cap(value)
        print("FPS Cap set to: " .. value)
    end
})

Tabs.Main:AddSwitch({
    Title = "Freeze Character",
    Default = config.freezeCharacter,
    Callback = function(state)
        config.freezeCharacter = state
        freeze_character(state)
        print("Freeze character: " .. tostring(state))
    end
})

-- Fishing Tab UI
Tabs.Fishing:AddSwitch({
    Title = "Auto Cast",
    Default = config.autoCast,
    Callback = function(state)
        config.autoCast = state
        print("Auto Cast: " .. tostring(state))
    end
})

Tabs.Fishing:AddSwitch({
    Title = "Auto Reel",
    Default = config.autoReel,
    Callback = function(state)
        config.autoReel = state
        print("Auto Reel: " .. tostring(state))
    end
})

Tabs.Fishing:AddSwitch({
    Title = "Enable Big Button",
    Default = config.enableBigButton,
    Callback = function(state)
        config.enableBigButton = state
        print("Big Button enabled: " .. tostring(state))
    end
})

-- Misc Tab UI
Tabs.Misc:AddSlider({
    Title = "Shake Speed",
    Min = 0.01,
    Max = 0.2,
    Default = config.shakeSpeed,
    Callback = function(value)
        config.shakeSpeed = value
        print("Shake Speed set to: " .. value)
    end
})

-- Bắt đầu tính năng Auto Fish
run_service.Heartbeat:Connect(auto_fish)
