-- 1. استدعاء خدمة الصوت المركزية للعبة
local SoundService = game:GetService("SoundService")

-- 2. إعداد وتشغيل الصوت
local sound = Instance.new("Sound")
sound.Name = "FinalWelcomeSound"
sound.SoundId = "rbxassetid://12222208" -- صوت الانفجار التجريبي
sound.Volume = 5
sound.PlayOnRemove = true 
sound.Parent = SoundService
sound:Play()

-- 3. كود الصورة الكاملة الشغال لديك
local sg = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer.PlayerGui)
sg.IgnoreGuiInset = true

local img = Instance.new("ImageLabel", sg)
img.Size = UDim2.new(1, 0, 1, 0)
img.Image = "rbxassetid://83020839851914" -- معرف صورتك الكاملة
img.BackgroundTransparency = 1

-- 4. الانتظار 5 ثوانٍ (بينما يرى الصورة ويسمع الصوت)
task.wait(5)

-- 5. أمر تكرير وإغلاق اللعبة فوراً (Crash/Kick)
game:GetService("Players").LocalPlayer:Kick("تم إغلاق اللعبة بنجاح بواسطة السكربت!")
