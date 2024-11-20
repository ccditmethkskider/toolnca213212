local DeltaLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/NguyenNhatDino/Delta/main/src/main.lua"))()

local DeltaGui = DeltaLib:Start({
    ["Name"] = "Tổng hợp",
    ["Description"] = "By Nguyen Minh Duc",
    ["Info Color"] = Color3.fromRGB(5, 59, 113),
    ["Logo Info"] = "rbxassetid://15292705867",
    ["Avatar Dev"] = "rbxassetid://15292705867",
    ["Name Info"] = "Nguyen Duc Info",
    ["Name Dev"] = "Nguyen Duc",
    ["Info Description"] = "github.com/",
    ["Tab Width"] = 135,
    ["Color"] = Color3.fromRGB(127, 146, 242),
    ["CloseCallBack"] = function() end
})

local Notify = DeltaLib:Notify({
    ["Title"] = "Kaitun Beta",
    ["Description"] = "Hello World",
    ["Color"] = Color3.fromRGB(127, 146, 242),
    ["Content"] = "Delta Library",
    ["Time"] = 1,
    ["Delay"] = 10
})

local MainTab = DeltaGui:MakeTab("Main")

local Section = MainTab:Section({
    ["Title"] = "Nhặt chest V2",
    ["Content"] = "Nhặt rương v2 cực vip"
})

-- Thêm chức năng Kaitun
local kaitunSection = MainTab:Section({
    ["Title"] = "Kaitun",
    ["Content"] = "Chức năng Kaitun"
})

local kaitunToggle = kaitunSection:Toggle({
    ["Title"] = "Kaitun",
    ["Content"] = "Kích hoạt để chạy chức năng Kaitun.",
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

-- Các chức năng khác
local Button = Section:Button({
    ["Title"] = "My Button Title",
    ["Content"] = "Click the button to execute the callback.",
    ["Callback"] = function()
        print("Button clicked!")
    end
})

local TextInput = Section:TextInput({
    ["Title"] = "My TextInput Title",
    ["Content"] = "Enter your text here.",
    ["Place Holder Text"] = "Placeholder...",
    ["Clear Text On Focus"] = true,
    ["Callback"] = function(text)
        print("User entered:", text)
    end
})

TextInput:Set("New Text Content")

local Toggle = Section:Toggle({
    ["Title"] = "My Toggle Title",
    ["Content"] = "Toggle the option on or off.",
    ["Default"] = false,
    ["Callback"] = function(value)
        print("Toggle state:", value)
    end
})

Toggle:Set(true)
print(Toggle.Value)

local Slider = Section:Slider({
    ["Title"] = "My Slider Title",
    ["Content"] = "Adjust the value using the slider.",
    ["Min"] = 0,
    ["Max"] = 100,
    ["Increment"] = 1,
    ["Default"] = 50,
    ["Callback"] = function(value)
        print("Slider value:", value)
    end
})

Slider:Set(75)
print(Slider.Value)

local Dropdown = Section:Dropdown({
    ["Title"] = "My Dropdown Title",
    ["Multi"] = false,
    ["Options"] = {"Option1", "Option2", "Option3"},
    ["Default"] = {"Option1"},
    ["Place Holder Text"] = "Select an option",
    ["Callback"] = function(selected)
        print("Selected option:", selected)
    end
})

Dropdown:Clear()
Dropdown:Add("New Option")
Dropdown:Set({"Option2"})
Dropdown:Refresh({"Option1", "Option2"}, {"Option1"})
print(unpack(Dropdown.Value))
print(unpack(Dropdown.Options))

local MultiDropdown = Section:Dropdown({
    ["Title"] = "My MultiDropdown Title",
    ["Multi"] = true,
    ["Options"] = {"Option1", "Option2", "Option3"},
    ["Default"] = {"Option1", "Option3"},
    ["Place Holder Text"] = "Select options",
    ["Callback"] = function(selected)
        print("Selected options:", selected)
    end
})

MultiDropdown:Clear()
MultiDropdown:Add("New Option")
MultiDropdown:Set({"Option1", "Option2"})
MultiDropdown:Refresh({"Option1", "Option2"}, {"Option1", "Option2"})
print(unpack(MultiDropdown.Value))
print(unpack(MultiDropdown.Options))
