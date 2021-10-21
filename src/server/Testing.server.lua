-- Testing Script being worked on... (draft)

local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local WaitForChild = require(ReplicatedStorage.Utils.BetterWaitForChild)

local Parent = Instance.new("Folder")
Parent.Parent = Workspace

task.defer(function()
	WaitForChild(Parent, "Child")
	print("Child retrieved!")
end)

task.wait(5)

local Child = Instance.new("Folder")
Child.Name = "..."
Child.Parent = Parent
print("Child's parent set to Parent, Name is ...")

task.wait(1)

local ChildInstantRenameAndReParentTest do
	--[[
		```lua
		Child.Name = "Child"
		Child.Parent = Workspace
		print("Child should not be retrieved!")
		```
	]]

	-- This will print 'Child retrieved', sadly I can't do anything about this
	-- unless I would wanna make the function not instantenous.
	-- I think actually this might kind of be what a lot of people would
	-- have expected.
end


local ReParentTest do
	--[[
		```lua
		Child.Parent = Workspace
		Child.Name = "Child"

		task.wait(1)

		Child.
		```
	]]
end