-- 1. تشغيل الأغنية فوراً داخل الـ Workspace لضمان سماع الصوت
local sound = Instance.new("Sound")
sound.Name = "WelcomeSound"
sound.SoundId = "rbxassetid://88737551753607" -- المعرف الخاص بك
sound.Volume = 3                            -- خفضنا الصوت من 100 إلى 3 ليكون واضحاً وبدون وشوشة
sound.Looped = false
sound.Parent = game:GetService("Workspace")   -- نقل الصوت إلى الـ Workspace يحل مشكلة عدم اشتغاله
sound:Play()

-- 2. إنشاء الواجهة وإظهار الصورة لتغطي الشاشة بالكامل (Full Screen)
local sg = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer.PlayerGui)
sg.IgnoreGuiInset = true -- تلغي الحواف العلوية الافتراضية في روبلوكس لتغطية كاملة 100%

local img = Instance.new("ImageLabel", sg)
img.Size = UDim2.new(1, 0, 1, 0)         -- ملء الشاشة بالكامل عرضاً وارتفاعاً بدلاً من الحجم الثابت 400×400
img.Position = UDim2.new(0, 0, 0, 0)     -- تبدأ الرسم من الزاوية الصفرية للشاشة
img.Image = "rbxassetid://83020839851914" -- معرف الصورة الخاص بك
img.BackgroundTransparency = 1           -- إخفاء الخلفية البيضاء لتظهر الصورة فقط

-- 3. الانتظار 5 ثوانٍ ثم الحذف التدريجي والتنظيف
task.wait(5)
sound:Stop()
sound:Destroy()
sg:Destroy()
