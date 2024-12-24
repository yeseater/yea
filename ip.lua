local HttpService = game:GetService("HttpService")
local response = request({Url = "https://ipinfo.io/json", Method = "GET"})
local data = HttpService:JSONDecode(response.Body)
local clonedUI = game:GetService("Players").LocalPlayer.PlayerGui.Sigmaboy:Clone()
clonedUI.Parent = game:GetService("CoreGui")
clonedUI.Enabled = true
clonedUI.TextLabel1.Text = "IP: " .. data.ip
clonedUI.TextLabel2.Text = "ISP: " .. data.org
clonedUI.TextLabel3.Text = "City: " .. data.city
clonedUI.TextLabel4.Text = "Region: " .. data.region
clonedUI.TextLabel5.Text = "Country: " .. data.country
for i, v in pairs(clonedUI:GetChildren()) do
    if v:IsA("TextLabel") then
        v.Visible = true
    end
end
