
-- Objects

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
local ClearLog = Instance.new("TextButton")
local ButtonList = Instance.new("UIListLayout")
local CopySource = Instance.new("TextButton")
local ScanRemotes = Instance.new("TextButton")
local ExecuteSource = Instance.new("TextButton")
local CatchIncoming = Instance.new("TextButton")

RemoteSpy.Name = "RemoteSpy"
RemoteSpy.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
RemoteSpy.DisplayOrder = 1

Main.Name = "Main"
Main.Parent = RemoteSpy
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Main.BorderColor3 = Color3.fromRGB(23, 24, 30)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 650, 0, 350)

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

ClearLog.Name = "ClearLog"
ClearLog.Parent = Buttons
ClearLog.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
ClearLog.BorderSizePixel = 0
ClearLog.LayoutOrder = 1
ClearLog.Size = UDim2.new(0, 60, 1, 0)
ClearLog.Font = Enum.Font.SourceSans
ClearLog.Text = "Clear Logs"
ClearLog.TextColor3 = Color3.fromRGB(245, 245, 245)
ClearLog.TextSize = 14.000

ButtonList.Name = "ButtonList"
ButtonList.Parent = Buttons
ButtonList.FillDirection = Enum.FillDirection.Horizontal
ButtonList.SortOrder = Enum.SortOrder.LayoutOrder
ButtonList.Padding = UDim.new(0, 3)

CopySource.Name = "CopySource"
CopySource.Parent = Buttons
CopySource.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
CopySource.BorderSizePixel = 0
CopySource.LayoutOrder = 2
CopySource.Size = UDim2.new(0, 70, 1, 0)
CopySource.Font = Enum.Font.SourceSans
CopySource.Text = "Copy Source"
CopySource.TextColor3 = Color3.fromRGB(245, 245, 245)
CopySource.TextSize = 14.000

ScanRemotes.Name = "ScanRemotes"
ScanRemotes.Parent = Buttons
ScanRemotes.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
ScanRemotes.BorderSizePixel = 0
ScanRemotes.LayoutOrder = 4
ScanRemotes.Size = UDim2.new(0, 65, 1, 0)
ScanRemotes.Font = Enum.Font.SourceSans
ScanRemotes.Text = "Scan Game"
ScanRemotes.TextColor3 = Color3.fromRGB(245, 245, 245)
ScanRemotes.TextSize = 14.000

ExecuteSource.Name = "ExecuteSource"
ExecuteSource.Parent = Buttons
ExecuteSource.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
ExecuteSource.BorderSizePixel = 0
ExecuteSource.LayoutOrder = 3
ExecuteSource.Size = UDim2.new(0, 85, 1, 0)
ExecuteSource.Font = Enum.Font.SourceSans
ExecuteSource.Text = "Execute Source"
ExecuteSource.TextColor3 = Color3.fromRGB(245, 245, 245)
ExecuteSource.TextSize = 14.000

CatchIncoming.Name = "CatchIncoming"
CatchIncoming.Parent = Buttons
CatchIncoming.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
CatchIncoming.BorderSizePixel = 0
CatchIncoming.LayoutOrder = 4
CatchIncoming.Size = UDim2.new(0, 105, 1, 0)
CatchIncoming.Font = Enum.Font.SourceSans
CatchIncoming.Text = "Incoming Requests"
CatchIncoming.TextColor3 = Color3.fromRGB(255, 0, 0)
CatchIncoming.TextSize = 14.000

local player = game:GetService("Players").LocalPlayer
local highlight = loadstring(game:HttpGet("https://raw.githubusercontent.com/HappySunChild/Lua-RichText-Syntax-Highlighter/main/highlighter.lua"))()

local TextService = game:GetService("TextService")
local RunService = game:GetService("RunService")

local function HasNonAlphanumericCharacter(str: string)
	return (str:match("%c") or str:match("%p") or str:match("%s"))
end

local function GetPath(instance: Instance)
	local cur = instance
	local str = ""
	local path = {}
	
	while cur ~= game do
		if cur == nil then
			return "nil instance"
		end
		
		table.insert(path, tostring(cur.Name))
		cur = cur.Parent
	end
	
	str = string.format("game:GetService(\"%s\")", path[#path])
	
	for i = #path - 1, 1, -1 do
		str = str .. (HasNonAlphanumericCharacter(path[i]) and string.format("[\"%s\"]", path[i]) or string.format(".%s", path[i]))
	end
	
	return str
end

local function ConvertToScriptVariable(value: any)
	local _type = typeof(value)

	return types[_type] ~= nil and types[_type](value) or tostring(value)
end

types = {
	Instance = function(v)
		return GetPath(v)
	end,
	CFrame = function(v)
		return string.format("CFrame.new(%s)", tostring(v))
	end,
	Vector3 = function(v)
		return string.format("Vector3.new(%s)", tostring(v))
	end,
	BrickColor = function(v)
		return string.format("BrickColor.new(\"%s\")", tostring(v))
	end,
	Color3 = function(v)
		return string.format("Color3.new(%s)", tostring(v))
	end,
	string = function(v)
		return string.format("\"%s\"", v)
	end,
	table = function(v)
		local display = {}
		
		for i:number|string, value in pairs(v) do
			local index = string.format("\n\t[%s] = ", type(i) == "number" and tostring(i) or string.format("\"%s\"", tostring(i)))
			table.insert(display, index .. ConvertToScriptVariable(value))
		end
		
		return string.format("\n{%s}\n", table.concat(display, ", "))
	end,
}

local queue = {}
local remotes = {}
local selectedRemote = nil
local currentSource = ""

local logIncoming = false

local gamemeta = getrawmetatable(game)
local gamemeta_namecall = gamemeta.__namecall

setreadonly(gamemeta, false)

local function GetTextBounds(text: string)
	local params = Instance.new("GetTextBoundsParams")
	params.Size = 14
	params.Width = math.huge
	params.Font = Font.fromEnum(Enum.Font.Code)
	params.Text = text

	return TextService:GetTextBoundsAsync(params)
end

local function DisplaySource(source: string)
	for i, line in pairs(Source:GetChildren()) do
		if line:IsA("Frame") then
			line:Destroy()
		end
	end
	
	local line = 1
	local carryString = false
	
	currentSource = source
	
	source:gsub("[^\r\n]+", function(content)
		local Line = Instance.new("Frame")
		local LineText = Instance.new("TextLabel")
		local Index = Instance.new("TextLabel")
		
		local tabs = 0
		
		content:gsub("%\t", function() tabs += 1 end)

		Line.Name = "Line"
		Line.Parent = Source
		Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Line.BackgroundTransparency = 1.000
		Line.Size = UDim2.new(0, 100 + GetTextBounds(content).X, 0, 14)
		Line.LayoutOrder = line

		LineText.Name = "LineText"
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

		Index.Name = "Index"
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
		
		local text, cs = highlight:GetHighlight(content, carryString)
		LineText.Text = text
		
		carryString = cs
		line += 1
	end)
	
	Source.CanvasSize = UDim2.fromOffset(SourceList.AbsoluteContentSize.X + 15, SourceList.AbsoluteContentSize.Y + 4)
end

local function SaveSourceToClipboard()
	if setclipboard and currentSource then
		setclipboard(currentSource)
	end
end

local function Execute()
	pcall(function()
		loadstring(currentSource)()
	end)
end

local function GetMethod(remote: RemoteEvent|RemoteFunction, incoming: boolean?)
	return remote.ClassName:lower() == "remoteevent" and (incoming and "FireClient" or "FireServer") or (incoming and "InvokeClient" or "InvokeServer")
end

local function LogRemote(remote: RemoteEvent|RemoteFunction, incoming: boolean, ...)
	if logIncoming == false and incoming == true then
		return
	end
	
	local remoteSource = string.format(" -- autogenerated (expect bugs)\n -- %s remote log\n \n", incoming and "server -> client" or "client -> server")
	local args = {}
	
	for i, value in pairs({...}) do
		remoteSource = remoteSource .. string.format("local a%d = %s\n", i, tostring(ConvertToScriptVariable(value)))
		table.insert(args, "a" .. i)
	end
	
	remoteSource = remoteSource .. string.format("\n \nlocal remote = %s\nremote:%s(%s)", GetPath(remote), GetMethod(remote, incoming), table.concat(args, ", "))
	
	local RemoteItem = Instance.new("Frame", RemoteScroll)
	local Image = Instance.new("ImageLabel")
	local Button = Instance.new("TextButton")
	local Index = Instance.new("TextLabel")

	RemoteItem.Name = "RemoteItem"
	RemoteItem.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	RemoteItem.BorderColor3 = Color3.fromRGB(79, 79, 79)
	RemoteItem.Size = UDim2.new(1, 0, 0, 20)
	
	Image.Name = "Image"
	Image.Parent = RemoteItem
	Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Image.BackgroundTransparency = 1.000
	Image.BorderSizePixel = 0
	Image.Size = UDim2.new(0, 20, 0, 20)
	Image.Image = remote.ClassName:lower() == "remoteevent" and "rbxassetid://413369506" or "rbxassetid://413369623"
	Image.ResampleMode = Enum.ResamplerMode.Pixelated

	Button.Name = "Button"
	Button.Parent = RemoteItem
	Button.AnchorPoint = Vector2.new(0, 0)
	Button.BackgroundColor3 = not incoming and Color3.fromRGB(55, 60, 83) or Color3.fromRGB(65, 83, 57)
	Button.BorderSizePixel = 0
	Button.Position = UDim2.new(0, 25, 0, 0)
	Button.Size = UDim2.new(0.7, 0, 1, 0)
	Button.Font = Enum.Font.SourceSans
	Button.Text = remote.Name
	Button.TextColor3 = Color3.fromRGB(239, 239, 239)
	Button.TextSize = 17.000
	Button.TextTruncate = Enum.TextTruncate.AtEnd

	Index.Name = "Index"
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
		selectedRemote = remotes[remote]
		
		DisplaySource(remoteSource)
	end)
	
	RemoteScroll.CanvasSize = UDim2.new(0, 0, 0, List.AbsoluteContentSize.Y + 6)
end

local function CaptureRemote(remote: RemoteEvent|RemoteFunction)
	if remotes[remote] then return end
	
	local newRemote = {}
	newRemote.Remote = remote
	newRemote.Ignore = false
	
	remote.Destroying:Connect(function()
		remotes[remote] = nil
	end)
	
	if remote:IsA("RemoteEvent") then
		remote.OnClientEvent:Connect(function(...)
			if not newRemote.Ignore then
				LogRemote(remote, true, ...)
			end
		end)
	elseif remote:IsA("RemoteFunction") then
		remote.OnClientInvoke = function(...)
			LogRemote(remote, true, ...)
		end
	end
	
	remotes[remote] = newRemote
end

local function ScanForRemotes(instance)
	instance = instance or game
	
	for i, v in pairs(instance:GetDescendants()) do
		if v:IsA("RemoteEvent") or v:IsA("RemoteFunction") then
			CaptureRemote(v)
		end
	end
end

local function ClearLogs()
	for i, v in pairs(RemoteScroll:GetChildren()) do
		if v:IsA("Frame") then
			v:Destroy()
		end
	end
end

CopySource.MouseButton1Click:Connect(SaveSourceToClipboard)
ExecuteSource.MouseButton1Click:Connect(Execute)
ClearLog.MouseButton1Click:Connect(ClearLogs)
ScanRemotes.MouseButton1Click:Connect(ScanForRemotes)

CatchIncoming.MouseButton1Click:Connect(function()
	logIncoming = not logIncoming
	
	CatchIncoming.TextColor3 = logIncoming and Color3.new(0, 1, 0) or Color3.new(1, 0, 0)
end)

RunService.Stepped:Connect(function()
	while #queue > 0 do
		local remote = table.remove(queue, 1)
		
		CaptureRemote(remote.Remote)
		LogRemote(remote.Remote, false, unpack(remote.Arguments))
	end
end)

local on_namecall = function(instance, ...)
	local method: string = getnamecallmethod()

	if method:lower():match("server") then
		table.insert(queue, {Remote = instance, Arguments = {...}}) -- cant directly call CaptureRemote or LogRemote because this is ran within an environment that doesn't allow them
	end

	return gamemeta_namecall(instance, ...)
end

gamemeta.__namecall = on_namecall

ScanForRemotes()

return RemoteSpy
