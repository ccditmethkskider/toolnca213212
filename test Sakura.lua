local DeltaLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/NguyenNhatDino/Delta/main/src/main.lua"))()
local DeltaGui = DeltaLib:Start({
    Name = "FREE FIRE HUB",
    Description = "     | By Duc Designer",
    ["Info Color"] = Color3.fromRGB(5, 59, 113),
    ["Logo Info"] = "rbxassetid://127393374937080",
    ["Avatar Dev"] = "rbxassetid://127393374937080",
    ["Name Info"] = "Nguyen Minh Duc",
    ["Name Dev"] = "NguyenMinhDuc",
    ["Info Description"] = "https://zalo.me/g/cxtjdz698",
    ["Tab Width"] = 135,
    ["Color"] = Color3.fromRGB(127, 146, 242),
    ["CloseCallBack"] = function() end
})

-- Tạo Tab Chức Năng
local FunctionTab = DeltaGui:MakeTab("Chức Năng")

-- Tạo Section Tăng Tốc Chạy
local SpeedSection = FunctionTab:Section({
    Title = "Tăng Tốc Chạy",
    Content = "Chức năng tăng tốc độ di chuyển."
})

local speedToggle = false
local defaultWalkSpeed = 16

SpeedSection:Toggle({
    Title = "Bật/Tắt Tăng Tốc",
    Content = "Bật hoặc tắt chức năng tăng tốc.",
    Default = false,
    Callback = function(value)
        speedToggle = value
        local player = game.Players.LocalPlayer
        if speedToggle then
            player.Character.Humanoid.WalkSpeed = 100 -- Tốc độ khi bật
            print("Tăng tốc độ di chuyển!")
        else
            player.Character.Humanoid.WalkSpeed = defaultWalkSpeed -- Tốc độ mặc định
            print("Tắt tăng tốc độ di chuyển!")
        end
    end
})

-- Tạo Section Nhảy Cao
local JumpSection = FunctionTab:Section({
    Title = "Nhảy Cao",
    Content = "Chức năng nhảy cao."
})

local jumpToggle = false
local defaultJumpPower = 50

JumpSection:Toggle({
    Title = "Bật/Tắt Nhảy Cao",
    Content = "Bật hoặc tắt chức năng nhảy cao.",
    Default = false,
    Callback = function(value)
        jumpToggle = value
        local player = game.Players.LocalPlayer
        if jumpToggle then
            player.Character.Humanoid.JumpPower = 100 -- Sức mạnh khi bật
            print("Bật nhảy cao!")
        else
            player.Character.Humanoid.JumpPower = defaultJumpPower -- Sức mạnh mặc định
            print("Tắt nhảy cao!")
        end
    end
})

-- Tạo Section Xuyên Tường
local WallSection = FunctionTab:Section({
    Title = "Xuyên Tường",
    Content = "Cho phép xuyên tường."
})

local wallToggle = false

WallSection:Toggle({
    Title = "Bật/Tắt Xuyên Tường",
    Content = "Bật hoặc tắt chức năng xuyên tường.",
    Default = false,
    Callback = function(value)
        wallToggle = value
        local player = game.Players.LocalPlayer
        if wallToggle then
            player.Character.HumanoidRootPart.CanCollide = false
            print("Bật chức năng xuyên tường!")
        else
            player.Character.HumanoidRootPart.CanCollide = true
            print("Tắt chức năng xuyên tường!")
        end
    end
})

-- Tạo Section ESP Người Chơi
local EspSection = FunctionTab:Section({
    Title = "ESP Người Chơi",
    Content = "Hiện thị vị trí của người chơi."
})

local espToggle = false

local function createESP(player)
    if player.Character then
        local highlight = Instance.new("Highlight")
        highlight.Parent = player.Character
        highlight.FillColor = Color3.fromRGB(0, 255, 0)
        highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
        highlight.AlwaysOnTop = true
    end
end

EspSection:Toggle({
    Title = "Bật/Tắt ESP",
    Content = "Bật hoặc tắt chức năng ESP.",
    Default = false,
    Callback = function(value)
        espToggle = value
        if espToggle then
            for _, player in pairs(game.Players:GetPlayers()) do
                if player ~= game.Players.LocalPlayer then
                    createESP(player)
                end
            end
            print("ESP đã được bật!")
        else
            for _, player in pairs(game.Players:GetPlayers()) do
                if player.Character and player.Character:FindFirstChild("Highlight") then
                    player.Character.Highlight:Destroy()
                end
            end
            print("ESP đã được tắt!")
        end
    end
})

-- Cập nhật ESP khi có người chơi mới
game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        if espToggle then
            createESP(player)
        end
    end)
end)

-- Tạo nút Đóng/Mở Menu
DeltaGui:MakeButton({
    Title = "Đóng/Mở Menu",
    Content = "Nhấn để ẩn hoặc hiện menu.",
    Callback = function()
        if DeltaGui.Visible then
            DeltaGui:Hide()
            print("Menu đã bị ẩn.")
        else
            DeltaGui:Show()
            print("Menu đã hiện.")
        end
    end
})

-- Tạo nút Thu Nhỏ Bảng Điều Khiển
local isCollapsed = false

DeltaGui:MakeButton({
    Title = "Thu Nhỏ/Phóng To",
    Content = "Nhấn để thu nhỏ hoặc phóng to bảng điều khiển.",
    Callback = function()
        if isCollapsed then
            FunctionTab:Show()
            isCollapsed = false
            print("Bảng điều khiển đã phóng to.")
        else
            FunctionTab:Hide()
            isCollapsed = true
            print("Bảng điều khiển đã thu nhỏ.")
        end
    end
})

-- Thêm các phần khác (TextInput, Toggle, Slider, Dropdown, v.v.)
local Section = FunctionTab:Section({
    Title = "Cài Đặt Khác",
    Content = "Các chức năng tùy chỉnh."
})

-- TextInput
local TextInput = Section:TextInput({
    Title = "Nhập Văn Bản",
    Content = "Nhập văn bản của bạn ở đây.",
    ["Place Holder Text"] = "Placeholder...",
    ["Clear Text On Focus"] = true,
    Callback = function(text)
        print("Người dùng nhập:", text)
    end
})

-- Slider
local Slider = Section:Slider({
    Title = "Điều Chỉnh Giá Trị",
    Content = "Sử dụng thanh trượt để điều chỉnh giá trị.",
    Min = 0,
    Max = 100,
    Increment = 1,
    SliderSize = 20, -- Kích thước thanh trượt lớn hơn
    Default = 50,
    Callback = function(value)
        print("Giá trị thanh trượt:", value)
    end
})

-- Dropdown
local Dropdown = Section:Dropdown({
    Title = "Chọn Tùy Chọn",
    Multi = false,
    Options = {"Option1", "Option2", "Option3"},
    Default = {"Option1"},
    ["Place Holder Text"] = "Chọn một tùy chọn",
    Callback = function(selected)
        print("Tùy chọn đã chọn:", selected)
    end
})

-- MultiDropdown
local MultiDropdown = Section:Dropdown({
    Title = "Chọn Nhiều Tùy Chọn",
    Multi = true,
    Options = {"Option1", "Option2", "Option3"},
    Default = {"Option1", "Option3"},
    ["Place Holder Text"] = "Chọn nhiều tùy chọn",
    Callback = function(selected)
        print("Tùy chọn đã chọn:", selected)
    end
})
