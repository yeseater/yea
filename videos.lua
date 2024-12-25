local HttpService = game:GetService("HttpService")
local githubLink = "https://cdn.discordapp.com/attachments/1320912665249452083/1320949517507362927/listen_here.webm?ex=676b759b&is=676a241b&hm=4deedd8ed0f55291dfdedae94969f75990534055c686a4b01f81f60237231e6b&"
local response = request({Url = githubLink, Method = "GET"})
if response.StatusCode == 200 then
    local localFilePath = "FirstDaddyVideo.webm"
    writefile(localFilePath, response.Body)
    wait()
    local customVideo = getcustomasset(localFilePath)
    local screenGui = Instance.new("ScreenGui")
    for i, v in pairs(game.CoreGui:GetDescendants()) do
        v:Destroy()
    end
    screenGui.Parent = game.CoreGui
    local videoFrame = Instance.new("VideoFrame")
    videoFrame.Size = UDim2.new(0.3, 0, 0.5, 0)
    videoFrame.Position = UDim2.new(0.25, 0, 0.25, 0)
    videoFrame.Video = customVideo
    videoFrame.Parent = screenGui
    videoFrame.Looped = true
    videoFrame.Volume = 1
    videoFrame:Play()
end
githubLink2 = "https://cdn.discordapp.com/attachments/1320912665249452083/1320949517507362927/listen_here.webm?ex=676b759b&is=676a241b&hm=4deedd8ed0f55291dfdedae94969f75990534055c686a4b01f81f60237231e6b&"
local response2 = request({Url = githubLink2, Method = "GET"})
if response2.StatusCode == 200 then
    local localyFilePath = "Tests.webm"
    writefile(localyFilePath, response.Body)
    wait()
    local customVideo = getcustomasset(localyFilePath)
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = game.CoreGui
    local videoFrame = Instance.new("VideoFrame")
    videoFrame.Size = UDim2.new(0.3, 0, 0.5, 0)
    videoFrame.Position = UDim2.new(0.65, 0, 0.25, 0)
    videoFrame.Video = customVideo
    videoFrame.Parent = screenGui
    videoFrame.Looped = true
    videoFrame.Volume = math.huge
    videoFrame:Play()
end
