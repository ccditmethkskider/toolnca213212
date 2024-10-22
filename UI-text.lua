local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhNghia2k11/Ui-Library/main/Source"))()
local Windows = Library:MakeWindow({
	Name = "TEXT MENU SCRIPT HUB", 
	Description = "By | Duc Designer", 
	LogoInfo = "rbxassetid://83708317828288",
	NameInfo = "Owner Info",
    NamePlayers = "# Admin",
    InfoColor = Color3.fromRGB(255, 38, 42),
    LogoPlayers = "rbxassetid://83708317828288"
	InfoDesc = "Name : Nguyễn Minh Đức | Dev Roblox | https://zalo.me/g/cxtjdz698"
})

Library:MakeNotify({
    Title = "TEXT MENU SCRIPT HUB",
    Content = "Notification",
    Description = "Text đang khởi chạy !",
    Time = 5 
})
local Tab = Windows:MakeTab({Name = "Tab Text"})
local SectionTab = Tab1:MakeSection({
    Title = "Tab",
    Content = "???"
})
SectionTab:Section("Cocaiconcac")
SectionTab:MakeParagraph({
    Title = "Paragraph",
    Description = "This Is Paragraph"
})
SectionTab:MakeButton({
    Name = "Button",
    Description = "Is This Button",
    Callback = function()
        print("Hello World")
    end
})
local Toggle = SectionTab:MakeToggle({
    Name = "Toggle",
    Description = "Is This Toggle",
    Default = false,
    Callback = function(Value)
        print(Value)
    end
})
Tab:MakeSlider({
    Name = "Slider",
    Max = 300,
    Min = 50,
    Default = 100,
    Callback = function(Value)
        print(Value)
    end
})
Tab:MakeTextBox({
    Name = "Textbox",
    Default = "...",
    Callback = function(Value)
        print(Value)
    end
})