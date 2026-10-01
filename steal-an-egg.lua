-- 1. تشغيل الصوت فوراً داخل الـ Workspace لضمان سماع الصوت
local sound = Instance.new("Sound")
sound.Name = "WelcomeSound"
sound.SoundId = "rbxassetid://1837874655" -- رقم معرّف صوت مفتوح وعام شغال ومضمون للتجربة
sound.Volume = 3                          -- مستوى صوت مسموع ومتوازن
sound.Looped = false
sound.Parent = game:GetService("Workspace") -- نقل الصوت هنا يحل مشكلة عدم اشتغاله
sound:Play()

-- 2. إنشاء الواجهة وإظهار الصورة لتغطي الشاشة بالكامل (Full Screen)
local sg = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer.PlayerGui)
sg.IgnoreGuiInset = true -- هذه الخطوة تلغي حواف شاشة روبلوكس العلوية لتغطية كاملة 100%

local img = Instance.new("ImageLabel", sg)
img.Size = UDim2.new(1, 0, 1, 0)         -- {1, 0}, {1, 0} تعني ملء الشاشة بالكامل عرضاً وارتفاعاً
img.Position = UDim2.new(0, 0, 0, 0)     -- تبدأ من الزاوية الصفرية للشاشة
img.Image = "rbxassetid://83020839851914" -- معرف الصورة الخاص بك الجاهز والمطابق لشاشتك الكاملة
img.BackgroundTransparency = 1           -- إخفاء الخلفية البيضاء

-- 3. الانتظار 5 ثوانٍ ثم الحذف التلقائي لتفادي تعليق اللعبة
task.wait(5)
sound:Stop()
sound:Destroy()
sg:Destroy()
