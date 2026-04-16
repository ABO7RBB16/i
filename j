-- سكربت طرد لاعب محدد بالـ ID
local TargetID = 10080511071 -- الرقم اللي أعطيتني إياه
local Players = game:GetService("Players")
local Remote = game:GetService("ReplicatedStorage"):FindFirstChildOfClass("RemoteEvent")

for _, player in pairs(Players:GetPlayers()) do
    if player.UserId == TargetID then
        print("تم تحديد الهدف: " .. player.Name)
        -- إرسال حزم تسبب الـ 277 لهذا اللاعب تحديداً
        task.spawn(function()
            while task.wait(0.1) do
                if Remote then
                    Remote:FireServer(string.rep("277_ERROR_", 10000))
                end
            end
        end)
    end
end

-- توفير طاقة اللابتوب
game:GetService("RunService"):Set3dRenderingEnabled(false)
