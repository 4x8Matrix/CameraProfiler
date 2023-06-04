local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

ReplicatedStorage:WaitForChild("DevPackages")
ReplicatedStorage.DevPackages:WaitForChild("TestEz")
ReplicatedStorage.DevPackages:WaitForChild("EmoticonReporter")

local EmoticonReporter = require(ReplicatedStorage.DevPackages.EmoticonReporter)
local TestEz = require(ReplicatedStorage.DevPackages.TestEz)

if RunService:IsStudio() and not script.Parent.Development.Enabled then
	local Reporter = EmoticonReporter.new()

	TestEz.TestBootstrap:run({
		ReplicatedStorage.UnitTests,
		ReplicatedStorage.Packages.CameraProfiler
	}, Reporter)

	Reporter:Print()
end
