local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhNghia2k11/Ui-Library/main/Source"))()
local Windows = Library:MakeWindow({
    Name = "FREE FIRE Hub", 
    Description = "By Duc Designer", 
    LogoInfo = "rbxassetid://18448428761",
    NameInfo = "Owner Info",
    NamePlayers = "Duc Designer",
    InfoColor = Color3.fromRGB(255, 38, 42),
    LogoPlayers = "rbxassetid://18448428761",
    InfoDesc = "Tất cả chúng mày chỉ là con kiến đối với tao"
})

-- Thông báo
Library:MakeNotify({
    Title = "FREE FIRE Hub",
    Content = "Notification",
    Description = "Nah I'd Win",
    Time = 5 
})

-- Tạo Tab Tăng Tốc
local SpeedTab = Windows:MakeTab({Name = "Tăng Tốc"})
SpeedTab:MakeButton({
    Name = "Bật Tăng Tốc",
    Description = "Tăng tốc độ di chuyển",
    Callback = function()
        local player = game.Players.LocalPlayer
        player.Character.Humanoid.WalkSpeed = 100 -- Điều chỉnh tốc độ theo ý bạn
        print("Tăng tốc độ thành công!")
    end
})

-- Tạo Tab Bay Cao
local FlyTab = Windows:MakeTab({Name = "Bay Cao"})
FlyTab:MakeButton({
    Name = "Bật Bay",
    Description = "Cho phép bay cao",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character

        if character and character:FindFirstChild("Humanoid") then
            local fly = Instance.new("BodyVelocity")
            fly.Velocity = Vector3.new(0, 50, 0) -- Điều chỉnh độ cao
            fly.MaxForce = Vector3.new(0, 1000, 0)
            fly.Parent = character.HumanoidRootPart

            wait(5) -- Thời gian bay
            fly:Destroy() -- Hủy BodyVelocity sau khi bay
            print("Bay cao thành công!")
        end
    end
})

-- Tạo Tab Xuyên Tường
local WallTab = Windows:MakeTab({Name = "Xuyên Tường"})
WallTab:MakeButton({
    Name = "Bật Xuyên Tường",
    Description = "Cho phép xuyên tường",
    Callback = function()
        local player = game.Players.LocalPlayer
        player.Character.HumanoidRootPart.CanCollide = false -- Bỏ qua va chạm
        wait(5) -- Thời gian xuyên tường
        player.Character.HumanoidRootPart.CanCollide = true -- Khôi phục va chạm
        print("Xuyên tường thành công!")
    end
})

-- Thêm các tab khác nếu cần
