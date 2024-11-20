local DeltaLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/NguyenNhatDino/Delta/main/src/main.lua"))()

local DeltaGui = DeltaLib:Start({
    ["Name"] = "Bản thử nghiệm",
    ["Description"] = "  By Nguyen Minh Duc",
    ["Info Color"] = Color3.fromRGB(5, 59, 113),
    ["Logo Info"] = "rbxassetid://15292705867",
    ["Avatar Dev"] = "rbxassetid://15292705867",
    ["Name Info"] = "Nguyen Duc Info",
    ["Name Dev"] = "Nguyen Duc",
    ["Info Description"] = "zalo.me/0765520260",
    ["Tab Width"] = 135,
    ["Color"] = Color3.fromRGB(127, 146, 242),
    ["CloseCallBack"] = function() end
})

local Notify = DeltaLib:Notify({
    ["Title"] = "Nguyen Minh Duc",
    ["Description"] = "Chào con đĩ chó",
    ["Color"] = Color3.fromRGB(127, 146, 242),
    ["Content"] = "Mày nên mua bản này đi ngon lắm đó",
    ["Time"] = 1,
    ["Delay"] = 10
})

-- Tạo tab Info Hub
local InfoTab = DeltaGui:MakeTab("Info Hub")

-- Thêm liên kết cộng đồng
local infoSection = InfoTab:Section({
    ["Title"] = "Thông tin của Hub",
    ["Content"] = "Nhấn để xem thông tin."
})

infoSection:Button({
    ["Title"] = "Zalo nhóm",
    ["Content"] = "Nhấn để sao chép liên kết nhóm.",
    ["Callback"] = function()
        setclipboard("https://zalo.me/g/kmhete440") -- Thay thế bằng liên kết Discord thực tế của bạn
        print("Đã sao chép liên kết nhóm vào clipboard.")
    end
})

infoSection:Button({
    ["Title"] = "Shop bán acc của admin",
    ["Content"] = "Nhấn để sao chép liên kết Website.",
    ["Callback"] = function()
        setclipboard("https://ducdesigner.site") -- Thay thế bằng liên kết Website thực tế của bạn
        print("Đã sao chép liên kết Website vào clipboard.")
    end
})

infoSection:Button({
    ["Title"] = "Zalo admin",
    ["Content"] = "Nhấn để sao chép liên kết zalo admin.",
    ["Callback"] = function()
        setclipboard("https://zalo.me/0765520260") -- Thay thế bằng liên kết Github thực tế của bạn
        print("Đã sao chép liên kết vào clipboard.")
    end
})

-- Tạo tab Setting
local SettingTab = DeltaGui:MakeTab("Setting")

local settingSection = SettingTab:Section({
    ["Title"] = "Setting",
    ["Content"] = "Cài đặt tốc đánh."
})

-- Mục Super FastAttack
local fastAttackToggle = settingSection:Toggle({
    ["Title"] = "Super FastAttack",
    ["Content"] = "Nó quá bá xin hãy cân nhắc",
    ["Default"] = false,
    ["Callback"] = function(value)
        if value then
            print("Đang bật Super FastAttack...")
            pcall(function()
                loadstring(game:HttpGet("https://pastebin.com/raw/YCFGUmFH"))()
            end)
        else
            print("Super FastAttack đã tắt.")
        end
    end
})

-- Mục Super FastAttack + Click
local fastAttackClickToggle = settingSection:Toggle({
    ["Title"] = "Super FastAttack + Click",
    ["Content"] = "Bật lên là 1 Hit die quái",
    ["Default"] = false,
    ["Callback"] = function(value)
        if value then
            print("Đang bật Super FastAttack + Click...")
            pcall(function()
                loadstring(game:HttpGet("https://pastebin.com/raw/0WyG0Sf0"))()
            end)
        else
            print("Super FastAttack + Click đã tắt.")
        end
    end
})

-- Tạo tab Kaitun
local MainTab = DeltaGui:MakeTab("Kaitun")

-- Mục Kaitun
local kaitunSection = MainTab:Section({
    ["Title"] = "Kaitun",
    ["Content"] = "Các chức năng Kaitun"
})

local kaitunToggle = kaitunSection:Toggle({
    ["Title"] = "Kaitun BETA",
    ["Content"] = "Kích hoạt để chạy chức năng Kaitun BETA",
    ["Default"] = false,
    ["Callback"] = function(value)
        if value then
            print("Đang chạy Kaitun...")
            pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Duc18-code/ducsharelinkhub/refs/heads/main/chucnangkaitun.lua"))()
            end)
        else
            print("Kaitun đã tắt.")
        end
    end
})

-- Mục Kaitun Luxury
local kaitunLuxuryToggle = kaitunSection:Toggle({
    ["Title"] = "Kaitun Luxury",
    ["Content"] = "Kích hoạt để chạy chức năng Kaitun Luxury.",
    ["Default"] = false,
    ["Callback"] = function(value)
        if value then
            print("Đang chạy Kaitun Luxury...")
            pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Duc18-code/ducsharelinkhub/refs/heads/main/luxury%20%C4%91%C3%A3%20fix.lua"))()
            end)
        else
            print("Kaitun Luxury đã tắt.")
        end
    end
})

-- Tạo tab Chest
local ChestTab = DeltaGui:MakeTab("Chest")

local chestSection = ChestTab:Section({
    ["Title"] = "Chest",
    ["Content"] = "Các chức năng Chest"
})

-- Mục Chest V2
local chestV2Toggle = chestSection:Toggle({
    ["Title"] = "Chest V2",
    ["Content"] = "Kích hoạt để chạy chức năng Chest V2.",
    ["Default"] = false,
    ["Callback"] = function(value)
        if value then
            print("Đang chạy Chest V2...")
            pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Duc18-code/ducsharelinkhub/refs/heads/main/chestv2.lua"))()
            end)
        else
            print("Chest V2 đã tắt.")
        end
    end
})

-- Mục Chest Safe
local chestSafeToggle = chestSection:Toggle({
    ["Title"] = "Chest Safe",
    ["Content"] = "Kích hoạt để chạy chức năng Chest Safe.",
    ["Default"] = false,
    ["Callback"] = function(value)
        if value then
            print("Đang chạy Chest Safe...")
            pcall(function()
                loadstring(game:HttpGet("https://pastefy.app/kL0f0Uuy/raw"))()
            end)
        else
            print("Chest Safe đã tắt.")
        end
    end
})

-- Tạo tab Find Fruit
local FindFruitTab = DeltaGui:MakeTab("Find Fruit")

local findFruitSection = FindFruitTab:Section({
    ["Title"] = "Find Fruit",
    ["Content"] = "Tìm kiếm trái cây BETA"
})

-- Mục Find Fruit V1
local findFruitToggle = findFruitSection:Toggle({
    ["Title"] = "Find Fruit V1",
    ["Content"] = "Có trái thì nhặt không có thì đứng im",
    ["Default"] = false,
    ["Callback"] = function(value)
        if value then
            print("Đang bật Find Fruit V1...")
            pcall(function()
                loadstring(game:HttpGet('https://pastebin.com/raw/RHCj6rmd'))()
            end)
        else
            print("Find Fruit V1 đã tắt.")
        end
    end
})

-- Tạo tab Server
local ServerTab = DeltaGui:MakeTab("Server")

local serverSection = ServerTab:Section({
    ["Title"] = "Server",
    ["Content"] = "Các chức năng liên quan đến server."
})

-- Mục Server Hop (Cập nhật để có nút bật/tắt giống Anti AFK)
local serverHopToggle = serverSection:Toggle({
    ["Title"] = "Tham gia lại Server",
    ["Content"] = "Bật tắt chức năng tham gia lại server.",
    ["Default"] = false,
    ["Callback"] = function(value)
        if value then
            print("Đang thực hiện tham gia lại...")
            pcall(function()
                game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
            end)
        else
            print("Chức năng tham gia lại đã tắt.")
        end
    end
})

-- Mục Anti AFK
local antiAfkToggle = serverSection:Toggle({
    ["Title"] = "Anti AFK",
    ["Content"] = "Bật tắt chức năng Anti AFK.",
    ["Default"] = false,
    ["Callback"] = function(value)
        if value then
            print("Đang bật Anti AFK...")
            pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringypVvhJBq4QNz", true))()
            end)
        else
            print("Anti AFK đã tắt.")
        end
    end
})
