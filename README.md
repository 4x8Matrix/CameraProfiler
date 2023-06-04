# CameraProfiler

CameraProfiler takes a slight twist on the Camera system Roblox has implemented, allowing developers to take advantage over multiple camera instances instead of a single instance..

```lua
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local CameraProfiler = require(ReplicatedStorage.Packages.CameraProfiler)

local cameraObject = CameraProfiler.Camera.new("CameraTest")

function cameraObject:OnRenderStepped()
	self.Instance.CFrame = CFrame.new()
end

function cameraObject:OnActivated()
	print("Camera Activated!")
end

function cameraObject:OnDeactivated()
	print("Camera Deactivated!")
end

CameraProfiler:SetActiveCamera("CameraTest")
```