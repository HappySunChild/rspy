
-- UI

local Core = game:GetService("CoreGui")
local Debris = game:GetService("Debris")
local TextService = game:GetService("TextService")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local TweenService = game:GetService("TweenService")

Debris:AddItem(Core:FindFirstChild("RemoteSpy"), 0)

local RemoteSpy = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Padding = Instance.new("UIPadding")
local RemoteScroll = Instance.new("ScrollingFrame")
local List = Instance.new("UIListLayout")
local RemotePadding = Instance.new("UIPadding")
local Source = Instance.new("ScrollingFrame")
local SourcePadding = Instance.new("UIPadding")
local SourceList = Instance.new("UIListLayout")
local Buttons = Instance.new("Frame")

RemoteSpy.Name = "RemoteSpy"
--RemoteSpy.Parent = Core
RemoteSpy.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
RemoteSpy.DisplayOrder = 1e10

Main.Name = "Main"
Main.Parent = RemoteSpy
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Main.BorderColor3 = Color3.fromRGB(23, 24, 30)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 650, 0, 350)
Main.ClipsDescendants = true

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(1, 0, 0, 17)
Title.Font = Enum.Font.Code
Title.Text = "Remote Spy"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16.000
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.TextYAlignment = Enum.TextYAlignment.Top
Title.TextTruncate = Enum.TextTruncate.AtEnd

Padding.Name = "Padding"
Padding.Parent = Title
Padding.PaddingLeft = UDim.new(0, 2)

RemoteScroll.Name = "RemoteScroll"
RemoteScroll.Parent = Main
RemoteScroll.Active = true
RemoteScroll.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
RemoteScroll.BorderSizePixel = 0
RemoteScroll.Position = UDim2.new(0, 0, 0, 17)
RemoteScroll.Size = UDim2.new(0.393999994, 0, 1, -33)
RemoteScroll.BottomImage = "rbxassetid://148970562"
RemoteScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
RemoteScroll.MidImage = "rbxassetid://148970562"
RemoteScroll.ScrollBarThickness = 2
RemoteScroll.TopImage = "rbxassetid://148970562"
RemoteScroll.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

List.Name = "List"
List.Parent = RemoteScroll
List.SortOrder = Enum.SortOrder.LayoutOrder
List.Padding = UDim.new(0, 5)

RemotePadding.Name = "RemotePadding"
RemotePadding.Parent = RemoteScroll
RemotePadding.PaddingBottom = UDim.new(0, 4)
RemotePadding.PaddingLeft = UDim.new(0, 4)
RemotePadding.PaddingRight = UDim.new(0, 4)
RemotePadding.PaddingTop = UDim.new(0, 4)

Source.Name = "Source"
Source.Parent = Main
Source.Active = true
Source.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Source.BorderSizePixel = 0
Source.Position = UDim2.new(0.393999994, 0, 0, 17)
Source.Size = UDim2.new(0.606000006, 0, 1, -33)
Source.BottomImage = "rbxassetid://148970562"
Source.CanvasSize = UDim2.new(0, 0, 0, 0)
Source.MidImage = "rbxassetid://148970562"
Source.ScrollBarThickness = 2
Source.TopImage = "rbxassetid://148970562"
Source.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left
Source.AutomaticCanvasSize = Enum.AutomaticSize.XY

SourcePadding.Name = "SourcePadding"
SourcePadding.Parent = Source
SourcePadding.PaddingBottom = UDim.new(0, 4)
SourcePadding.PaddingLeft = UDim.new(0, 4)
SourcePadding.PaddingRight = UDim.new(0, 4)
SourcePadding.PaddingTop = UDim.new(0, 4)

SourceList.Name = "SourceList"
SourceList.Parent = Source
SourceList.SortOrder = Enum.SortOrder.LayoutOrder
SourceList.Padding = UDim.new(0, 5)

Buttons.Name = "Buttons"
Buttons.Parent = Main
Buttons.AnchorPoint = Vector2.new(0, 1)
Buttons.BackgroundColor3 = Color3.fromRGB(76, 76, 76)
Buttons.BorderSizePixel = 0
Buttons.Position = UDim2.new(0, 0, 1, 0)
Buttons.Size = UDim2.new(1, 0, 0, 16)

local ButtonList = Instance.new("UIListLayout", Buttons)
ButtonList.FillDirection = Enum.FillDirection.Horizontal
ButtonList.Padding = UDim.new(0, 3)
ButtonList.SortOrder = Enum.SortOrder.LayoutOrder

local HiddenFrame = Instance.new("Frame", Main)
HiddenFrame.Size = UDim2.new(0.3, 0, 1, 0)
HiddenFrame.BorderSizePixel = 0
HiddenFrame.AnchorPoint = Vector2.new(0, 0)
HiddenFrame.Position = UDim2.new(1, 0, 0, 0)
HiddenFrame.BackgroundTransparency = 0.1
HiddenFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

local HiddenTitle = Instance.new("TextLabel", HiddenFrame)
HiddenTitle.Text = "Hidden Remotes"
HiddenTitle.Size = UDim2.new(1, 0, 0, 17)
HiddenTitle.BackgroundTransparency = 1
HiddenTitle.Font = Enum.Font.Code
HiddenTitle.TextXAlignment = Enum.TextXAlignment.Center
HiddenTitle.TextSize = 15
HiddenTitle.TextColor3 = Color3.new(1, 1, 1)

local HiddenScroll = Instance.new("ScrollingFrame", HiddenFrame)
HiddenScroll.Position = UDim2.new(0, 0, 0, 17)
HiddenScroll.BackgroundTransparency = 1
HiddenScroll.BorderSizePixel = 0
HiddenScroll.BorderColor3 = Color3.new(1, 1, 1)
HiddenScroll.Size = UDim2.new(1, 0, 1, -48)
HiddenScroll.ScrollBarThickness = 2
HiddenScroll.CanvasSize = UDim2.new(0, 0)

local HiddenList = Instance.new("UIListLayout", HiddenScroll)
HiddenList.SortOrder = Enum.SortOrder.LayoutOrder
HiddenList.Padding = UDim.new(0, 3)

local HiddenPadding = Instance.new("UIPadding", HiddenScroll)
HiddenPadding.PaddingTop = UDim.new(0, 4)
HiddenPadding.PaddingLeft = UDim.new(0, 4)

local HiddenButton = Instance.new("TextButton", HiddenFrame)
HiddenButton.Text = "<"
HiddenButton.Size = UDim2.new(0, 17, 0, 17)
HiddenButton.Position = UDim2.new(0, 0, 0, 0)
HiddenButton.AnchorPoint = Vector2.new(1, 0)
HiddenButton.BorderSizePixel = 0
HiddenButton.FontFace = Font.fromName("Inconsolata", Enum.FontWeight.ExtraBold)
HiddenButton.BackgroundTransparency = 0.1
HiddenButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
HiddenButton.TextScaled = true
HiddenButton.TextColor3 = Color3.new(1, 1, 1)

local HideButton = Instance.new("TextButton", HiddenFrame)
HideButton.Size = UDim2.new(0.5, -1, 0, 16)
HideButton.AnchorPoint = Vector2.new(0, 1)
HideButton.Position = UDim2.new(0, 0, 1, 0)
HideButton.BorderSizePixel = 0
HideButton.Font = Enum.Font.Code
HideButton.Text = "Hide Remote"
HideButton.TextSize = 14
HideButton.TextColor3 = Color3.new(1, 1, 1)
HideButton.BackgroundColor3 = Color3.fromRGB(58, 58, 58)

local ShowButton = Instance.new("TextButton", HiddenFrame)
ShowButton.Size = UDim2.new(0.5, -1, 0, 16)
ShowButton.AnchorPoint = Vector2.new(1, 1)
ShowButton.Position = UDim2.new(1, 0, 1, 0)
ShowButton.BorderSizePixel = 0
ShowButton.Font = Enum.Font.Code
ShowButton.Text = "Show Remote"
ShowButton.TextSize = 14
ShowButton.TextColor3 = Color3.new(1, 1, 1)
ShowButton.BackgroundColor3 = Color3.fromRGB(58, 58, 58)

local SelectedRemoteLabel = Instance.new("TextLabel", HiddenFrame)
SelectedRemoteLabel.AnchorPoint = Vector2.new(0, 1)
SelectedRemoteLabel.Position = UDim2.new(0, 0, 1, -16)
SelectedRemoteLabel.Size = UDim2.new(1, 0, 0, 15)
SelectedRemoteLabel.BackgroundTransparency = 1
SelectedRemoteLabel.TextColor3 = Color3.new(1, 1, 1)
SelectedRemoteLabel.Font = Enum.Font.Code
SelectedRemoteLabel.TextSize = 14
SelectedRemoteLabel.Text = ""

for _, connection in pairs(_G.RSpyConnections or {}) do
	connection:Disconnect()
end

_G.RSpyConnections = {}

local function Concat(tab, sep, callback)
	local temp = {}

	for i, value in pairs(tab) do
		table.insert(temp, (callback or tostring)(value, i))
	end

	return table.concat(temp, sep)
end

local function Connect(signal, callback)
	table.insert(_G.RSpyConnections, signal:Connect(callback))
end

local function GetTextBounds(text)
	local params = Instance.new("GetTextBoundsParams")
	params.Size = 14
	params.Width = math.huge
	params.Font = Font.fromEnum(Enum.Font.Code)
	params.Text = text

	return TextService:GetTextBoundsAsync(params)
end

local function ToScript(value, r)
	local t = typeof(value)

	return types[t] ~= nil and types[t](value, r) or tostring(value)
end

local function GetCount(tab)
	local c = 0

	for i, v in pairs(tab) do
		c += 1
	end

	return c
end

types = {
	Instance = function(v)
		local path = {}
		local cur = v

		local function HasSpecial(s:string)
			return (s:match("%c") or s:match("%p") or s:match("%s"))
		end

		while cur ~= game do
			if cur == "nil" then
				return "nil"
			end

			table.insert(path, tostring(cur.ClassName))
			cur = cur.Parent
		end

		local str = string.format("game:GetService(\"%s\")", path[#path])

		for i = #path - 1, 1, -1 do
			str = str .. string.format(HasSpecial(path[i]) and "[\"%s\"]" or ".%s", path[i])
		end

		return str
	end,
	CFrame = function(v)
		return string.format("CFrame.new(%s)", tostring(v))
	end,
	Vector3 = function(v)
		return string.format("Vector3.new(%s)", tostring(v))
	end,
	Vector2 = function(v)
		return string.format("Vector2.new(%s)", tostring(v))
	end,
	Color3 = function(v)
		return string.format("Color3.new(%s)", tostring(v))
	end,
	string = function(v)
		return string.format("\"%s\"", v)
	end,
	UDim = function(v)
		return string.format("UDim.new(%s)", tostring(v))
	end,
	UDim2 = function(v)
		return string.format("UDim2.new(%s, %s, %s, %s)", v.X.Scale, v.X.Offset, v.Y.Scale, v.Y.Offset)
	end,
	BrickColor = function(v)
		return string.format("BrickColor.new(\"%s\")", tostring(v))
	end,
	Ray = function(v)
		return string.format("Ray.new(%s, %s)", ToScript(v.Origin), ToScript(v.Direction))
	end,
	table = function(v, t)
		local display = {}

		t = t or 1

		local tabs = string.rep("\t", t)

		for i, value in pairs(v) do
			local index = string.format("\n%s[%s] = ", tabs, ToScript(i))
			table.insert(display, index .. ToScript(value, (tonumber(t) or 0) + 1))
		end

		return string.format("{%s%s}", Concat(display, ", "), GetCount(v) > 0 and "\n" .. string.rep("\t", t - 1) or "")
	end
}

local highlight = loadstring(game:HttpGet("https://raw.githubusercontent.com/HappySunChild/Lua-RichText-Syntax-Highlighter/main/highlighter.lua"))()

local queue = {}
local scanned = {}
local blocked = {}

local currentSource = ""
local currentRemote = nil

local hiddenOpen = false
local catchIncoming = false

local function SelectRemote(remote)
	currentRemote = remote
	
	SelectedRemoteLabel.Text = remote and tostring(remote) or ""
end

local function SetTitleStatus(status)
	if status then
		Title.Text = "Remote Spy - " .. status
	else
		Title.Text = "Remote Spy"
	end
end

local function GetMethod(remote, outgoing)
	return remote.ClassName:lower() == "remoteevent" and (outgoing and "FireServer" or "FireClient") or (outgoing and "InvokeServer" or "InvokeClient")
end

local function GetSource(remote, args, incoming)
	-- custom concat filter callbacks
	local function varGenerate(value, index)
		return string.format("local v%d = %s", index, ToScript(value))
	end

	local function getVars(value, index)
		return string.format("v%d", index)
	end

	-- the actual generation of the source
	return string.format(" -- script generated automagically\n -- (%s)\n \n%s\nlocal remote = %s\n \nremote:%s(%s)", incoming and "Server -> Client" or "Client -> Server", Concat(args, "\n", varGenerate), ToScript(remote), GetMethod(remote, not incoming), Concat(args, ", ", getVars))
end

local function Display(source)
	for i, line in pairs(Source:GetChildren()) do
		if line:IsA("Frame") then
			line:Destroy()
		end
	end

	local line = 1
	local carryString = false

	source:gsub("[^\r\n]+", function(lineContent)
		local Line = Instance.new("Frame")
		local LineText = Instance.new("TextLabel")
		local Index = Instance.new("TextLabel")
		
		local tabs = 0
		
		lineContent:gsub("%\t", function() tabs += 1 end)

		Line.Parent = Source
		Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Line.BackgroundTransparency = 1.000
		Line.Size = UDim2.new(0, 100 + GetTextBounds(lineContent).X, 0, 14)
		Line.LayoutOrder = line

		LineText.Parent = Line
		LineText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		LineText.BackgroundTransparency = 1.000
		LineText.BorderSizePixel = 0
		LineText.Position = UDim2.new(0, math.max(4 + GetTextBounds(tostring(line)).X, 20) + (15 * tabs), 0, 0)
		LineText.Size = UDim2.new(1, 0, 1, 0)
		LineText.Font = Enum.Font.Code
		LineText.TextColor3 = Color3.fromRGB(249, 249, 249)
		LineText.TextSize = 14.000
		LineText.TextWrapped = false
		LineText.RichText = true
		LineText.TextXAlignment = Enum.TextXAlignment.Left

		Index.Parent = Line
		Index.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Index.BackgroundTransparency = 1.000
		Index.BorderSizePixel = 0
		Index.Size = UDim2.new(1, 0, 1, 0)
		Index.Font = Enum.Font.Code
		Index.Text = line
		Index.TextColor3 = Color3.fromRGB(108, 108, 108)
		Index.TextSize = 14.000
		Index.TextWrapped = false
		Index.TextXAlignment = Enum.TextXAlignment.Left
		
		local text, cs = highlight:GetHighlight(lineContent, carryString)
		LineText.Text = text
		
		carryString = cs
		line += 1
	end)

	Source.CanvasSize = UDim2.fromOffset(SourceList.AbsoluteContentSize.X + 15, SourceList.AbsoluteContentSize.Y + 4)
end

local function ClearSource()
	currentSource = ""

	for i, line in pairs(Source:GetChildren()) do
		if line:IsA("Frame") then
			line:Destroy()
		end
	end

	Source.CanvasSize = UDim2.new(0, 0, 0, 0)
	Source.CanvasPosition = Vector2.new(0, 0)

	SetTitleStatus()
end

local function LogRemote(remote, fromServer, args)
	if fromServer and catchIncoming == false then
		return
	end

	if blocked[remote] then
		return
	end

	local source = GetSource(remote, args, fromServer)

	local RemoteItem = Instance.new("Frame", RemoteScroll)
	local Image = Instance.new("ImageLabel")
	local Button = Instance.new("TextButton")
	local Index = Instance.new("TextLabel")

	RemoteItem.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	RemoteItem.BorderColor3 = Color3.fromRGB(79, 79, 79)
	RemoteItem.Size = UDim2.new(1, 0, 0, 20)
	
	Image.Parent = RemoteItem
	Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Image.BackgroundTransparency = 1.000
	Image.BorderSizePixel = 0
	Image.Size = UDim2.new(0, 20, 0, 20)
	Image.Image = remote.ClassName:lower() == "remoteevent" and "rbxassetid://413369506" or "rbxassetid://413369623"
	Image.ResampleMode = Enum.ResamplerMode.Pixelated

	Button.Parent = RemoteItem
	Button.AnchorPoint = Vector2.new(0, 0)
	Button.BackgroundColor3 = not fromServer and Color3.fromRGB(55, 60, 83) or Color3.fromRGB(65, 83, 57)
	Button.BorderSizePixel = 0
	Button.Position = UDim2.new(0, 25, 0, 0)
	Button.Size = UDim2.new(0.7, 0, 1, 0)
	Button.Font = Enum.Font.SourceSans
	Button.Text = remote.Name
	Button.TextColor3 = Color3.fromRGB(239, 239, 239)
	Button.TextSize = 17.000
	Button.TextTruncate = Enum.TextTruncate.AtEnd

	Index.Parent = RemoteItem
	Index.AnchorPoint = Vector2.new(1, 0)
	Index.BackgroundColor3 = Color3.fromRGB(74, 71, 71)
	Index.BorderSizePixel = 0
	Index.Position = UDim2.new(1, 0, 0, 0)
	Index.Size = UDim2.new(0, 25, 1, 0)
	Index.Font = Enum.Font.SourceSans
	Index.Text = tostring(#RemoteScroll:GetChildren() - 2)
	Index.TextColor3 = Color3.fromRGB(238, 238, 238)
	Index.TextSize = 14.000
	
	Button.MouseButton1Click:Connect(function()
		SetTitleStatus(string.format("Viewing %s @ %s # %s", remote.Name, Index.Text, fromServer and "From Server" or "To Server"))

		currentSource = source
		SelectRemote(remote)

		Display(source)
	end)
	
	RemoteScroll.CanvasSize = UDim2.new(0, 0, 0, List.AbsoluteContentSize.Y + 6)
end

local function CaptureRemote(remote)
	if not scanned[remote] then
		scanned[remote] = true

		if remote.ClassName:lower() == "remoteevent" then
			Connect(remote.OnClientEvent, function(...)
				if not blocked[remote] then
					LogRemote(remote, true, {...})
				end
			end)
		elseif remote.ClassName:lower() == "remotefunction" then
			remote.OnClientInvoke = function(...)
				if not blocked[remote] then
					LogRemote(remote, true, {...})
				end
			end
		end
	end
end

local function AddButton(name, callback)
	local button = Instance.new("TextButton")
	button.Parent = Buttons
	button.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
	button.BorderSizePixel = 0
	button.LayoutOrder = #Buttons:GetChildren() + 1
	button.Size = UDim2.new(0, GetTextBounds(name).X + 4, 1, 0)
	button.Font = Enum.Font.Code
	button.Text = name
	button.TextColor3 = Color3.new(1, 1, 1)
	button.TextSize = 14

	Connect(button.MouseButton1Click, callback)

	return button
end

local function Scan()
	for i, remote in pairs(game:GetDescendants()) do
		CaptureRemote(remote)
	end
end

old = hookmetamethod(game, "__namecall", newcclosure(function(instance: Instance, ...)
	if instance.ClassName:lower() == "remoteevent" or instance.ClassName:lower() == "remotefunction" then
		if not blocked[instance] then
			table.insert(queue, {Instance = instance, Arguments = {...}})
		end
	end

	return (_G.RSpyOldNamecall or old)(instance, ...)
end))
--[[
if not _G.RSpyOldNamecall then -- allows multiple calls but may mess up any other scripts this is ran with (mainly testing purposes)
	_G.RSpyOldNamecall = old
end]]

Connect(RunService.Stepped, function()
	while #queue > 0 do
		local remote = table.remove(queue, 1)

		LogRemote(remote.Instance, false, remote.Arguments) -- all remotes in queue are automatically from the client
	end
end)

AddButton("Clear Log", function()
	for _, v in pairs(RemoteScroll:GetChildren()) do
		if v:IsA("Frame") then
			v:Destroy()
		end
	end

	ClearSource()

	RemoteScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
	RemoteScroll.CanvasPosition = Vector2.zero
end)

AddButton("Clear Source", function()
	ClearSource()
end)

AddButton("Execute Source", function()
	pcall(loadstring(currentSource))

	StarterGui:SetCore("SendNotification", {
		Title = "Executed",
		Text = "Executed current source.",
		Duration = 1
	})
end)

AddButton("Copy Source", function()
	StarterGui:SetCore("SendNotification", {
		Title = "Saved",
		Text = "Saved current source to clipboard.",
		Duration = 1
	})

	setclipboard(currentSource)
end)

local button
button = AddButton("Catch Incoming", function()
	catchIncoming = not catchIncoming

	button.TextColor3 = catchIncoming and Color3.new(0, 1, 0) or Color3.new(1, 0, 0)
end)
button.TextColor3 = Color3.new(1, 0, 0)

Connect(HiddenButton.MouseButton1Click, function()
	hiddenOpen = not hiddenOpen
	HiddenButton.Text = hiddenOpen and ">" or "<"

	if not hiddenOpen then
		TweenService:Create(HiddenFrame, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {AnchorPoint = Vector2.zero}):Play()
	else
		TweenService:Create(HiddenFrame, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {AnchorPoint = Vector2.new(1, 0)}):Play()
	end
end)

Connect(HideButton.MouseButton1Click, function()
	if currentRemote and not blocked[currentRemote] then
		local remote = currentRemote

		local RemoteItem = Instance.new("Frame", HiddenScroll)
		local Image = Instance.new("ImageLabel")
		local Button = Instance.new("TextButton")

		RemoteItem.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
		RemoteItem.BorderColor3 = Color3.fromRGB(79, 79, 79)
		RemoteItem.Size = UDim2.new(1, -8, 0, 20)
		
		Image.Parent = RemoteItem
		Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Image.BackgroundTransparency = 1.000
		Image.BorderSizePixel = 0
		Image.Size = UDim2.new(0, 20, 0, 20)
		Image.Image = currentRemote.ClassName:lower() == "remoteevent" and "rbxassetid://413369506" or "rbxassetid://413369623"
		Image.ResampleMode = Enum.ResamplerMode.Pixelated

		Button.Parent = RemoteItem
		Button.BackgroundColor3 = Color3.new(0.113725, 0.113725, 0.113725)
		Button.BorderSizePixel = 0
		Button.Position = UDim2.new(0, 25, 0, 0)
		Button.Size = UDim2.new(1, -25, 1, 0)
		Button.Font = Enum.Font.SourceSans
		Button.Text = currentRemote.Name
		Button.TextColor3 = Color3.fromRGB(239, 239, 239)
		Button.TextSize = 17.000
		Button.TextTruncate = Enum.TextTruncate.AtEnd

		Button.MouseButton1Click:Connect(function()
			SelectRemote(remote)
		end)

		blocked[currentRemote] = {ListItem = RemoteItem}

		SelectRemote(nil)
	end
end)

Connect(ShowButton.MouseButton1Click, function()
	if currentRemote and blocked[currentRemote] then
		blocked[currentRemote].ListItem:Destroy()
		blocked[currentRemote] = nil

		SelectRemote(nil)
	end
end)

Connect(game.DescendantAdded, function(child)
	if child.ClassName:lower() == "remoteevent" or child.ClassName:lower() == "remotefunction" then
		CaptureRemote(child)
	end
end)

Scan()

return RemoteSpy
