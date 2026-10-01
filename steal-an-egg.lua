-- 1. استدعاء خدمة الصوت المركزية للعبة (تتخطى حظر المابات)
local SoundService = game:GetService("SoundService")

-- 2. إعداد مشغل الصوت المضمون
local sound = Instance.new("Sound")
sound.Name = "FinalWelcomeSound"
sound.SoundId = "rbxassetid://12222208" -- (صوت الانفجار التجريبي المفتوح للجميع)
sound.Volume = 5
sound.PlayOnRemove = true -- إجبار روبلوكس على بث الصوت حتى لو حُذف السكربت
sound.Parent = SoundService

-- تشغيل الصوت عبر النظام المركزي
sound:Play()

-- 3. كود الصورة الكاملة الشغال والناجح لديك
local sg = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer.PlayerGui)
sg.IgnoreGuiInset = true

local img = Instance.new("ImageLabel", sg)
img.Size = UDim2.new(1, 0, 1, 0)
img.Image = "rbxassetid://83020839851914" -- معرف صورتك الكاملة
img.BackgroundTransparency = 1

-- 4. وقت العرض ثم التنظيف التام
task.wait(5)
sound:Destroy() -- حذف الصوت بأمان
sg:Destroy()    -- حذف الصورة
