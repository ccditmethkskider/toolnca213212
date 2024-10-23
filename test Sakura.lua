local DeltaLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/NguyenNhatDino/Delta/main/src/main.lua"))()
local DeltaGui = DeltaLib:Start({
    Name = "Delta Library",
    Description = "By Nuyen Nhat",
    ["Info Color"] = Color3.fromRGB(5, 59, 113),
    ["Logo Info"] = "rbxassetid://107467983717636",
    ["Avatar Dev"] = "rbxassetid://107467983717636",
    ["Name Info"] = "FREE FIRE HUB",
    ["Name Dev"] = "NguyenMinhDuc",
    ["Info Description"] = "https://zalo.me/g/cxtjdz698",
    ["Tab Width"] = 135,
    ["Color"] = Color3.fromRGB(127, 146, 242),
    ["CloseCallBack"] = function() end
})

-- Thông báo
local Notify = DeltaLib:Notify({
    Title = "Delta Library",
    Description = "Hello World",
    Color = Color3.fromRGB(127, 146, 242),
    Content = "Delta Library",
    Time = 1,
    Delay = 10
})

-- Tạo Tab Chức Năng
local FunctionTab = DeltaGui:MakeTab("Chức Năng")

-- Tạo Section Tăng Tốc Chạy
local SpeedSection = FunctionTab:Section({
    Title = "Tăng Tốc Chạy",
    Content = "Chức năng tăng tốc độ di chuyển."
})

SpeedSection:Slider({
    Title = "Tốc Độ Di Chuyển",
    Min = 16,
    Max = 200,
    Default = 100,
    Callback = function(value)
        local player = game.Players.LocalPlayer
        player.Character.Humanoid.WalkSpeed = value -- Điều chỉnh tốc độ theo giá trị thanh trượt
        print("Tốc độ di chuyển đã được điều chỉnh thành: " .. value)
    end
})

-- Tạo Section Nhảy Cao
local JumpSection = FunctionTab:Section({
    Title = "Nhảy Cao",
    Content = "Chức năng nhảy cao."
})

JumpSection:Slider({
    Title = "Sức Mạnh Nhảy",
    Min = 50,
    Max = 200,
    Default = 100,
    Callback = function(value)
        local player = game.Players.LocalPlayer
        player.Character.Humanoid.JumpPower = value -- Điều chỉnh sức mạnh nhảy theo giá trị thanh trượt
        print("Sức mạnh nhảy đã được điều chỉnh thành: " .. value)
    end
})

-- Tạo Section Xuyên Tường
local WallSection = FunctionTab:Section({
    Title = "Xuyên Tường",
    Content = "Cho phép xuyên tường."
})

WallSection:Button({
    Title = "Bật Xuyên Tường",
    Content = "Xuyên tường trong 5 giây.",
    Callback = function()
        local player = game.Players.LocalPlayer
        player.Character.HumanoidRootPart.CanCollide = false -- Bỏ qua va chạm
        wait(5) -- Thời gian xuyên tường
        player.Character.HumanoidRootPart.CanCollide = true -- Khôi phục va chạm
        print("Xuyên tường thành công!")
    end
})

-- Tạo Section ESP Người Chơi
local EspSection = FunctionTab:Section({
    Title = "ESP Người Chơi",
    Content = "Hiện thị vị trí của người chơi."
})

local function createESPBox(player)
    local box = Instance.new("BoxHandleAdornment")
    box.Size = player.Character:GetBoundingBox().Size
    box.Adornee = player.Character:WaitForChild("HumanoidRootPart")
    box.Color3 = Color3.fromRGB(0, 255, 0) -- Màu viền
    box.AlwaysOnTop = true
    box.ZIndex = 10
    box.Parent = player.Character
end

local function createESPLine(player)
    local line = Instance.new("Line")
    line.Color = Color3.fromRGB(255, 0, 0) -- Màu đường kẻ
    line.Adornee = player.Character:WaitForChild("HumanoidRootPart")
    line.Parent = player.Character
end

EspSection:Button({
    Title = "Bật ESP Box",
    Content = "Hiện thị hộp bao quanh người chơi.",
    Callback = function()
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer and player.Character then
                createESPBox(player)
            end
        end
        print("ESP Box đã được bật cho tất cả người chơi!")
    end
})

EspSection:Button({
    Title = "Bật ESP Line",
    Content = "Hiện thị đường kẻ tới người chơi.",
    Callback = function()
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer and player.Character then
                createESPLine(player)
            end
        end
        print("ESP Line đã được bật cho tất cả người chơi!")
    end
})

-- Thêm chức năng cập nhật ESP khi có người chơi mới
game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        createESPBox(player)
        createESPLine(player)
    end)
end)

-- Tạo nút Đóng/Mở Menu
DeltaGui:MakeButton({
    Title = "Đóng/Mở Menu",
    Content = "Nhấn để ẩn hoặc hiện menu.",
    Callback = function()
        if DeltaGui.Visible then
            DeltaGui:Hide() -- Ẩn menu
            print("Menu đã bị ẩn.")
        else
            DeltaGui:Show() -- Hiện menu
            print("Menu đã hiện.")
        end
    end
})

-- Tạo nút Đóng/Mở Bảng Điều Khiển
DeltaGui:MakeButton({
    Title = "Đóng/Mở Bảng Điều Khiển",
    Content = "Nhấn để ẩn hoặc hiện bảng điều khiển.",
    Callback = function()
        if FunctionTab.Visible then
            FunctionTab:Hide() -- Ẩn bảng điều khiển
            print("Bảng điều khiển đã bị ẩn.")
        else
            FunctionTab:Show() -- Hiện bảng điều khiển
            print("Bảng điều khiển đã hiện.")
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

-- Toggle
local Toggle = Section:Toggle({
    Title = "Bật/Tắt Tùy Chọn",
    Content = "Bật hoặc tắt tùy chọn này.",
    Default = false,
    Callback = function(value)
        print("Trạng thái Toggle:", value)
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
