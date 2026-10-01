-- تشغيل الأغنية فوراً عند فتح السكربت
local sound = Instance.new("Sound", game:GetService("Players").LocalPlayer.PlayerGui)
sound.SoundId = "rbxassetid://88737551753607" -- 
sound.Volume = 100
sound:Play()

-- إنشاء وإظهار الصورة في منتصف الشاشة
local sg = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer.PlayerGui)
local img = Instance.new("ImageLabel", sg)
img.Size = UDim2.new(0, 400, 0, 400) -- حجم المربع (400×400)
img.Position = UDim2.new(0.5, -200, 0.5, -200) -- التوسيط
img.Image = "rbxassetid://83020839851914" -- يمكنك تعديل معرف الصورة هنا لاحقاً
img.BackgroundTransparency = 1

-- عرض السكربت لمدة 5 ثوانٍ ثم الحذف لتفادي البطء
task.wait(5)
sound:Destroy()
sg:Destroy()
