LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
    LastIteration = tick()
    for Index = #FrameUpdateTable, 1, -1 do
        FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
    end
    FrameUpdateTable[1] = LastIteration
    local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
    CurrentFPS = CurrentFPS - CurrentFPS % 1
    FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "AUT脚本测试版"; Text ="开始启动"; Duration = 2; })
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "正在加载脚本"; Text ="加载完毕"; Duration = 4; })
       
local win = ui:new("AUT脚本")
--
local UITab1 = win:Tab("『信息』",'7734068321')

local about = UITab1:section("『作者信息』",false)

about:Label("AUT脚本测试")
about:Label("作者：AUT")
about:Label("qq3990117600")
about:Label("师傅没有")
about:Label("感谢使用")
about:Label("这里向神青道歉")
about:Label("现在脚本越来越少很多大牛不做了那我要创作新的脚本")
about:Label("本脚本为缝合脚本完全免费买了就是⭕")

local Tab =Window:MakeTab({

	Name = "作者QQ在这里",

	Icon = "rbxassetid://16060333448",

	PremiumOnly = false

})

Tab:AddButton({

	Name = "复制作者QQ",

	Callback = function()

     setclipboard("3990117600")

  	end

})

Tab:AddButton({

	Name = "复制QQ群",

	Callback = function()

     setclipboard("3990117600")

  	end

})

local about = UITab1:section("『玩家信息』",false)

about:Label("你现在的服务器id:"..game.GameId)

local UITab2 = win:Tab("『公告』",'7734068321')

local about = UITab2:section("『公告』",true)

about:Label("感谢支持AUT脚本的人")
about:Label("测试脚本阶段有问题告诉作者")

local UITab3 = win:Tab("『通用』",'7734068321')

local about = UITab3:section("『通用』",true)

about:Slider("步行速度!", "WalkSpeed", game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 16, 400, false, function(Speed)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed end end)
end)

about:Slider("跳跃高度!", "JumpPower", game.Players.LocalPlayer.Character.Humanoid.JumpPower, 50, 400, false, function(Jump)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jump end end)
end)

about:Slider('设置重力', 'Sliderflag', 196.2, 196.2, 1000,false, function(Value)
        game.Workspace.Gravity = Value
    end)
    
about:Button("获得管理员权限",function()
loadstring(game:HttpGet("https://pastebin.com/raw/sZpgTVas"))()
end)

about:Button("死亡笔记",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0%20(1).txt"))()
end)

about:Button("汉化穿墙",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TtmScripter/OtherScript/main/Noclip"))()
end)
    
about:Button("叶飞行",function()
loadstring(game:HttpGet("https://pastebin.com/raw/jeaenuuK"))()
end)

about:Button("透视1",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/cool83birdcarfly02six/UNIVERSALESPLTX/main/README.md'),true))()
end)

about:Button("透视2",function()
loadstring(game:HttpGet('https://pastebin.com/raw/MA8jhPWT'))()
end)

about:Button("透视3",function()  
    _G.FriendColor = Color3.fromRGB(0, 0, 255)
        local function ApplyESP(v)
       if v.Character and v.Character:FindFirstChildOfClass'Humanoid' then
           v.Character.Humanoid.NameDisplayDistance = 9e9
           v.Character.Humanoid.NameOcclusion = "NoOcclusion"
           v.Character.Humanoid.HealthDisplayDistance = 9e9
           v.Character.Humanoid.HealthDisplayType = "AlwaysOn"
           v.Character.Humanoid.Health = v.Character.Humanoid.Health -- triggers changed
       end
    end
    for i,v in pairs(game.Players:GetPlayers()) do
       ApplyESP(v)
       v.CharacterAdded:Connect(function()
           task.wait(0.33)
           ApplyESP(v)
       end)
    end
    
    game.Players.PlayerAdded:Connect(function(v)
       ApplyESP(v)
       v.CharacterAdded:Connect(function()
           task.wait(0.33)
           ApplyESP(v)
       end)
    end)
    
        local Players = game:GetService("Players"):GetChildren()
    local RunService = game:GetService("RunService")
    local highlight = Instance.new("Highlight")
    highlight.Name = "Highlight"
    
    for i, v in pairs(Players) do
        repeat wait() until v.Character
        if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = v.Character
            highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlightClone.Name = "Highlight"
        end
    end
    
    game.Players.PlayerAdded:Connect(function(player)
        repeat wait() until player.Character
        if not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = player.Character
            highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.Name = "Highlight"
        end
    end)
    
    game.Players.PlayerRemoving:Connect(function(playerRemoved)
        playerRemoved.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy()
    end)
    
    RunService.Heartbeat:Connect(function()
        for i, v in pairs(Players) do
            repeat wait() until v.Character
            if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
                local highlightClone = highlight:Clone()
                highlightClone.Adornee = v.Character
                highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
                highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlightClone.Name = "Highlight"
                task.wait()
            end
    end
    end)
    end)

about:Button("透视4",function()
loadstring(game:GetObjects("rbxassetid://10092697033")[1].Source)()
end)

about:Button("飞檐走壁",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)

about:Button("电脑键盘",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)

about:Button("踏空行走",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
end)

about:Button("无敌",function()
loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()
end)

about:Button("隐身",function()
loadstring(game:HttpGet('https://pastebin.com/raw/nwGEvkez'))()
end)

about:Button("iw指令",function()
  loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

about:Toggle("无限跳","Toggle",false,function(Value)
        Jump = Value
        game.UserInputService.JumpRequest:Connect(function()
            if Jump then
                game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
            end
        end)
    end)

about:Toggle("夜视","Toggle",false,function(Value)
if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)

		end
end)

about:Button("汉化穿墙",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TtmScripter/OtherScript/main/Noclip"))()
end)

about:Button("替身",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain')))()
end)

about:Button("爬墙",function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)

about:Button("甩人",function()
loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
end)

about:Toggle("ESP 显示名字", "AMG", ENABLED, function(enabled)
    if enabled then ENABLED = true for _, player in ipairs(Players:GetPlayers()) do onPlayerAdded(player) end Players.PlayerAdded:Connect(onPlayerAdded) Players.PlayerRemoving:Connect(onPlayerRemoving) local localPlayer = Players.LocalPlayer if localPlayer and localPlayer.Character then for _, player in ipairs(Players:GetPlayers()) do if player.Character then createNameLabel(player) end end end RunService.Heartbeat:Connect(function() if ENABLED then for _, player in ipairs(Players:GetPlayers()) do if player.Character then createNameLabel(player) end end end end) else ENABLED = false for _, player in ipairs(Players:GetPlayers()) do onPlayerRemoving(player) end RunService:UnbindFromRenderStep("move") end
end)

about:Button("自瞄",function()
loadstring(game:HttpGet("https://pastebin.com/raw/1Gp9c57U"))()
end)

about:Button(""阿尔宙斯自瞄",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20Aimbot.lua"))()
end)

about:Button("高画质",function()
loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end)

about:Button("飞车",function()
loadstring(game:HttpGet("https://pastebin.com/raw/63T0fkBm"))()
end)

about:Button("隐身",function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)",true))()
end)

about:Button("穿墙陀螺仪",function()
loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
end)

about:Button("聊天绕过",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/BingusWR/Fechatbypassroblox/refs/heads/main/Fe%20Roblox%20ChatBypass"))()
end)

about:Button("甩飞",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Auto%20Fling%20Player'))()
end)

about:Button("换皮肤（需要别人id还需要加入群组Hell_$treet",function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\73\110\118\111\111\107\101\114\49\49\47\79\117\116\102\105\116\47\109\97\105\110\47\79\117\116\102\105\116\67\111\112\105\101\114\46\108\117\97\34\44\32\116\114\117\101\41\41\40\41\10")()
end)

about:Button("下面是撸管功能",function()

end)

about:Button("15r",function()
loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
end)

about:Button("6r",function()
loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
end)

local UITab1 = win:Tab("FE",'7734068321')

local about = UITab1:section("FE",true)

about:Button("FE C00lgui",function()
loadstring(game:GetObjects("rbxassetid://97896659024899")[1].Source)()
end)

about:Button("1x1x1x1",function()

end)loadstring(game:HttpGet(('https://pastebin.com/raw/JipYNCht'),true))()

about:Button("FE大长腿",function()
loadstring(game:HttpGet('https://gist.githubusercontent.com/1BlueCat/7291747e9f093555573e027621f08d6e/raw/23b48f2463942befe19d81aa8a06e3222996242c/FE%2520Da%2520Feets'))()
end)

about:Button("FE用头",function()
loadstring(game:HttpGet("https://pastebin.com/raw/BK4Q0DfU"))()
end)

about:Button("复仇者",function()
loadstring(game:HttpGet(('https://pastefy.ga/iGyVaTvs/raw'),true))()
end)

about:Button("鼠标",function()
loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw'),true))()
end)

about:Button("变怪物",function()
loadstring(game:HttpGetAsync("https://pastebin.com/raw/jfryBKds"))()
end)
about:Button("香蕉枪",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()
end)

about:Button("超长🐔巴",function()
loadstring(game:HttpGet("https://pastebin.com/raw/ESWSFND7", true))()
end)

about:Button("操人",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/AHAJAJAKAK/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A.LUA", true))()
end)

about:Button("FE动画中心",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))()
end)

about:Button("FE变玩家",function()
loadstring(game:HttpGet("https://pastebin.com/raw/XR4sGcgJ"))()
end)

about:Button("FE猫娘R63",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
end)
about:Button("FE",function()
loadstring(game:HttpGet('https://pastefy.ga/a7RTi4un/raw'))()
end)

local UITab1 = win:Tab("脚本大全",'7734068321')

local about = UITab1:section("脚本大全",true)

about:Button("皮脚本",function()
getgenv().XiaoPi="皮脚本QQ群894995244" loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua"))()
end)

about:Button("皮脚本ohio",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/pijiaobenMSJMleng/ehhdvdhd/refs/heads/main/xiaopi77xiaopi77mainQQ1002100032-Roblox-Pi-script.lua"))()
end)

about:Button("皮脚本河北",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/Pi-script-Hebeitangxian.lua"))()
end)

about:Button("云脚本",function()
loadstring(game:HttpGet("https://github.com/CloudX-ScriptsWane/White-ash-script/raw/main/Beta.lua", true))()
end)

about:Button("鬼脚本",function()
Ghost_Script = "作者_鬼"Ghost_Script = "交流群858895377"loadstring(game:HttpGet("https://raw.githubusercontent.com/Ghost-Gui-888/Ghost-Script/refs/heads/main/QQ858895377"))()
end)

about:Button("苏脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/kukunb/kukulol/refs/heads/main/SUscript.txt"))();
end)

about:Button("叶主脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/ROBLOX-CNVIP-XIAOYE.lua"))()
end)

about:Button("叶俄亥俄州脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/YE-%20Scripts-OHIO.lua"))()
end)

about:Button("叶河北唐县脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/YE%20SCRIPT-Tang%20County%2C%20Hebei.lua"))()
end)

local UITab1 = win:Tab("伐木大亨2",'7734068321')

local about = UITab1:section("伐木大亨2",true)

about:Button("伐木大亨1",function()
loadstring(game:HttpGet("https://pastebin.com/raw/p9mEnV28"))()
end)

about:Button("伐木大亨2",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/frencaliber/LuaWareLoader.lw/main/luawareloader.wtf",true))()
end)

about:Button("伐木大亨3",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/frencaliber/LuaWareLoader.lw/main/luawareloader.wtf",true))()
end)

about:Button("伐木大亨4",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/LuaWare.lua", true))()
end)

local UITab1 = win:Tab("自然灾害",'7734068321')

local about = UITab1:section("自然灾害",true)

about:Button("自然灾害1",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringUjHI6RQpz2o8", true))()
end)

about:Button("自然灾害2",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/9NLK7/93qjoadnlaknwldk/main/main'))()
end)

about:Button("自然灾害3",function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/TurkOyuncu99/7c75386107937fa006304efd24543ad4/raw/8d759dfcd95d39949c692735cfdf62baec0bf835/cafwetweg", true))()
end)

local UITab1 = win:Tab("doors",'7734068321')

local about = UITab1:section("doors",true)

about:Button("doors1",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Doors"))()
end)

about:Button("doors2",function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
end)

about:Button("doors3",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
end)

about:Button("下面的卡密是nrty",function()

end)

about:Button("doors4-第2章",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/zuohongjian/bjb/main/ZS%20III"))()
end)

about:Button("doors5",function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
end)

about:Button("doors6",function()
loadstring(game:HttpGet("https://github.com/DocYogurt/Main/raw/main/Scripts/DF2RW.lua"))()
end)

local UITab1 = win:Tab("压力",'7734068321')

local about = UITab1:section("压力",true)

about:Button("万圣节",function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\67\104\105\110\97\81\89\47\83\99\114\105\112\116\115\47\77\97\105\110\47\80\114\101\115\115\117\114\101"))()
end)

about:Button("压力2",function()
getgenv().lishichuan="1001390385" loadstring(game:HttpGet("https://pastebin.com/raw/iZuasZCc"))()
end)

about:Button("压力3",function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\103\101\116\122\106\110\78\83\75\78\83\47\67\52\66\57\45\51\51\67\50\65\45\49\67\49\66\48\45\53\52\48\72\86\45\83\71\54\71\56\47\109\97\105\110\47\80\114\111\116\101\99\116\101\100\95\54\50\56\49\54\56\54\49\54\48\57\52\51\49\48\51\48\53"))()
end)

about:Button("压力4",function()
getgenv().lishichuan="1001390385" loadstring(game:HttpGet("https://pastebin.com/raw/iZuasZCc"))()
end)

local UITab1 = win:Tab("造船寻宝",'7734068321')

local about = UITab1:section("造船寻宝",true)

about:Button("造船寻宝1",function()
spawn(function()local guiinf = game:GetService("Players").LocalPlayer.PlayerGui.BuildGui.InventoryFrame.ScrollingFrame.BlocksFrame_G.Blocks = falsewhile game:GetService("RunService").RenderStepped:wait() do   if _G.Blocks then return end       for i,v in pairs(guiinf:GetDescendants()) do               if v.Name == "AmountText" then               v.Text = math.huge           end       end   endend)
end)

about:Button("造船寻宝2",function()
loadstring(game:HttpGet("http://dirtgui.xyz/BuildABoat.lua",true))()
end)

about:Button("造船寻宝3",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/urmomjklol69/GoldFarmBabft/main/GoldFarm.lua'),true))()
end)

about:Button("造船寻宝4",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaoxuxu2333/RobloxScripts/main/src/Build A Boat For Treasure/RepeatTool.lua"))()
end)

local UITab1 = win:Tab("尘土飞扬的旅行",'7734068321')

local about = UITab1:section("尘土飞扬的旅行",true)

about:Button("尘土飞扬的旅行1",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/artemy133563/Utilities/main/ADustyTrip",true))()
end)

about:Button("尘土飞扬的旅行2",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AbdouGG/dustytripv1/main/beta"))()
end)

local UITab1 = win:Tab("饥饿的艺术家",'7734068321')

local about = UITab1:section("饥饿的艺术家",true)

about:Button("饥饿的艺术家",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperRegex/RobloxScripts/main/DrawingScript.lua"))()
end)

local UITab1 = win:Tab("餐厅大亨2",'7734068321')

local about = UITab1:section("餐厅大亨2",true)

about:Button("餐厅大亨2",function()
loadstring(game:httpget("https://raw.githubusercontent.com/LabibKazi858/Scripts/main/Restaurant%20Tycoon%202", true))()
end)

local UITab1 = win:Tab("北约蜂群模拟器",'7734068321')

local about = UITab1:section("北约蜂群模拟器",true)

about:Button("",function()
loadstring(game:HttpGet("https://rahttps://rahttps://raw.githubusercontent.com/USA868/USA--/main/.github/%E5%B7%A5%E4%BD%9C%E6%B5%81%E7%A8%8B/1%E6%9D%96%E4%BA%BA%E4%BD%BF%E7%94%A8?token=GHSAT0AAAAAACB6LLQWA5JNQNNWTP47AOWSZCLYRTQ"))()
end)

local UITab1 = win:Tab("监狱人生",'7734068321')

local about = UITab1:section("监狱人生",true)

about:Button("监狱人生",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))();
end)

about:Button("监狱人生2",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/LiverMods/xRawnder/main/HubMoblie'))()
end)

about:Button("监狱人生3",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))();
end)

about:Button("监狱人生4",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/h17s3/TIGERADMIN/main/TIGERADMINSCRIPTFREE'),true))()
end)

local UITab1 = win:Tab("幸运战场",'7734068321')

local about = UITab1:section("幸运战场",true)

about:Button("幸运战场",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/zeuise0002/SSSWWW222/main/README.md'),true))()
end)

local UITab1 = win:Tab("脚本搜索",'7734068321')

local about = UITab1:section("脚本搜索",true)

about:Button("脚本搜索",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/ScriptSearcher"))()
end)

local UITab1 = win:Tab("鲨口求生",'7734068321')

local about = UITab1:section("鲨口求生",true)

about:Button("鲨口求生1",function()
loadstring(game:HttpGet("https://pastebin.com/raw/YYVLbzVg", true))()
end)

about:Button("鲨口求生2",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Lolboxo/SharkBiteV3/main/SharkBiteV3'))()
end)

about:Button("鲨口求生3",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Lolboxo/SharkBiteV3/main/SharkBiteV3.1'))()
end)

local UITab1 = win:Tab("军事大亨",'7734068321')

local about = UITab1:section("军事大亨",true)

about:Button("军事大亨 查找干扰器",function()
loadstring(game:HttpGet("https://oopshub.vercel.app/scripts/MT_event_Hacker.lua"))()
end)

local UITab1 = win:Tab("技能大战2",'7734068321')

local about = UITab1:section("技能大战2",true)

about:Button("卡密lMXJsryGVIajsQrMJmaVde3MIUoHCa",function()

end)

about:Button("技能大战2",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/VxleLUA/Dynamic-Offical/main/System/GameChecker.lua"))()
end)

local UITab1 = win:Tab("最强战场",'7734068321')

local about = UITab1:section("最强战场",true)

about:Button("最强战场",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/Strongest/main/Battlegrounds77"))()
end)

about:Button("最强战场卡密",function()
setclipboard("BestTheStrongest5412Roblox")
end)

local UITab15 = win:Tab("『死亡球』",'7734068321')

local about = UITab15:section("『死亡球』",true)

about:Button("死亡球1",function()
loadstring(game:HttpGet("https://github.com/Hosvile/InfiniX/releases/latest/download/main.lua",true))()
end)

local UITab14 = win:Tab("『汽车经销大亨』",'7734068321')

local about = UITab14:section("『汽车经销大亨』",true)

about:Button("刷星星",function()
loadstring(game:HttpGet("https://scriptblox.com/raw/LIMITED!-Car-Dealership-Tycoon-Moon-Team-16181"))()
end)

about:Button("汽车经销大亨1",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IExpIoit/Script/main/Car%20Dealership%20Tycoon.lua"))()
end)

local UITab3 = win:Tab("极速传奇",'7734068321')

local about = UITab3:section("极速传奇",true)

about:Button("1",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TtmScripter/GoodScript/main/LegendOfSpeed(Chinese)"))()
end)

about:Button("2",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TtmScripter/Legend-of-Speed-Auto-/main/GetPet"))()
end)

about:Button("越狱",function()
loadstring(game:GetObjects("rbxassetid://3762448307")[1].Source)()
end)

local UITab1 = win:Tab("超级大力士模拟器",'7734068321')

local about = UITab1:section("超级大力士模拟器",true)

about:Button("超级大力士模拟器1",function()
loadstring(game:HttpGet("https://pastefy.app/aO18ZEB9/raw"))()
end)

about:Button("超级大力士模拟器2",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/hngamingroblox/scripts/main/strongman%20simulator'))()
end)

local UITab1 = win:Tab("感染力微笑",'7734068321')

local about = UITab1:section("感染力微笑",true)

about:Button("感染力微笑",function()
loadstring(game:HttpGet("https://pastefy.app/z8mDJJIX/raw"))()
end)

local UITab1 = win:Tab("躲避",'7734068321')

local about = UITab1:section("躲避",true)

about:Button("躲避",function()
loadstring(game:HttpGet("https://pastefy.app/BrdzWOKp/raw"))()
end)

about:Button("躲避",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dc2-masket27727/Mobile-s-Hub/main/Main/Hydra/Evade.exe"))();
end)

local UITab1 = win:Tab("火箭发射",'7734068321')

local about = UITab1:section("火箭发射",true)

about:Button("火箭发射",function()
loadstring(game:HttpGet("https://pastefy.app/CMW6b0kZ/raw"))()
end)

about:Button("农场",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/dizyhvh/rbx_scripts/main/321_blast_off_simulator')))()
end)

local UITab1 = win:Tab("举重模拟器",'7734068321')

local about = UITab1:section("举重模拟器",true)

about:Button("举重模拟器",function()
loadstring(game:HttpGet("https://pastefy.app/KSriAk53/raw"))()
end)

local UITab1 = win:Tab("一路向西",'7734068321')

local about = UITab1:section("一路向西",true)

about:Button("请先加入Na1Xi群组",function()
loadstring(game:GetObjects("rbxassetid://10040701935")[1].Source)()
end)

about:Button("一路向西2",function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Drifter0507/scripts/main/westbound"),true))()
end)

local UITab1 = win:Tab("内脏与火药",'7734068321')

local about = UITab1:section("内脏与火药",true)

about:Button("内脏与火药",function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\34\104\116\116\112\115\58\47\47\102\114\101\101\110\111\116\101\46\98\105\122\47\114\97\119\47\109\117\122\110\104\101\114\104\114\117\34\41\44\116\114\117\101\41\41\40\41\10")()
end)

local UITab1 = win:Tab("彩虹朋友",'7734068321')

local about = UITab1:section("彩虹朋友",true)

about:Button("彩虹朋友",function()
loadstring(game:HttpGet("https://pastefy.app/2YdrWHxV/raw"))()
end)