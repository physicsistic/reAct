-----------------------------------------------------------------------------------------
--
-- menu.lua
--
-- Welcome screen for the game. Options to go to the menu or to play game.
--
-----------------------------------------------------------------------------------------

local storyboard = require("storyboard")
local json = require("json")

local upapi = require "upapi"
local scene = storyboard.newScene()

local textBackgroundHeight = math.round(display.contentHeight / 12)
local textBackgroundWidth = display.contentWidth / 2
local fieldSeparationHeight = display.contentHeight / 12
local logoutButtonHeight = math.round(textBackgroundHeight * 0.8)
local logoutButtonWidth = math.round(display.contentWidth / 3)

function  scene:createScene(event)
	print("details page")
	local group = self.view
	local background = display.newRect( group, 0, 0, display.contentWidth, display.contentHeight)
	background:setFillColor( 230, 230, 230 )
	userInfo = upapi.readFile(storyboard.states.userInfoFilePath)
	userInfoJSON = json.decode(userInfo)
	local firstName = userInfoJSON["user"]["first"]
	local lastName = userInfoJSON["user"]["last"]

	local firstNameDisplay = display.newText( group, firstName, 0, 0, native.systemFont, 36)
	firstNameDisplay:setTextColor( 30, 30, 30 )
	firstNameDisplay:setReferencePoint(display.CenterReferencePoint)
	firstNameDisplay.x = display.contentWidth/2
	firstNameDisplay.y = display.contentHeight/2

	-- Logout button display
	function logoutHandler( event )
		upapi.logout()
		storyboard.gotoScene("welcome")
	end

	logoutButton = display.newGroup()
	logoutBackground = display.newRoundedRect(group, 0, 0, logoutButtonWidth, logoutButtonHeight, logoutButtonHeight/2)
	logoutBackground:setFillColor(250, 119, 91)
	local logoutLabel = display.newText(group, "logout", 0, 0, native.systemFontBold, logoutTextSize)
	logoutLabel:setTextColor(230,230,230)
	logoutLabel:setReferencePoint(display.BottomCenterReference)
	logoutButton.x = display.contentWidth / 2
	logoutButton.y = display.contentHeight - logoutButtonHeight * 1.75
	logoutButton:insert(logoutLabel, true)
	logoutButton:insert(1, logoutBackground, true)
	logoutBackground:addEventListener("touch", logoutHandler)
	group:insert(logoutButton)


	local function cardiacEventsCallback(callbackError, result)
		if not loginError then 
			eventsData = json.decode(result)
			print(result)
		else
			print("Error in getting cardiac_events data.")
		end
	end 

	upapi.getUserMetrics("meals", cardiacEventsCallback)


		-- local text = display.newText(userInfo, 0,0,native.systemFont,9)
	
end


function scene:enterScene( event )
	local group = self.view
	storyboard.purgeScene( "loginScreen" )

	-- Create user on Firebase
	local xid = upapi.readFile(storyboard.states.userXIDPath)
	print("xid registered on the details page is = " .. xid)
	upapi.createFirebaseUser(xid)
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