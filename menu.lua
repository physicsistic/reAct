-----------------------------------------------------------------------------------------
--
-- menu.lua
--
-- Welcome screen for the game. Options to go to the menu or to play game.
--
-----------------------------------------------------------------------------------------

local storyboard = require("storyboard")
local scene = storyboard.newScene()

function  scene:createScene(event)
	local group = self.view

end


function scene:enterScene( event )
	local group = self.view

	timer.performWithDelay( 500, goToMenu, 1 )
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