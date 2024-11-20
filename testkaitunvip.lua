local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

if not Fluent then
    error("[ERROR] Failed to load Fluent")
end

if not SaveManager then
    error("[ERROR] Failed to load SaveManager")
end

if not InterfaceManager then
    error("[ERROR] Failed to load InterfaceManager")
end

local Window = Fluent:CreateWindow({
    Title = "Celestial Hub",
    SubTitle = "by edwardnewgatedz",
    TabWidth = 140,
    Size = UDim2.fromOffset(530, 350),
    Acrylic = true,
    Theme = "Blue",
    MinimizeKey = Enum.KeyCode.Delete
})

---------------------------------------------------------------------------------------------------

if game.CoreGui:FindFirstChild("CelestialHubOpenClose") then
    game.CoreGui:FindFirstChild("CelestialHubOpenClose"):Destroy()
end

local UIStroke = Instance.new("UIStroke")
local UICorner = Instance.new("UICorner")
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")

ScreenGui.Name = "CelestialHubOpenClose"
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderColor3 = Color3.fromRGB(255, 0, 0)
ImageButton.Draggable = false
ImageButton.Position = UDim2.new(0.08, 0, 0.06, 0)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Image = "rbxassetid://17709877567"

UICorner.Name = "MainCorner"
UICorner.CornerRadius = UDim.new(0, 9)
UICorner.Parent = ImageButton

ImageButton.MouseButton1Down:connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, 127, false, game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, 127, false, game)
end)

------------------------------------------------tab------------------------------

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
}

-- Thêm Toggle Kaitun
local KaitunToggle = Tabs.Main:AddToggle({
    Title = "Kaitun", -- Tên hiển thị trên Toggle
    Default = false, -- Mặc định là tắt
    Callback = function(state)
        if state then
            -- Nếu bật
            local success, err = pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Duc18-code/ducsharelinkhub/refs/heads/main/chucnangkaitun.lua"))()
            end)
            if not success then
                warn("[ERROR] Không thể tải chức năng Kaitun: " .. tostring(err))
            else
                print("Chức năng Kaitun đã được bật.")
            end
        else
            -- Nếu tắt
            print("Chức năng Kaitun đã bị tắt.")
        end
    end
})

-- Thêm tiêu đề để dễ nhận biết
Tabs.Main:AddLabel({ Title = "Tính năng chính" })

local Options = Fluent.Options
do
    -- Thêm mục khác nếu cần
end
