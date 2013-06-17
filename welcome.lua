-----------------------------------------------------------------------------------------
--
-- welcome.lua
--
-- Welcome screen for the game. Options to go to the Details or to play game.
--
-----------------------------------------------------------------------------------------

-- Libraries
local storyboard = require( "storyboard" )
local widget = require( "widget" )
local upapi = require "upapi"
local math = require( "math")

-- Local variables for parameters in this screen
local iconWidth = math.round(display.contentHeight / 6)
local iconHeight = iconWidth
local iconSep = math.round(iconHeight / 5)
local iconNum = 2

-- Initialize New Scene
local scene = storyboard.newScene()
storyboard.purgeOnSceneChange = true


--
function scene:createScene( event )
	local group = self.view

	-- Background Color
	local background = display.newRect(0,0,display.contentWidth,display.contentHeight)
	background:setFillColor(230,230,230)

	-- Function to handle button events
	local function onPlayPressed( event )
    	local phase = event.phase 

	    if phase == "ended" then
    	    storyboard.gotoScene("game")
    	end

    	return true
	end

	-- Create the play button
	local playButton = widget.newButton {
		left = display.contentWidth * 1/5,
		top = (display.contentHeight - iconNum * iconHeight - (iconNum - 1) * iconSep) / 2,
		width = iconWidth,
		height = iconHeight,
		defaultFile = "play_icon.png",
		id = "play_icon",
		onEvent = onPlayPressed,
	}

	-- Function to handle button events
	local function onDetailsPressed(event)
    	local phase = event.phase 

	    if phase == "ended" then

    	    if upapi.isLoggedIn() then
    	    	storyboard.gotoScene("details")
    	    else
    	    	storyboard.gotoScene("loginScreen")
    	    end

    	end

    	return true
	end

	-- Create the play button
	local detailsButton = widget.newButton {
		left = display.contentWidth * 1/5,
		top = (display.contentHeight - iconNum * iconHeight - (iconNum - 1) * iconSep) / 2 + iconSep + iconHeight,
		width = iconWidth,
		height = iconHeight,
		defaultFile = "details_icon.png",
		id = "details_icon",
		onEvent = onDetailsPressed,
	}


	group:insert(background)
	group:insert(playButton)
	group:insert(detailsButton)

	
end

function scene:enterScene( event )
	local group = self.view
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