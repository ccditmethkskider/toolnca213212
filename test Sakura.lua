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
local maxWalkSpeed = 200
local currentWalkSpeed = defaultWalkSpeed

SpeedSection:Toggle({
    Title = "Bật/Tắt Tăng Tốc",
    Content = "Bật hoặc tắt chức năng tăng tốc.",
    Default = false,
    Callback = function(value)
        speedToggle = value
        local player = game.Players.LocalPlayer
        if speedToggle then
            player.Character.Humanoid.WalkSpeed = currentWalkSpeed
            print("Tăng tốc độ di chuyển!")
        else
            player.Character.Humanoid.WalkSpeed = defaultWalkSpeed
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
            player.Character.Humanoid.JumpPower = 200 -- Sức mạnh khi bật
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
local espLineToggle = false
local espBoxToggle = false
local espHighlights = {}

local function createESP(player)
    if player.Character and not espHighlights[player.UserId] then
        -- Tạo Highlight
        local highlight = Instance.new("Highlight")
        highlight.Parent = player.Character
        highlight.FillColor = Color3.fromRGB(0, 255, 0)
        highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
        highlight.AlwaysOnTop = true
        espHighlights[player.UserId] = highlight
        
        -- Tạo Line
        if espLineToggle then
            local line = Instance.new("Part")
            line.Size = Vector3.new(0.1, 0.1, (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
            line.Anchored = true
            line.CanCollide = false
            line.Color = Color3.fromRGB(255, 0, 0)
            line.Position = (player.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.Position) / 2
            line.CFrame = CFrame.new(line.Position, player.Character.HumanoidRootPart.Position)
            line.Parent = workspace
            espHighlights[player.UserId].Line = line
        end
        
        -- Tạo Box
        if espBoxToggle then
            local box = Instance.new("BoxHandleAdornment")
            box.Size = player.Character:GetBoundingBox().Size
            box.Adornee = player.Character:WaitForChild("HumanoidRootPart")
            box.Color3 = Color3.fromRGB(0, 255, 0)
            box.AlwaysOnTop = true
            box.ZIndex = 10
            box.Parent = player.Character
        end
    end
end

local function removeESP(player)
    if espHighlights[player.UserId] then
        espHighlights[player.UserId]:Destroy()
        if espHighlights[player.UserId].Line then
            espHighlights[player.UserId].Line:Destroy()
        end
        espHighlights[player.UserId] = nil
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
                removeESP(player)
            end
            print("ESP đã được tắt!")
        end
    end
})

EspSection:Toggle({
    Title = "Bật/Tắt ESP Line",
    Content = "Bật hoặc tắt chức năng ESP Line.",
    Default = false,
    Callback = function(value)
        espLineToggle = value
        if espToggle then
            for _, player in pairs(game.Players:GetPlayers()) do
                if player ~= game.Players.LocalPlayer then
                    createESP(player)
                end
            end
        end
        print(espLineToggle and "ESP Line đã được bật!" or "ESP Line đã được tắt!")
    end
})

EspSection:Toggle({
    Title = "Bật/Tắt ESP Box",
    Content = "Bật hoặc tắt chức năng ESP Box.",
    Default = false,
    Callback = function(value)
        espBoxToggle = value
        if espToggle then
            for _, player in pairs(game.Players:GetPlayers()) do
                if player ~= game.Players.LocalPlayer then
                    createESP(player)
                end
            end
        end
        print(espBoxToggle and "ESP Box đã được bật!" or "ESP Box đã được tắt!")
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

-- Thêm các phần khác (TextInput, Slider, Dropdown, v.v.)
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
