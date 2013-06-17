-----------------------------------------------------------------------------------------
--
-- loginScreen.lua
--
-- Login screen for the user authentification process
--
-----------------------------------------------------------------------------------------

local storyboard = require( "storyboard" )
local math = require( "math" )
local json = require( "json" )
local upapi = require "upapi"

local scene = storyboard.newScene()
storyboard.purgeOnSceneChange = true


-- Resolution properties
local pixelPerInch = 163
local pointPerInch = 72
local pointPerPixel = pointPerInch / pointPerInch


-- Display object properties
local textBackgroundHeight = math.round(display.contentHeight / 12)
local textBackgroundWidth = display.contentWidth / 2
local fieldSeparationHeight = display.contentHeight / 12

local loginButtonHeight = math.round(textBackgroundHeight * 0.8)
local loginButtonWidth = math.round(display.contentWidth / 3)
local fieldFontSize = math.round(textBackgroundHeight * 0.8 * pointPerPixel)
local fieldLabelFontSize = math.round(fieldFontSize * 0.8)
local loginTextSize = math.round(loginButtonHeight * 0.5 * pointPerPixel)


-- A place holder for storing information user submitted
local credentials = {
	pwd = nil,
	email = nil
}

----------------------------------------------------------------------------------
-- 
--	NOTE:
--	
--	Code outside of listener functions (below) will only be executed once,
--	unless storyboard.removeScene() is called.
-- 
---------------------------------------------------------------------------------


---------------------------------------------------------------------------------
-- BEGINNING OF IMPLEMENTATION
---------------------------------------------------------------------------------

-- Called when the scene's view does not exist:
function scene:createScene( event )
	local group = self.view


	-- Email Listener
	function emailListener( event )
    	if event.phase == "editing" then
	    	credentials.email = event.text
	        print( credentials.email )
	    elseif event.phase == "ended" then
	    	native.setKeyboardFocus( nil ) 
	    end
	end

	-- Password Listener
	function pwdListener( event )
		if event.phase == "editing" then
	    	credentials.pwd = event.text
	        print( credentials.pwd )
	    elseif event.phase == "ended" then
	    	native.setKeyboardFocus( nil ) 
	    end
	end

	

	-- Login button handler
	function loginHandler( event )
		local loginInfoExist = true
		if event.phase == "ended" then
			if credentials.pwd == nil or credentials.email == nil then
				print("Missing credentials for login.")
				loginInfoExist = false
				
			end

		end


		print(credentials.pwd .. "   " .. credentials.email)

		if loginInfoExist == true then
			local loginSucceeded = nil 
			-- Login callback
			local function loginCallback(loginError, result)
				if not loginError then
					upapi.writeFile(storyboard.states.userInfoFilePath, result)
					response = json.decode(result)
					local token = response["token"]
					local xid = response["user"]["xid"]
					upapi.writeFile(storyboard.states.userXIDPath, xid)

					print("login token = " .. token)
					print("user xid = " .. xid)
					upapi.writeFile(storyboard.states.upAPILoginTokenPath, token)
					upapi.writeFile(storyboard.states.userXIDPath, xid)

				


					print("Successful login!!\n\n\n")
					storyboard.gotoScene("details")
				else
					print( "Error in getting response.")
				end
			end
			upapi.login(credentials.email, credentials.pwd, loginCallback)
			
		end

	end

	local background = display.newRect( group, 0, 0, display.contentWidth, display.contentHeight)
	background:setFillColor( 230, 230, 230 )

	
	-- Email input box display
	local emailTextBackground = display.newRect(group, 0, 0, textBackgroundWidth, textBackgroundHeight)
	emailTextBackground:setFillColor( 255, 255, 255 )
	emailTextBackground:setReferencePoint(display.TopCenterReferencePoint)
	emailTextBackground.x = display.contentWidth/2
	emailTextBackground.y = (display.contentHeight - 2 * textBackgroundHeight - fieldSeparationHeight) / 2
	
	-- Email input field
	emailField = native.newTextField(
					emailTextBackground.x - textBackgroundWidth/2, 
					emailTextBackground.y, 
					textBackgroundWidth, 
					textBackgroundHeight, 
					emailListener)
	emailField.align = "left"
	emailField.inputType = "email"
	emailField.size = fieldFontSize
	emailField:addEventListener("userInput", emailListener)

	-- Email input label
	local emailLabel = display.newText(group, "email", 0, 0, native.systemFont, fieldFontSize / 3)
	emailLabel:setReferencePoint(display.BottomCenterReference)
	emailLabel:setTextColor(50,50,50)
	emailLabel.x = display.contentWidth / 2
	emailLabel.y = emailTextBackground.y - textBackgroundHeight / 3
	

	-- Password input box display
	local pwdTextBackground = display.newRect(group, 0, 0, textBackgroundWidth, textBackgroundHeight)
	pwdTextBackground:setFillColor( 255, 255, 255 )
	pwdTextBackground:setReferencePoint(display.TopCenterReferencePoint)
	pwdTextBackground.x = display.contentWidth/2
	pwdTextBackground.y = (display.contentHeight - 2 * textBackgroundHeight - fieldSeparationHeight) / 2 + textBackgroundHeight + fieldSeparationHeight
	
	-- Password input field
	pwdField = native.newTextField(
					pwdTextBackground.x - textBackgroundWidth/2, 
					pwdTextBackground.y, 
					textBackgroundWidth, 
					textBackgroundHeight, 
					pwdListener)
	pwdField.align = "left"
	pwdField.isSecure = true
	pwdField.size = fieldFontSize
	pwdField:addEventListener("userInput", pwdListener)

	-- Email input label
	local pwdLabel = display.newText(group, "password", 0, 0, native.systemFont, fieldFontSize / 3)
	pwdLabel:setReferencePoint(display.BottomCenterReference)
	pwdLabel:setTextColor(50,50,50)
	pwdLabel.x = display.contentWidth / 2
	pwdLabel.y = pwdTextBackground.y - textBackgroundHeight / 3
	

	-- Login button display
	loginButton = display.newGroup()
	loginBackground = display.newRoundedRect(group, 0, 0, loginButtonWidth, loginButtonHeight, loginButtonHeight/2)
	loginBackground:setFillColor(250, 119, 91)
	local loginLabel = display.newText(group, "Login", 0, 0, native.systemFontBold, loginTextSize)
	loginLabel:setTextColor(230,230,230)
	loginLabel:setReferencePoint(display.BottomCenterReference)
	loginButton.x = display.contentWidth / 2
	loginButton.y = display.contentHeight - loginButtonHeight * 1.75
	loginButton:insert(loginLabel, true)
	loginButton:insert(1, loginBackground, true)
	loginBackground:addEventListener("touch", loginHandler)
	group:insert(loginButton)


	
end


-- Called immediately after scene has moved onscreen:
function scene:enterScene( event )
	local group = self.view


end


-- Called when scene is about to move offscreen:
function scene:exitScene( event )
	local group = self.view
	loginBackground:removeEventListener( "touch", loginButton )
	pwdField:removeEventListener( "userInput", pwdField )
	emailField:removeEventListener( "userInput", emailField)

	-- Manually remove all field objects
	pwdField:removeSelf()
	emailField:removeSelf()
end


-- Called prior to the removal of scene's "view" (display group)
function scene:destroyScene( event )
	local group = self.view
	
end

---------------------------------------------------------------------------------
-- END OF IMPLEMENTATION
---------------------------------------------------------------------------------

scene:addEventListener( "createScene", scene )

scene:addEventListener( "enterScene", scene )

scene:addEventListener( "exitScene", scene )

scene:addEventListener( "destroyScene", scene )

---------------------------------------------------------------------------------

return scene
