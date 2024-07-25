-- Create a ScreenGui and ImageButton if not already created
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create and configure ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CenteredImageGui"
screenGui.Parent = playerGui

-- Add BlurEffect to Lighting
local lighting = game:GetService("Lighting")
local blurEffect = Instance.new("BlurEffect")
blurEffect.Size = 24 -- Adjust the blur intensity (higher values mean more blur)
blurEffect.Parent = lighting

-- Create and configure ImageButton
local imageButton = Instance.new("ImageButton")
imageButton.Size = UDim2.new(0, 100, 0, 100) -- Size of the button
imageButton.AnchorPoint = Vector2.new(0.5, 0.5) -- Anchor to center
imageButton.Position = UDim2.new(0.5, 0, 0.5, 0) -- Centered on the screen
imageButton.Image = "rbxassetid://18646253053" -- Your image ID
imageButton.Parent = screenGui

-- Create the TextLabel
local textLabel = Instance.new("TextLabel")
textLabel.Parent = screenGui
textLabel.Text = "ROBLOX"
textLabel.Size = UDim2.new(1, 0, 0, 100)  -- Adjust size to make text bigger
textLabel.Position = UDim2.new(0, 0, 0, 0)  -- Adjust position as needed

-- Set the TextLabel's properties
textLabel.TextTransparency = 0  -- Text is visible
textLabel.BackgroundTransparency = 1  -- Label background is invisible
textLabel.TextStrokeTransparency = 1  -- No stroke around the text
textLabel.TextColor3 = Color3.fromRGB(0, 0, 0)  -- Set text color to black
textLabel.Font = Enum.Font.SourceSans
textLabel.TextSize = 48  -- Make text larger

-- Function to handle button click
local function onButtonClick()
    textLabel:Destroy()  -- Destroy the ROBLOX text
    imageButton:Destroy()
    blurEffect:Destroy()
end

-- Connect the button click event to the function
imageButton.MouseButton1Click:Connect(onButtonClick)

-- Create and configure the TextButton
local TextButton = Instance.new("TextButton")
TextButton.Parent = screenGui
TextButton.Size = UDim2.new(0, 50, 0, 50)  -- Smaller size
TextButton.Position = UDim2.new(0, 10, 1, -60)  -- Bottom-left corner with a slight offset
TextButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)  -- Green color
TextButton.BackgroundTransparency = 0.5  -- Semi-transparent
TextButton.Text = "Open"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text
TextButton.Font = Enum.Font.SourceSans
TextButton.TextScaled = true

-- Make the button circular
TextButton.ClipsDescendants = true
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0.5, 0)  -- Makes it circular
UICorner.Parent = TextButton

-- Function for when the button is clicked
TextButton.MouseButton1Click:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "RightShift", false, game)
end)

-- Load the library
local SANS = loadstring(game:HttpGet("https://raw.githubusercontent.com/RScripter/ORION-BLUE-THEME/main/source.lua"))()

local SANS = SANS:MakeWindow({Name = "SANS HUB", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = SANS:MakeTab({
	Name = "Home",
	Icon = "home",
	PremiumOnly = false
})

local coolthingy = Tab:AddSection({
	Name = "_________________________________________________________________________"
})

-- Status section in Home Tab
local status = Tab:AddSection({
    Name = "Status"
})

Tab:AddLabel("Coming Soon!")

local coolthingy2 = Tab:AddSection({
	Name = "_________________________________________________________________________"
})

local coolthingy4 = Tab:AddSection({
	Name = "Credits"
})

Tab:AddLabel("by playerexploits on youtube link: m.youtube.com/@playerexploits")

local coolthingy3 = Tab:AddSection({
	Name = "_________________________________________________________________________"
})

local coolthingy5 = Tab:AddSection({
	Name = "Update Logs"
})

Tab:AddLabel("Made This Script Hub")
Tab:AddLabel("Added Home")
Tab:AddLabel("Added Other")
Tab:AddLabel("Added Universal")
Tab:AddLabel("Added Games")
Tab:AddLabel("Added Filtering Enabled")

local coolthingy5 = Tab:AddSection({
	Name = "_________________________________________________________________________"
})


local Tab2 = SANS:MakeTab({
	Name = "Other",
	Icon = "others",
	PremiumOnly = false
})

local coolthingy = Tab2:AddSection({
	Name = "_________________________________________________________________________"
})

-- Script Hubs section in tab2
local ScriptHubs = Tab2:AddSection({
    Name = "Script Hubs"
})

Tab2:AddButton({
	Name = "Rochips Panel V6.0",
	Callback = function()
      		loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Rochips-Panel-V6-15097"))()
  	end    
})

Tab2:AddButton({
	Name = "Tiger Hub V3",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/balintTheDevX/Tiger-X-V3/main/Tiger%20X%20its%20Back"))()
  	end    
})

Tab2:AddButton({
	Name = "Sky Hub",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/SkyHub.txt"))() 
  	end    
})

Tab2:AddButton({
	Name = "Ghost Hub",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
  	end    
})

Tab2:AddButton({
	Name = "VexHub",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/V31nc/On-Discord/Created/VexHub"))()
  	end    
})

local coolthingy2 = Tab2:AddSection({
	Name = "_________________________________________________________________________"
})

local universal = SANS:MakeTab({
	Name = "universal",
	Icon = "infinity",
	PremiumOnly = false
})

local coolthingy2 = universal:AddSection({
	Name = "_________________________________________________________________________"
})

local Section21 = universal:AddSection({
	Name = "Scripts"
})

universal:AddButton({
	Name = "UTH(TheUltimateTroll"),
	Callback = function()
      		getgenv().ActivateTheUltimateTrolly = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/Orealated/Oreal/main/orealated%20Easy.gg%20UTH%20Loader", true))();
  	end    
})

universal:AddButton({
	Name = "Neon Fly Gui",
	Callback = function()
      		loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Fly-Gui-V3-Dark-Theme-11884"))()
  	end    
})

universal:AddButton({
	Name = "Infinite Store",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Infinite-Store/Infinite-Store/main/main.lua"))()
  	end    
})

universal:AddButton({
	Name = "Troll Panel",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/script"))()
  	end    
})

local coolthingy2 = universal:AddSection({
	Name = "_________________________________________________________________________"
})

local Tab3 = SANS:MakeTab({
   Name = "Games",
   Icon = "games",
   PremiumOnly = false
})

local Section = Tab3:AddSection({
	Name = "_________________________________________________________________________"
})

-- Carnage section in tab2
local Carnage = Tab3:AddSection({
    Name = "Carnage Scripts"
})

Tab3:AddButton({
	Name = "Evade",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/lerkermer/lua-projects/master/SwagModeV002'))()
  	end    
})

Tab3:AddButton({
	Name = "Blade ball",
	Callback = function()
      		loadstring(game:HttpGet('https://reddyhub.xyz/loader.html'))()
  	end    
})

Tab3:AddButton({
	Name = "Brookhaven",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
  	end    
})

Tab3:AddButton({
	Name = "Bedwars",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
  	end    
})

Tab3:AddButton({
	Name = "Bloxburg",
	Callback = function()
      		loadstring(game:HttpGet("https://bloxburger.eu/scripts/free/script.lua"))()
  	end    
})

Tab3:AddButton({
	Name = "Slap Battles",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Slap_Battles/main/Slap_Battles.lua"))()
  	end    
})

Tab3:AddButton({
	Name = "Arsenal",
	Callback = function()
       	 loadstring(game:HttpGet('https://raw.githubusercontent.com/wuhaz/arsenal/main/main.lua'))()
  	end    
})

local Sectiohn = Tab3:AddSection({
	Name = "_________________________________________________________________________"
})

local Section = Tab3:AddSection({
	Name = "Murder Mystery 2"
})

Tab3:AddButton({
	Name = "Symphony Hub",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/ThatSick/ArrayField/main/SymphonyHub.lua'))()
  	end    
})

Tab3:AddButton({
	Name = "Yahrm",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua", false))()
  	end    
})

local Section = Tab3:AddSection({
	Name = "_________________________________________________________________________"
})

local Section2 = Tab3:AddSection({
	Name = "Break in 2"
})

Tab3:AddButton({
	Name = "Breaking Blitz",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/RScriptz/RobloxScripts/main/BreakIn2.lua"))()
  	end    
})

Tab3:AddButton({
	Name = "JN HH Gaming",
	Callback = function()
      		loadstring(game:HttpGet("https://freenote.biz/raw/qLlMYwbVNd",true))()
  	end    
})

local Section1 = Tab3:AddSection({
	Name = "_________________________________________________________________________"
})

local FE = SANS:MakeTab({
   Name = "Filtering Enabled",
   Icon = "filteringenabled",
   PremiumOnly = false
})

local Section = FE:AddSection({
	Name = "_________________________________________________________________________"
})

FE:AddButton({
	Name = "FE Script Hub",
	Callback = function()
      		loadstring(game:HttpGet(('https://pastebin.com/raw/wzB1Qh78'),true))()
  	end    
})

FE:AddButton({
	Name = "FE Script Hub 2",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/Script'))()
  	end    
})

FE:AddButton({
	Name = "Better Bypasser (Fe Chat Bypass)",
	Callback = function()
      		loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-BetterBypasser-15478"))()
  	end    
})

FE:AddButton({
	Name = "Gazer Fe Animation Editor",
	Callback = function()
      		loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Gazer-FE-Animation-Editor-14508"))()
  	end    
})

FE:AddButton({
	Name = "The Honored One",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Honored.lua'),true))()
  	end    
})

FE:AddButton({
	Name = "Fe bypass(idk if its fe)",
	Callback = function()
      		loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\103\48\48\108\88\112\108\111\105\116\101\114\47\103\48\48\108\88\112\108\111\105\116\101\114\47\109\97\105\110\47\70\101\37\50\48\98\121\112\97\115\115\34\44\32\116\114\117\101\41\41\40\41\10")()
  	end    
})

local Section1 = FE:AddSection({
	Name = "_________________________________________________________________________"
})112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\103\48\48\108\88\112\108\111\105\116\101\114\47\103\48\48\108\88\112\108\111\105\116\101\114\47\109\97\105\110\47\70\101\37\50\48\98\121\112\97\115\115\34\44\32\116\114\117\101\41\41\40\41\10")()
  	end    
})

local Section1 = FE:AddSection({
	Name = "_________________________________________________________________________"
})Name = "The Honored One",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Honored.lua'),true))()
  	end    
})

FE:AddButton({
	Name = "Fe bypass(idk if its fe)",
	Callback = function()
      		loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\103\48\48\108\88\112\108\111\105\116\101\114\47\103\48\48\108\88\112\108\111\105\116\101\114\47\109\97\105\110\47\70\101\37\50\48\98\121\112\97\115\115\34\44\32\116\114\117\101\41\41\40\41\10")()
  	end    
})

local Section1 = FE:AddSection({
	Name = "_________________________________________________________________________"
})50\48\98\121\112\97\115\115\34\44\32\116\114\117\101\41\41\40\41\10")()
  	end    
})

local Section1 = FE:AddSection({
	Name = "_________________________________________________________________________"
})