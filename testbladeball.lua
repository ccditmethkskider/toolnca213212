local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Tạo cửa sổ
local Window = OrionLib:MakeWindow({
    Name = "jano do dominika", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "OrionTest"
})

-- Tạo Tab 1
local Tab1 = Window:MakeTab({
    Name = "Parry Tools",
    Icon = "rbxassetid://4483345998", 
    PremiumOnly = false
})

-- Biến điều khiển chức năng
_G.FastParry = false
_G.AutoParry = false

-- Chức năng "Spam Parry cực nhanh"
Tab1:AddToggle({
    Name = "Spam Parry cực nhanh",
    Default = false,
    Callback = function(Value)
        _G.FastParry = Value
        if _G.FastParry then
            -- Bắt đầu spam parry
            spawn(function()
                while _G.FastParry do
                    task.wait(0.1) -- Điều chỉnh tốc độ spam
                    -- Gọi hàm để thực hiện parry
                    local args = {
                        [1] = "Parry" -- Giả sử "Parry" là sự kiện trong game
                    }
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                end
            end)
        end
    end
})

-- Chức năng "Tự động Parry"
Tab1:AddToggle({
    Name = "Tự động Parry",
    Default = false,
    Callback = function(Value)
        _G.AutoParry = Value
        if _G.AutoParry then
            -- Bắt đầu tự động parry khi phát hiện bóng
            spawn(function()
                while _G.AutoParry do
                    task.wait(0.1)
                    local ball = game.Workspace:FindFirstChild("Ball") -- Giả sử bóng có tên là "Ball"
                    if ball then
                        local distance = (ball.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if distance < 20 then -- Nếu bóng gần trong khoảng 20 studs
                            -- Gọi hàm để thực hiện parry
                            local args = {
                                [1] = "Parry"
                            }
                            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                        end
                    end
                end
            end)
        end
    end
})

-- Hiển thị thông báo hoàn tất
OrionLib:MakeNotification({
    Name = "Parry Tools",
    Content = "Các chức năng parry đã được thêm vào!",
    Image = "rbxassetid://4483345998",
    Time = 5
})

OrionLib:Init()
