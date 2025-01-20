Duc Design 🔥
ducdesigner
Trực tuyến

dead server — 18/12/2024 6:49 CH
Blox Fruit (main):
getgenv().Team = "Marines"
getgenv().Hide_Menu = false
getgenv().Auto_Execute = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/main.lua"))()
 
dead server — 24/12/2024 8:55 CH
Blox Fruit (kaitun):
-- Max level, godhuman, cdk, sgt
script_key = "" -- premium only, u can leave it blank if ur not
getgenv().Shutdown = false -- Turn on if u are farming bulk accounts
getgenv().Configs = {
    ["Team"] = "Marines",
    ["Gun Farm"] = false, -- Fast farm level, but farming melee is slow
    ["FPS Boost"] = {
        ["Enable"] = false,
        ["FPS Cap"] = 30,
    },
    ["Farm Boss Drops"] = {
        ["Enable"] = false,
        ["When x2 Exp Expired"] = false
    },
    ["Hop"] = {
        ["Enable"] = true,
        ["Hop Find Tushita"] = true
    },
    ["Auto Collect Berry"] = true,
    ["Auto Evo Race"] = true,
    ["Awaken Fruit"] = true,
    ["Rainbow Haki"] = true,
    ["Hop Player Near"] = true,
    ["Skull Guitar"] = true,
    ["Find Fruit"] = false, -- Will find 1m+ fruit to unlock swan door to access third sea
    ["Cursed Dual Katana"] = true,
    ["Switch Melee"] = true,
    ["Eat Fruit"] = "", -- leave blank for none, put the fruit name like this example: Smoke Fruit, T-Rex Fruit, ...
    ["Snipe Fruit"] = "", -- leave blank for none, put the fruit name like this example: Smoke Fruit, T-Rex Fruit, ...
    ["Lock Fragment"] = 0,
    ["Buy Stuffs"] = true -- buso, geppo, soru, ken haki, ...
}
repeat task.wait() pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/kaitun.lua"))() end) until getgenv().Check_Execute
 
᲼1 — 10/01/2025 4:24 CH
check config godhuman ⁠không xác định
᲼1 — 10/01/2025 6:12 CH
⁠faq-kaitun đừng add Fps boost bất cứ file ngoài 
᲼1 — 11/01/2025 8:00 CH
⁠faq-kaitun⁠ about farm bone 
Seller — 13/01/2025 11:29 CH
Blox Fruit (auto bounty):
getgenv().Configs = {
    ["Team"] = "Pirates", -- Pirates/Marines
    ["Speed Tween"] = 300, -- Highly recommend 300 speed is good enough to anti security kick. maximum you can use is 350
    ["Auto turn on race v3"] = true,
    ["Auto turn on race v4"] = true,
    ["Click Time"] = 0.2,
Mở rộng
message.txt
5 KB
Seller — 13/01/2025 11:45 CH
bruh this is the trash config for me to test the script
so please remember to change it or ⁠shared-config if someone share it idk good bye :D 
﻿
getgenv().Configs = {
    ["Team"] = "Pirates", -- Pirates/Marines
    ["Speed Tween"] = 300, -- Highly recommend 300 speed is good enough to anti security kick. maximum you can use is 350
    ["Auto turn on race v3"] = true,
    ["Auto turn on race v4"] = true,
    ["Click Time"] = 0.2,
    ["White Screen"] = false, -- false / true
    ["Chat"] = {
        ["Enable"] = true,
        ["Message"] = {"gg", "np", "hi", "hehe"}, -- Input your message here
    },
    ["Run When Low Health"] = {
        ["Enable"] = false,
        ["Health"] = 3500,
        ["Come back"] = true
    },
    ["Region"] = "United States", -- Singapore, United States, Germany, France, India, ??? ... or "All"
    ["Weapons"] = {
        ["Melee"] = {
            ["Enable"] = true,
            ["Delay"] = 1.75,
            ["Order"] = 3,
            ["Skills"] = {
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0,
                    ["Order"] = 2,
                    ["Time to next skill"] = 0
                },
                ["X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0,
                    ["Order"] = 1,
                    ["Time to next skill"] = 0
                },
                ["C"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0,
                    ["Order"] = 3,
                    ["Time to next skill"] = 0
                }
            }
        },
        ["Blox Fruit"] = {
            ["Enable"] = true,
            ["Delay"] = 0.2,
            ["Order"] = 4,
            ["Skills"] = {
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0,
                    ["Order"] = 2,
                    ["Time to next skill"] = 0
                },
                ["X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0,
                    ["Order"] = 1,
                    ["Time to next skill"] = 0
                },
                ["C"] = {
                    ["Enable"] = false,
                    ["HoldTime"] = 0,
                    ["Order"] = 0,
                    ["Time to next skill"] = 0
                },
                ["V"] = {
                    ["Enable"] = false,
                    ["HoldTime"] = 0,
                    ["Order"] = 0,
                    ["Time to next skill"] = 0
                },
                ["F"] = {
                    ["Enable"] = false,
                    ["HoldTime"] = 0,
                    ["Order"] = 0,
                    ["Time to next skill"] = 0
                }
            }
        },
        ["Sword"] = {
            ["Enable"] = false,
            ["Delay"] = 0.75,
            ["Order"] = 1,
            ["Skills"] = {
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0,
                    ["Order"] = 1,
                    ["Time to next skill"] = 0
                },
                ["X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0,
                    ["Order"] = 2,
                    ["Time to next skill"] = 0
                }
            }
        },
        ["Gun"] = {
            ["Enable"] = false,
            ["Delay"] = 1.5,
            ["Order"] = 2,
            ["Skills"] = {
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0,
                    ["Order"] = 2,
                    ["Time to next skill"] = 0
                },
                ["X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0,
                    ["Order"] = 1,
                    ["Time to next skill"] = 0
                }
            }
        }
    },
    ["Theme"] = {
        ["Enable"] = true,
        ["Hide Theme"] = true,
        ["Name"] = "Gojo", -- Gojo
        ["Custom Theme"] = {
            ["Enable"] = false, -- enable theme first
            ["Text Color"] = Color3.fromRGB(231, 85, 88),
            ["Character Position"] = UDim2.new(0.563000023, 0, -0.174999997, 0),
            ["Character Size"] = UDim2.new(0.3, 0, 1.4, 0)
        }
    },
    ["Webhook"] = {
        ["Enable"] = false,
        ["Url"] = "",
        ["Image"] = "https://media.discordapp.net/attachments/1162947702615711765/1229739840661094451/background.png?ex=67576eb9&is=67561d39&hm=da94e1b066b7a974e1577fe4fb355ce2907de8acf56aa4c467d7023a59d1d927&=&format=webp&quality=lossless&width=692&height=395"
    }
}

repeat task.wait(1) pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/bounty.lua"))() end) until getgenv().Execution
message.txt
5 KB
