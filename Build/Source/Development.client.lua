local ReplicatedStorage = game:GetService("ReplicatedStorage")

ReplicatedStorage:WaitForChild("Packages")
ReplicatedStorage.Packages:WaitForChild("CameraProfiler")

local CameraProfiler = require(ReplicatedStorage.Packages.CameraProfiler)

local cameraObject = CameraProfiler.Camera.new("CameraTest")

CameraProfiler.Camera.new("CameraTest2")

function cameraObject:OnActivated()
	print("Camera Activated!")
end

function cameraObject:OnDeactivated()
	print("Camera Deactivated!")
end

CameraProfiler:SetActiveCamera("CameraTest")
CameraProfiler:SetActiveCamera("CameraTest2")