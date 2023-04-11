-- Load the required libraries
local gui = require("gui")
local keyboard = require("keyboard")

-- Define the GUIs
local gui1 = gui.new(4, 1)
gui1:addLabel("Combat")
gui1:addDropdown({"Reach", "KillAura", "NoClickDelay", "ProjectileExploit"})

local gui2 = gui.new(4, 1)
gui2:addLabel("Utility")
gui2:addDropdown({"GlowESP", "PlasmaAura", "Zoom", "SeeInventory" , "AutoToxic" , "Nuker" , "AutoTool"})

local gui3 = gui.new(4, 1)
gui3:addLabel("World")
gui3:addDropdown({"Hitbox", "StudAntiVoid", "Scaffold", "BetterScaffold"})

local gui4 = gui.new(4, 1)
gui4:addLabel("GUI 4")
gui4:addDropdown({"Option 1", "Option 2", "Option 3", "Option 4"})

local gui5 = gui.new(4, 1)
local gui5 = gui.position (0, 255, 0)
local gui5 = gui.color(.
gui5:addLabel("GUI 5")
gui5:addDropdown({"Option 1", "Option 2", "Option 3", "Option 4"})

-- Define the show/hide function
local function toggleGUI(gui)
  if gui:isVisible() then
    gui:hide()
  else
    gui:show()
  end
end

-- Bind the "F1" key to show/hide GUI 1
keyboard.bind("F1", function()
  toggleGUI(gui1)
end)

-- Bind the "F2" key to show/hide GUI 2
keyboard.bind("F2", function()
  toggleGUI(gui2)
end)

-- Bind the "F3" key to show/hide GUI 3
keyboard.bind("F3", function()
  toggleGUI(gui3)
end)

-- Bind the "F4" key to show/hide GUI 4
keyboard.bind("F4", function()
  toggleGUI(gui4)
end)

-- Bind the "F5" key to show/hide GUI 5
keyboard.bind("F5", function()
  toggleGUI(gui5)
end)
