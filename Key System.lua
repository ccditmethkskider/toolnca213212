--[[
 /$$$$$$$                      /$$                 /$$$$$$$$                               
| $$__  $$                    |__/                |__  $$__/                               
| $$  \ $$  /$$$$$$   /$$$$$$$ /$$  /$$$$$$          | $$  /$$$$$$   /$$$$$$  /$$$$$$/$$$$ 
| $$$$$$$/ /$$__  $$ /$$_____/| $$ /$$__  $$         | $$ /$$__  $$ |____  $$| $$_  $$_  $$
| $$__  $$| $$  \ $$|  $$$$$$ | $$| $$$$$$$$         | $$| $$$$$$$$  /$$$$$$$| $$ \ $$ \ $$
| $$  \ $$| $$  | $$ \____  $$| $$| $$_____/         | $$| $$_____/ /$$__  $$| $$ | $$ | $$
| $$  | $$|  $$$$$$/ /$$$$$$$/| $$|  $$$$$$$         | $$|  $$$$$$$|  $$$$$$$| $$ | $$ | $$
|__/  |__/ \______/ |_______/ |__/ \_______/         |__/ \_______/ \_______/|__/ |__/ |__/     

[+] Rosie Team Cảm Ơn Bạn Đã Tin Tưởng Và Sử Dụng Dịch Vụ Của Chúng Tôi, Nếu Thấy Hữu Ít Hãy Chia Sẻ Cho Bạn Bè Của Bạn !!
[+] Không Được Share Hay Crack Mã Nguồn Này Cho Ai! Nếu Không Bạn Sẽ Bị Ban IP Khỏi Website Vĩnh Viễn!
[+] Chúng Tôi Không Nhận Hỗ Trợ Những Mã Nguồn Miễn Phí, Xin Đừng Bảo Vì Sao. Tạo Ticket Hỗ Trợ Của Website Tại: https://rosieteam.net/dash/ticket
[+] Nếu Bạn Edit Source Và Up Web Share Nhớ Obfuscate Script. Nếu Bạn Có Tiền Thì Sử Dụng: Lura.Ph, Luarmor.Net | Nếu Bạn Không Có Tiền Thì Dùng: luaobfuscate.com, MoonSec, 77Fuscate,... Nhé!
]]
local ScreenGui = Instance.new("ScreenGui")
local Key = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Login = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local keyBox = Instance.new("TextBox")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local TextLabel = Instance.new("TextLabel")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local Buttons = Instance.new("Frame")
local getKey = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local verifyKey = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local joinDiscord = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")
local logo = Instance.new("ImageButton")
local UIAspectRatioConstraint_10 = Instance.new("UIAspectRatioConstraint")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false
ScreenGui.DisplayOrder = 100

Key.Name = "Key"
Key.Parent = ScreenGui
Key.BackgroundColor3 = Color3.fromRGB(4, 26, 28)
Key.BackgroundTransparency = 0.160
Key.Position = UDim2.new(0.133432746, 0, 0.340055406, 0)
Key.Size = UDim2.new(0.732406616, 0, 0.34979403, 0)

UICorner.Parent = Key

Login.Name = "Login"
Login.Parent = Key
Login.BackgroundColor3 = Color3.fromRGB(4, 26, 28)
Login.BackgroundTransparency = 1.000
Login.Position = UDim2.new(3.12819353e-08, 0, -5.83184629e-08, 0)
Login.Size = UDim2.new(1.00000012, 0, 1, 0)

UICorner_2.Parent = Login

Frame.Parent = Login
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.700
Frame.Position = UDim2.new(0.264367878, 0, 0.0428570732, 0)
Frame.Size = UDim2.new(0.722222269, 0, 0.528571367, 0)

UICorner_3.Parent = Frame

keyBox.Name = "keyBox"
keyBox.Parent = Frame
keyBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
keyBox.BackgroundTransparency = 1.000
keyBox.ClipsDescendants = true
keyBox.Position = UDim2.new(0.0184762254, 0, 0.327122301, 0)
keyBox.Size = UDim2.new(0.982183516, 0, 0.686008453, 0)
keyBox.Font = Enum.Font.Arial
keyBox.PlaceholderText = "Example: DucV2_XXxxxxxxxxxxxxxx"
keyBox.Text = ""
keyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
keyBox.TextSize = 14.000
keyBox.TextXAlignment = Enum.TextXAlignment.Left
keyBox.TextYAlignment = Enum.TextYAlignment.Top

UIAspectRatioConstraint.Parent = keyBox
UIAspectRatioConstraint.AspectRatio = 7.294

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.ClipsDescendants = true
TextLabel.Position = UDim2.new(0.0184762254, 0, 0.0850017071, 0)
TextLabel.Size = UDim2.new(0.982183516, 0, 0.928129196, 0)
TextLabel.Font = Enum.Font.Arial
TextLabel.Text = "Enter Or Paste Key Here:"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.TextYAlignment = Enum.TextYAlignment.Top

UIAspectRatioConstraint_2.Parent = TextLabel
UIAspectRatioConstraint_2.AspectRatio = 5.391

UIAspectRatioConstraint_3.Parent = Frame
UIAspectRatioConstraint_3.AspectRatio = 5.095

Buttons.Name = "Buttons"
Buttons.Parent = Login
Buttons.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Buttons.BackgroundTransparency = 1.000
Buttons.Position = UDim2.new(0.264367878, 0, 0.614285648, 0)
Buttons.Size = UDim2.new(0.722222269, 0, 0.335714251, 0)

getKey.Name = "getKey"
getKey.Parent = Buttons
getKey.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
getKey.BackgroundTransparency = 0.700
getKey.Position = UDim2.new(0.00527485646, 0, 0.0200845189, 0)
getKey.Size = UDim2.new(0.316833377, 0, 0.995384812, 0)
getKey.Font = Enum.Font.Arial
getKey.Text = "Get Key"
getKey.TextColor3 = Color3.fromRGB(255, 255, 255)
getKey.TextSize = 20.000

UICorner_4.Parent = getKey

UIAspectRatioConstraint_4.Parent = getKey
UIAspectRatioConstraint_4.AspectRatio = 2.553

verifyKey.Name = "verifyKey"
verifyKey.Parent = Buttons
verifyKey.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
verifyKey.BackgroundTransparency = 0.700
verifyKey.Position = UDim2.new(0.340590149, 0, 0.0200845189, 0)
verifyKey.Size = UDim2.new(0.316833377, 0, 0.995384812, 0)
verifyKey.Font = Enum.Font.Arial
verifyKey.Text = "Verify Key"
verifyKey.TextColor3 = Color3.fromRGB(255, 255, 255)
verifyKey.TextSize = 20.000

UICorner_5.Parent = verifyKey

UIAspectRatioConstraint_5.Parent = verifyKey
UIAspectRatioConstraint_5.AspectRatio = 2.553

joinDiscord.Name = "joinDiscord"
joinDiscord.Parent = Buttons
joinDiscord.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
joinDiscord.BackgroundTransparency = 0.700
joinDiscord.Position = UDim2.new(0.68118608, 0, 0.0200845189, 0)
joinDiscord.Size = UDim2.new(0.316833377, 0, 0.995384812, 0)
joinDiscord.Font = Enum.Font.Arial
joinDiscord.Text = "Join Discord"
joinDiscord.TextColor3 = Color3.fromRGB(255, 255, 255)
joinDiscord.TextSize = 20.000

UICorner_6.Parent = joinDiscord

UIAspectRatioConstraint_6.Parent = joinDiscord
UIAspectRatioConstraint_6.AspectRatio = 2.553

UIAspectRatioConstraint_7.Parent = Buttons
UIAspectRatioConstraint_7.AspectRatio = 8.021

UIAspectRatioConstraint_8.Parent = Login
UIAspectRatioConstraint_8.AspectRatio = 3.729

UIAspectRatioConstraint_9.Parent = Key
UIAspectRatioConstraint_9.AspectRatio = 3.729

logo.Name = "logo"
logo.Parent = Key
logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
logo.BackgroundTransparency = 1.000
logo.BorderSizePixel = 0
logo.Position = UDim2.new(0.0357252173, 0, 0.112734579, 0)
logo.Size = UDim2.new(0.195282057, 0, 0.684913754, 0)
logo.Image = "http://www.roblox.com/asset/?id=18794802606"

UIAspectRatioConstraint_10.Parent = logo

local SystemNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Duc18-code/ducsharelinkhub/main/System%20v2.lua"))();
local Notify = SystemNotif.Notify;

--// Get Key \\--
local AccountId = 35;
function GetLink()
    return string.format("https://gateway.platoboost.com/a/%i?id=%i", AccountId, game:GetService("Players").LocalPlayer.UserId);
end

--// Verify \\--
function Verify(key)
    local OnError = function() 
        Notify({
        Description = "Invalid Key!";
        Title = "Ducsharelink Hub Gateway";
        Duration = 5;
        });
        task.wait(0.5)
        Notify({
        Description = "Copied Key Link to Clipboard.";
        Title = "Ducsharelink Hub Gateway";
        Duration = 5;
        });
        setclipboard(GetLink())
    end;
    
    local OnInvalid = function() 
        Notify({
        Description = "Invalid Key!";
        Title = "Ducsharelink Hub Gateway";
        Duration = 5;
        });
        task.wait(0.5)
        Notify({
        Description = "Copied Key Link to Clipboard.";
        Title = "Ducsharelink Hub Gateway";
        Duration = 5;
        });
        setclipboard(GetLink())
    end;
    
    local e=clonefunction or function(f)return f end;local g,h,i,j,k,l,m,n,o,p=e(math.modf),e(math.random),e(pcall),e(select),e(string.char),e(string.format),e(string.rep),e(table.insert),e(table.remove),e(tostring)local q=request or syn.request;if q~=nil then q=e(q)end;local r="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"local s=""for t=1,16 do local u=h(#r)s=s..string.sub(r,u,u)end;local v=(function()local w={["/"]="/"}local x;local function y(...)local A={}for B=1,select("#",...)do A[select(B,...)]=true end;return A end;local C=y(" ","\t","\r","\n")local D=y(" ","\t","\r","\n","]","}",",")local E=y("\\","/",'"',"b","f","n","r","t","u")local F=y("true","false","null")local G={["true"]=true,["false"]=false,["null"]=nil}local function H(I,J,K,L)for B=J,#I do if K[I:sub(B,B)]~=L then return B end end;return#I+1 end;local function M(I,J,N)local O=1;local P=1;for B=1,J-1 do P=P+1;if I:sub(B,B)=="\n"then O=O+1;P=1 end end;error(string.format("%s at line %d col %d",N,O,P))end;local function Q(R)local S=math.floor;if R<=0x7f then return string.char(R)elseif R<=0x7ff then return string.char(S(R/64)+192,R%64+128)elseif R<=0xffff then return string.char(S(R/4096)+224,S(R%4096/64)+128,R%64+128)elseif R<=0x10ffff then return string.char(S(R/262144)+240,S(R%262144/4096)+128,S(R%4096/64)+128,R%64+128)end;error(string.format("invalid unicode codepoint '%x'",R))end;local function T(U)local V=tonumber(U:sub(1,4),16)local z=tonumber(U:sub(7,10),16)if z then return Q((V-0xd800)*0x400+z-0xdc00+0x10000)else return Q(V)end end;local function W(I,B)local A=""local X=B+1;local Y=X;while X<=#I do local Z=I:byte(X)if Z<32 then M(I,X,"control character in string")elseif Z==92 then A=A..I:sub(Y,X-1)X=X+1;local _=I:sub(X,X)if _=="u"then local a0=I:match("^[dD][89aAbB]%x%x\\u%x%x%x%x",X+1)or I:match("^%x%x%x%x",X+1)or M(I,X-1,"invalid unicode escape in string")A=A..T(a0)X=X+#a0 else if not E[_]then M(I,X-1,"invalid escape char '".._.."' in string")end;A=A..w[_]end;Y=X+1 elseif Z==34 then A=A..I:sub(Y,X-1)return A,X+1 end;X=X+1 end;M(I,B,"expected closing quote for string")end;local function a1(I,B)local Z=H(I,B,D)local U=I:sub(B,Z-1)local R=tonumber(U)if not R then M(I,B,"invalid number '"..U.."'")end;return R,Z end;local function a2(I,B)local Z=H(I,B,D)local a3=I:sub(B,Z-1)if not F[a3]then M(I,B,"invalid literal '"..a3 .."'")end;return G[a3],Z end;local function a4(I,B)local A={}local R=1;B=B+1;while 1 do local Z;B=H(I,B,C,true)if I:sub(B,B)=="]"then B=B+1;break end;Z,B=x(I,B)A[R]=Z;R=R+1;B=H(I,B,C,true)local a5=I:sub(B,B)B=B+1;if a5=="]"then break end;if a5~=","then M(I,B,"expected ']' or ','")end end;return A,B end;local function a6(I,B)local A={}B=B+1;while 1 do local a7,a8;B=H(I,B,C,true)if I:sub(B,B)=="}"then B=B+1;break end;if I:sub(B,B)~='"'then M(I,B,"expected string for key")end;a7,B=x(I,B)B=H(I,B,C,true)if I:sub(B,B)~=":"then M(I,B,"expected ':' after key")end;B=H(I,B+1,C,true)a8,B=x(I,B)A[a7]=a8;B=H(I,B,C,true)local a5=I:sub(B,B)B=B+1;if a5=="}"then break end;if a5~=","then M(I,B,"expected '}' or ','")end end;return A,B end;local a9={['"']=W,["0"]=a1,["1"]=a1,["2"]=a1,["3"]=a1,["4"]=a1,["5"]=a1,["6"]=a1,["7"]=a1,["8"]=a1,["9"]=a1,["-"]=a1,["t"]=a2,["f"]=a2,["n"]=a2,["["]=a4,["{"]=a6}x=function(I,J)local a5=I:sub(J,J)local S=a9[a5]if S then return S(I,J)end;M(I,J,"unexpected character '"..a5 .."'")end;function z(I)if type(I)~="string"then error("expected argument of type string, got "..type(I))end;local A,J=x(I,H(I,1,C,true))J=H(I,J,C,true)if J<=#I then M(I,J,"trailing garbage")end;return A end;return z end)()local aa=game:GetService("Players").LocalPlayer.UserId;local ab=q({Url="https://gateway.platoboost.com/api/v1/public/verify/"..p(AccountId).."?id="..p(aa).."&key="..p(key).."&blob="..tostring(s),Method="GET"})if ab.StatusCode==200 then local ac=v(ab.Body)if ac.valid==true then local ad,ae,af=ac.time:match("(%d+)-(%d+)-(%d+)")function f_a(ag)local ah={["0"]={false,false,false,false},["1"]={false,false,false,true},["2"]={false,false,true,false},["3"]={false,false,true,true},["4"]={false,true,false,false},["5"]={false,true,false,true},["6"]={false,true,true,false},["7"]={false,true,true,true},["8"]={true,false,false,false},["9"]={true,false,false,true},["A"]={true,false,true,false},["B"]={true,false,true,true},["C"]={true,true,false,false},["D"]={true,true,false,true},["E"]={true,true,true,false},["F"]={true,true,true,true},["a"]={true,false,true,false},["b"]={true,false,true,true},["c"]={true,true,false,false},["d"]={true,true,false,true},["e"]={true,true,true,false},["f"]={true,true,true,true}}local ai={}for aj in ag:gmatch('.')do local x=ah[aj]n(ai,1,x[1])n(ai,1,x[2])n(ai,1,x[3])n(ai,1,x[4])end;return ai end;function f_b(ak)local ai={}for H,S in pairs(ak)do ai[H]=S end;return ai end;function f_c(al,...)local w=f_b(al)local Y,x,am;for S=1,j('#',...)do x=j(S,...)Y=0;for F=1,#w do am=(w[F]and 1 or 0)+(x[F]and 1 or 0)+Y;if am==0 then w[F]=false;Y=0 elseif am==1 then w[F]=true;Y=0 elseif am==2 then w[F]=false;Y=1 else w[F]=true;Y=1 end end end;return w end;function f_d(al,...)local w=f_b(al)local x;for S=1,j('#',...)do x=j(S,...)for F=1,#w do w[F]=w[F]~=x[F]end end;return w end;function f_e(w,x)local y={false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false}for F=1,#w do if w[F]and x[F]then y[F]=true end end;return y end;function f_f(w,x)local y={false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false}for F=1,#w do if w[F]or x[F]then y[F]=true end end;return y end;function f_g(w,x,y)local A={false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false}for F=1,#w do if w[F]or x[F]or y[F]then A[F]=true end end;return A end;function f_h(w)local x={false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false}for F=1,#w do if not w[F]then x[F]=true end end;return x end;function f_i(an,w)local x=f_b(w)while an>0 do an=an-1;n(x,1,o(x))end;return x end;function f_j(w)local ao={["0000"]="0",["0001"]="1",["0010"]="2",["0011"]="3",["0100"]="4",["0101"]="5",["0110"]="6",["0111"]="7",["1000"]="8",["1001"]="9",["1010"]="a",["1011"]="b",["1100"]="c",["1101"]="d",["1110"]="e",["1111"]="f"}local ag=""local F=1;while F<#w do local ap=(w[F+3]and'1'or'0')..(w[F+2]and'1'or'0')..(w[F+1]and'1'or'0')..(w[F+0]and'1'or'0')ag=ao[ap]..ag;F=F+4 end;return ag end;local aq=f_a("67452301")local ar=f_a("efcdab89")local as=f_a("98badcfe")local at=f_a("c3d2e1f0")local au=f_a("10325476")local av=f_a("5A827999")local aw=f_a("6ED9EBA1")local ax=f_a("8F1BBCDC")local ay=f_a("CA62C1D6")function zst(az)local aA=aq;local aB=ar;local aC=as;local aD=at;local aE=au;local aF=#az*8;local aG=k(0x80)local aH=#az+1+8;local aI=aH%64;local aJ=""if aI~=0 then aJ=m("\0",64-aI)end;local aK,aL=g(aF/0x01000000)local aM,aN=g(0x01000000*aL/0x00010000)local aO,aP=g(0x00010000*aN/0x00000100)local aQ=0x00000100*aP;local aR="\0\0\0\0"..k(aK)..k(aM)..k(aO)..k(aQ)az=az..aG..aJ..aR;local aS=#az/64;local aT={}local aU,W,X,Y,Z,_,C,a5,aV;local aW=0;while aW<aS do aU=aW*64+1;aW=aW+1;for Q=0,15 do aT[Q]=f_a(l("%02x%02x%02x%02x",az:byte(aU,aU+3)))aU=aU+4 end;for Q=16,79 do aT[Q]=f_i(1,f_d(aT[Q-3],aT[Q-8],aT[Q-14],aT[Q-16]))end;W=aA;X=aB;Y=aC;Z=aD;_=aE;for Q=0,79 do if Q<=19 then C=f_f(f_e(X,Y),f_e(f_h(X),Z))a5=av elseif Q<=39 then C=f_d(X,Y,Z)a5=aw elseif Q<=59 then C=f_g(f_e(X,Y),f_e(X,Z),f_e(Y,Z))a5=ax else C=f_d(X,Y,Z)a5=ay end;aV=f_c(f_i(5,W),C,_,aT[Q],a5)_=Z;Z=Y;Y=f_i(30,X)X=W;W=aV end;aA=f_c(aA,W)aB=f_c(aB,X)aC=f_c(aC,Y)aD=f_c(aD,Z)aE=f_c(aE,_)end;return f_j(aA)..f_j(aB)..f_j(aC)..f_j(aD)..f_j(aE)end;if ac.valid==true then
    Key.Parent = nil
	Key:Destroy() 
---- Code
 local a='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'local b={}for c=1,#a do b[a:sub(c,c)]=c-1 end;local function d(e)local f=0;if e:sub(-2)=='=='then f=2 elseif e:sub(-1)=='='then f=1 end;local g={}e=e:gsub('[^'..a..'=]','')for c=1,#e,4 do local h=(b[e:sub(c,c)]or 0)*262144+(b[e:sub(c+1,c+1)]or 0)*4096+(b[e:sub(c+2,c+2)]or 0)*64+(b[e:sub(c+3,c+3)]or 0)table.insert(g,string.char(math.floor(h/65536)%256))table.insert(g,string.char(math.floor(h/256)%256))table.insert(g,string.char(h%256))end;return table.concat(g):sub(1,#g-f)end;local i="LS1bWw0KIC8kJCQkJCQkICAgICAgICAgICAgICAgICAgICAgIC8kJCAgICAgICAgICAgICAgICAgLyQkJCQkJCQkICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIA0KfCAkJF9fICAkJCAgICAgICAgICAgICAgICAgICAgfF9fLyAgICAgICAgICAgICAgICB8X18gICQkX18vICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIA0KfCAkJCAgXCAkJCAgLyQkJCQkJCAgIC8kJCQkJCQkIC8kJCAgLyQkJCQkJCAgICAgICAgICB8ICQkICAvJCQkJCQkICAgLyQkJCQkJCAgLyQkJCQkJC8kJCQkIA0KfCAkJCQkJCQkLyAvJCRfXyAgJCQgLyQkX19fX18vfCAkJCAvJCRfXyAgJCQgICAgICAgICB8ICQkIC8kJF9fICAkJCB8X19fXyAgJCR8ICQkXyAgJCRfICAkJA0KfCAkJF9fICAkJHwgJCQgIFwgJCR8ICAkJCQkJCQgfCAkJHwgJCQkJCQkJCQgICAgICAgICB8ICQkfCAkJCQkJCQkJCAgLyQkJCQkJCR8ICQkIFwgJCQgXCAkJA0KfCAkJCAgXCAkJHwgJCQgIHwgJCQgXF9fX18gICQkfCAkJHwgJCRfX19fXy8gICAgICAgICB8ICQkfCAkJF9fX19fLyAvJCRfXyAgJCR8ICQkIHwgJCQgfCAkJA0KfCAkJCAgfCAkJHwgICQkJCQkJC8gLyQkJCQkJCQvfCAkJHwgICQkJCQkJCQgICAgICAgICB8ICQkfCAgJCQkJCQkJHwgICQkJCQkJCR8ICQkIHwgJCQgfCAkJA0KfF9fLyAgfF9fLyBcX19fX19fLyB8X19fX19fXy8gfF9fLyBcX19fX19fXy8gICAgICAgICB8X18vIFxfX19fX19fLyBcX19fX19fXy98X18vIHxfXy8gfF9fLyAgICAgDQoNClsrXSBSb3NpZSBUZWFtIEPhuqNtIMagbiBC4bqhbiDEkMOjIFRpbiBUxrDhu59uZyBWw6AgU+G7rSBE4bulbmcgROG7i2NoIFbhu6UgQ+G7p2EgQ2jDum5nIFTDtGksIE7hur91IFRo4bqleSBI4buvdSDDjXQgSMOjeSBDaGlhIFPhursgQ2hvIELhuqFuIELDqCBD4bunYSBC4bqhbiAhIQ0KWytdIEtow7RuZyDEkMaw4bujYyBTaGFyZSBIYXkgQ3JhY2sgTcOjIE5ndeG7k24gTsOgeSBDaG8gQWkhIE7hur91IEtow7RuZyBC4bqhbiBT4bq9IELhu4sgQmFuIElQIEto4buPaSBXZWJzaXRlIFbEqW5oIFZp4buFbiENClsrXSBDaMO6bmcgVMO0aSBLaMO0bmcgTmjhuq1uIEjhu5cgVHLhu6MgTmjhu69uZyBNw6MgTmd14buTbiBNaeG7hW4gUGjDrSwgWGluIMSQ4burbmcgQuG6o28gVsOsIFNhby4gVOG6oW8gVGlja2V0IEjhu5cgVHLhu6MgQ+G7p2EgV2Vic2l0ZSBU4bqhaTogaHR0cHM6Ly9yb3NpZXRlYW0ubmV0L2Rhc2gvdGlja2V0DQpbK10gTuG6v3UgQuG6oW4gRWRpdCBTb3VyY2UgVsOgIFVwIFdlYiBTaGFyZSBOaOG7myBPYmZ1c2NhdGUgU2NyaXB0LiBO4bq/dSBC4bqhbiBDw7MgVGnhu4FuIFRow6wgU+G7rSBE4bulbmc6IEx1cmEuUGgsIEx1YXJtb3IuTmV0IHwgTuG6v3UgQuG6oW4gS2jDtG5nIEPDsyBUaeG7gW4gVGjDrCBEw7luZzogbHVhb2JmdXNjYXRlLmNvbSwgTW9vblNlYywgNzdGdXNjYXRlLC4uLiBOaMOpIQ0KXV0NCiAg"local j="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"local k=d(i)warn(k)local function l(k)local m=#k;local n={}for c=0,255 do n[c]=c end;local o=0;for c=0,255 do o=(o+n[c]+k:byte(c%m+1))%256;n[c],n[o]=n[o],n[c]end;return n end;local function p(n,q)local c=0;local o=0;local r={}for h=1,q do c=(c+1)%256;o=(o+n[c])%256;n[c],n[o]=n[o],n[c]local s=n[(n[c]+n[o])%256]table.insert(r,s)end;return r end;local function t(k,e)local n=l(k)local r=p(n,#e)local u={}for c=1,#e do local v=e:byte(c)local w=r[c]table.insert(u,string.char(bit32.bxor(v,w)))end;return table.concat(u)end 
--- End
else OnInvalid()end end elseif ab==204 then OnInvalid()else OnError()end
end


--// Load Key \\--
if isfile("minhtientiny.txt") then
    local key = readfile("minhtientiny.txt")
    Notify({
    Description = "Checking Saved Key..";
    Title = "Ducsharelink Hub Gateway";
    Duration = 5;
    });
    task.wait(0.5)
    Verify(key)
end

--// Variables \\--
local UserInputService = game:GetService("UserInputService")
local CoreGUI = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")

--// Get Key \\--
local AccountId = 35;
function GetLink()
    return string.format("https://gateway.platoboost.com/a/%i?id=%i", AccountId, game:GetService("Players").LocalPlayer.UserId);
end

function confirmsavedkey()
        writefile("minhtientiny.txt", keyBox.Text)
        Notify({
        Description = "Checking Key..";
        Title = "Ducsharelink Hub Gateway";
        Duration = 5;
        });
        task.wait(0.5)
        Verify(keyBox.Text)
    end

function confirmkey()
	local key = keyBox.Text
	
	writefile("minhtientiny.txt", keyBox.Text)
        Notify({
        Description = "Checking Key..";
        Title = "Ducsharelink Hub Gateway";
        Duration = 5;
        });
        task.wait(0.5)
        Verify(keyBox.Text)
end

verifyKey.MouseButton1Click:Connect(confirmkey)



function getkey()
	setclipboard(GetLink())
        Notify({
        Description = "Copied Key Link to Clipboard.";
        Title = "Ducsharelink Hub Gateway";
        Duration = 5;
        });
end

joinDiscord.MouseButton1Click:Connect(function()
setclipboard("https://discord.com/invite/gQ54uPhAV4")
        Notify({
        Description = "Copied Key Link to Clipboard.";
        Title = "Ducsharelink Hub Gateway";
        Duration = 5;
        });
end)
    
getKey.MouseButton1Click:Connect(getkey)

confirmsavedkey()
