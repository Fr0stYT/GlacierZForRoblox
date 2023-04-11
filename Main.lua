-- Load the required libraries
local gui = require("gui")
local keyboard = require("keyboard")

-- Define the GUIs
local gui1 = gui.new(4, 1)
local gui1 = gui.position (0, 255, 0)
local gui1 = gui.color(5, 204, 240)
gui1:addLabel("Combat")
gui1:addDropdown({"Reach", "KillAura", "NoClickDelay", "ProjectileExploit"})

local gui2 = gui.new(4, 1)
local gui2 = gui.position (0, 259, 1)
local gui2 = gui.color(5, 204, 240)
gui2:addLabel("Utility")
gui2:addDropdown({"GlowESP", "PlasmaAura", "Zoom", "SeeInventory" , "AutoToxic" , "Nuker" , "AutoTool"})

local gui3 = gui.new(4, 1)
local gui3 = gui.position (0, 263, 2)
local gui3 = gui.color(5, 204, 240)
gui3:addLabel("World")
gui3:addDropdown({"Hitbox", "StudAntiVoid", "Scaffold", "BetterScaffold"})

local gui4 = gui.new(4, 1)
local gui4 = gui.position (0, 267, 3)
local gui4 = gui.color(5, 204, 240)
gui4:addLabel("Misc")
gui4:addDropdown({"Speed", "Nametag", "Chattag"})

local gui5 = gui.new(4, 1)
local gui5 = gui.position (0, 271, 4)
local gui5 = gui.color(5, 204, 240)
gui5:addLabel("Player")
gui5:addDropdown({"Fly", "Inf Jump", "AutoJump", "Autowin"})

-- Define the show/hide function
local function toggleGUI(gui)
  if gui:isVisible() then
    gui:hide()
  else
    gui:show()
  end
end

-- Bind the "F1" key to show/hide GUI 1
keyboard.bind("LSHIFT", function()
  toggleGUI(gui1)
end)

-- Bind the "F2" key to show/hide GUI 2
keyboard.bind("LSHIFT", function()
  toggleGUI(gui2)
end)

-- Bind the "F3" key to show/hide GUI 3
keyboard.bind("LSHIFT", function()
  toggleGUI(gui3)
end)

-- Bind the "F4" key to show/hide GUI 4
keyboard.bind("LSHIFT", function()
  toggleGUI(gui4)
end)

-- Bind the "F5" key to show/hide GUI 5
keyboard.bind("LSHIFT", function()
  toggleGUI(gui5)
end)
