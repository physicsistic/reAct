-----------------------------------------------------------------------------------------
--
-- welcome.lua
--
-- Welcome screen for the game. Options to go to the menu or to play game.
--
-----------------------------------------------------------------------------------------

-- Libraries
local storyboard = require( "storyboard" )
local widget = require( "widget" )

-- Global Variables
local iconWidth = 144
local iconHeight = 144
local iconSep = 24
local iconNum = 2

-- Initialize New Scene
local scene = storyboard.newScene()



function scene:createScene(event)
	local group = self.view

	-- Background Color
	local background = display.newRect(0,0,display.contentWidth,display.contentHeight)
	background:setFillColor(230,230,230)

	-- Function to handle button events
	local function onPlayPressed(event)
    	local phase = event.phase 

	    if phase == "ended" then
    	    storyboard.gotoScene("game", "flip", 250)
    	end
	end

	-- Create the play button
	local playButton = widget.newButton {
		left = display.contentWidth * 1/5,
		top = (display.contentHeight - iconNum * iconHeight/2 - (iconNum - 1) * iconSep/2)/2,
		width = iconWidth/2,
		height = iconHeight/2,
		defaultFile = "play_icon.png",
		id = "play_icon",
		onEvent = onPlayPressed,
	}

	-- Function to handle button events
	local function onMenuPressed(event)
    	local phase = event.phase 

	    if phase == "ended" then
    	    storyboard.gotoScene("menu", "flip", 250)
    	end
	end

	-- Create the play button
	local menuButton = widget.newButton {
		left = display.contentWidth * 1/5,
		top = (display.contentHeight - iconNum * iconHeight/2 - (iconNum - 1) * iconSep/2)/2 + iconHeight/2+iconSep/2,
		width = iconWidth/2,
		height = iconHeight/2,
		defaultFile = "menu_icon.png",
		id = "menu_icon",
		onEvent = onMenuPressed,
	}

end

function scene:enterScene( event )
	local group = self.view

	timer.performWithDelay( 500, goToMenu, 1 )
end

function scene:exitScene( event )
	local group = self.view
	
	-- INSERT code here (e.g. stop timers, remove listenets, unload sounds, etc.)
end

function scene:destroyScene( event )
	local group = self.view
	
end


-----------------------------------------------------------------------------------------
-- Event Listeners
-----------------------------------------------------------------------------------------

scene:addEventListener( "createScene", scene )

scene:addEventListener( "enterScene", scene )

scene:addEventListener( "exitScene", scene )

scene:addEventListener( "destroyScene", scene )

-----------------------------------------------------------------------------------------

return scene