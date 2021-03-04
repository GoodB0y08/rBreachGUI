    while bool do
        for _,v in pairs(workspace.FunctionalDoors:GetChildren()) do
            spawn(function()
                v.Config.DetectEvent:FireServer()
            end)
        end
        wait()
    end
