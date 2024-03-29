-----------------------------------------------------------------------------------------
--
-- welcome.lua
--
-- Welcome screen for the game. Options to go to the Details or to play game.
--
-----------------------------------------------------------------------------------------

-- Libraries
local storyboard = require "storyboard" 
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
	group:insert(background)


	-- Function to handle button events
	local function onPlayPressed( event )
	    if event.phase == "ended" then
	    	if upapi.isLoggedIn() then
	    	    storyboard.gotoScene("game")
	    	else
	    		storyboard.gotoScene("loginScreen")
	    	end
    	end
	end
	-- Function to handle button events
	local function onDetailsPressed(event)
	    if event.phase == "ended" then
    	    if upapi.isLoggedIn() then
    	    	storyboard.gotoScene("details")
    	    else
    	    	storyboard.gotoScene("loginScreen")
    	    end
    	end
	end


	local function displayButtons()
		-- Create the play button
		playButton = widget.newButton {
			left = display.contentWidth * 1/5,
			top = (display.contentHeight - iconNum * iconHeight - (iconNum - 1) * iconSep) / 2,
			width = iconWidth,
			height = iconHeight,
			defaultFile = "play_icon.png",
			id = "play_icon",
			onEvent = onPlayPressed,
		}
		-- Create the details button
		detailsButton = widget.newButton {
			left = display.contentWidth * 1/5,
			top = (display.contentHeight - iconNum * iconHeight - (iconNum - 1) * iconSep) / 2 + iconSep + iconHeight,
			width = iconWidth,
			height = iconHeight,
			defaultFile = "details_icon.png",
			id = "details_icon",
			onEvent = onDetailsPressed,
		}

		group:insert(playButton)
		group:insert(detailsButton)
	end
	

	-- Play button label
	local function printLabels()
		playButtonLabel = display.newText("play", 0, 0, storyboard.states.font.bold, 32)
		playButtonLabel:setReferencePoint(display.CenterLeftReferencePoint)
		playButtonLabel.y = playButton.y
		playButtonLabel.x = playButton.x + playButton.width*0.75
		playButtonLabel:setTextColor(60,60,60)
		group:insert(playButtonLabel)

		detailsButtonLabel = display.newText("menu", 0, 0, storyboard.states.font.bold, 32)
		detailsButtonLabel:setReferencePoint(display.CenterLeftReferencePoint)
		detailsButtonLabel.y = detailsButton.y
		detailsButtonLabel.x = detailsButton.x + detailsButton.width*0.75
		detailsButtonLabel:setTextColor(60,60,60)
		group:insert(detailsButtonLabel)
	end

	timer.performWithDelay(75, displayButtons)
	timer.performWithDelay(100, printLabels)

	
end

function scene:enterScene( event )
	local group = self.view	
end

function scene:exitScene( event )
	local group = self.view
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