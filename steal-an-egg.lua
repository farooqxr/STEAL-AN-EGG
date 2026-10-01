-- 1. استدعاء خدمات المحتوى الأساسية
local ContentProvider = game:GetService("ContentProvider")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

-- 2. إعداد مشغل الصوت وتغيير المعرف إلى صوت رسمي مضمون 100%
local sound = Instance.new("Sound")
sound.Name = "WelcomeSoundOfficial"
sound.SoundId = "rbxassetid://12222208" -- (صوت انفجار رسمي قديم وعام يعمل على كل المابات)
sound.Volume = 5
sound.Parent = Workspace

-- إجبار اللعبة على تحميل الصوت في الخلفية قبل تشغيله
pcall(function()
    ContentProvider:PreloadAsync({sound})
end)

-- تشغيل الصوت فوراً
sound:Play()

-- 3. إنشاء شاشة العرض الكاملة (ملء الشاشة 100%)
local sg = Instance.new("ScreenGui", Players.LocalPlayer.PlayerGui)
sg.IgnoreGuiInset = true 

local img = Instance.new("ImageLabel", sg)
img.Size = UDim2.new(1, 0, 1, 0)         
img.Position = UDim2.new(0, 0, 0, 0)     
img.Image = "rbxassetid://83020839851914" -- معرف صورتك الصحيح
img.BackgroundTransparency = 1           

-- 4. الانتظار 5 ثوانٍ ثم التنظيف والحذف التلقائي
task.wait(5)
sound:Stop()
sound:Destroy()
sg:Destroy()
