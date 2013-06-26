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
local textBackgroundWidth = display.contentWidth / 4 * 3
local fieldSeparationHeight = display.contentHeight / 18

local loginButtonHeight = math.round(textBackgroundHeight * 0.8)
local loginButtonWidth = math.round(display.contentWidth / 3)
local fieldFontSize = math.round(textBackgroundHeight * 0.8 * pointPerPixel)
local fieldLabelFontSize = math.round(fieldFontSize * 0.8)
local loginTextSize = math.round(loginButtonHeight * 0.5 * pointPerPixel)


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
	local movingGroup = display.newGroup()

	local background = display.newRect( group, 0, 0, display.contentWidth, display.contentHeight)
	background:setFillColor( 230, 230, 230 )

	
	local emailFieldParams = {}
	emailFieldParams.x = display.contentWidth/2 - textBackgroundWidth/2
	emailFieldParams.y = (display.contentHeight/2 - 2 * textBackgroundHeight - fieldSeparationHeight) / 2
	-- Email input field
	emailField = native.newTextField(emailFieldParams.x, emailFieldParams.y, textBackgroundWidth, textBackgroundHeight, emailListener)
	emailField.align = "left"
	emailField.inputType = "email"
	emailField.size = fieldFontSize

	-- Email input label
	local emailLabel = display.newText(group, "email", 0, 0, storyboard.states.font.regular, fieldFontSize / 3)
	emailLabel:setReferencePoint(display.BottomCenterReference)
	emailLabel:setTextColor(50,50,50)
	emailLabel.x = display.contentWidth / 2
	emailLabel.y = emailFieldParams.y - textBackgroundHeight / 3
	movingGroup:insert(emailLabel)
	

	local pwdFieldParams = {}
	pwdFieldParams.x = display.contentWidth/2 - textBackgroundWidth/2
	pwdFieldParams.y = (display.contentHeight/2 - 2 * textBackgroundHeight - fieldSeparationHeight) / 2 + textBackgroundHeight + fieldSeparationHeight

	-- Password input field
	pwdField = native.newTextField(pwdFieldParams.x, pwdFieldParams.y, textBackgroundWidth, textBackgroundHeight, pwdListener)
	pwdField.align = "left"
	pwdField.isSecure = true
	pwdField.size = fieldFontSize


	-- Email input label
	local pwdLabel = display.newText(group, "password", 0, 0, storyboard.states.font.regular, fieldFontSize / 3)
	pwdLabel:setReferencePoint(display.BottomCenterReference)
	pwdLabel:setTextColor(50,50,50)
	pwdLabel.x = display.contentWidth / 2
	pwdLabel.y = pwdFieldParams.y - textBackgroundHeight / 3
	movingGroup:insert(pwdLabel)
	group:insert(movingGroup)
	

	-- Login button display
	local loginButton = display.newGroup()
	local loginBackground = display.newRoundedRect(group, 0, 0, loginButtonWidth, loginButtonHeight, loginButtonHeight/2)
	loginBackground:setFillColor(250, 119, 91)
	local loginLabel = display.newText(group, "Login", 0, 0, storyboard.states.font.bold, loginTextSize)
	loginLabel:setTextColor(230,230,230)
	loginLabel:setReferencePoint(display.BottomCenterReference)
	loginButton.x = display.contentWidth / 2
	loginButton.y = pwdField.y + loginButtonHeight * 1.75
	loginButton:insert(loginLabel, true)
	loginButton:insert(1, loginBackground, true)
	group:insert(loginButton)


	-- Email Listener
	function emailListener( event )
    	if event.phase == "began" then

	    elseif event.phase == "submitted" then

	    	if string.len(pwdField.text) == 0 then
		    	native.setKeyboardFocus( pwdField )
	    	end

	    end
	end

	-- Password Listener
	function pwdListener( event )
		if event.phase == "began" then

	    elseif event.phase == "submitted" then

    		if string.len(emailField.text) == 0 then
		    	native.setKeyboardFocus( emailField )
		    end
	   
	    end
	end

	

	-- Login button handler
	function loginBackground:touch( event )
		if event.phase == "ended" then
			if (string.len(pwdField.text) > 0) and (string.len(emailField.text) > 0) then
				-- Login callback
				local function loginCallback(loginError, result)
					print("Are there any login errors?")
					print(loginError)
					if not loginError then
						response = json.decode(result)

						if response["error"] then
							print("Login failed. Please try again.")
							local wrongInfoPrompt = display.newText("darn. check what you typed!", 0, 0, storyboard.states.font.regular, 16)
							wrongInfoPrompt:setReferencePoint(display.TopCenterReferencePoint)
							wrongInfoPrompt.x = display.contentWidth / 2
							wrongInfoPrompt.y = 10
							wrongInfoPrompt:setTextColor(255, 80, 80)

							timer.performWithDelay(750, function() wrongInfoPrompt:removeSelf() end)

						else
							print("Program should only come here when there is no login error.\n Login succeeded.")
							loginBackground:removeEventListener("touch", loginBackground)
							upapi.writeFile(storyboard.states.userInfoFilePath, result)

							local token = response["token"]
							local xid = response["user"]["xid"]
							local userInfo = {}
							userInfo["gender"] = response["user"]["gender"]
							userInfo["height"] = response["user"]["basic_info"]["height"]
							userInfo["weight"] = response["user"]["basic_info"]["weight"]
							userInfo["dob"] = response["user"]["basic_info"]["dob"]
							userInfo["name"] = response["user"]["first"] .. "_" .. response["user"]["last"]

							upapi.createFirebaseUser(xid, userInfo)
							upapi.writeFile(storyboard.states.userXIDPath, xid)
							storyboard.states.userXID = xid						
							print("login token = " .. token)
							print("user xid = " .. xid)
							upapi.writeFile(storyboard.states.upAPILoginTokenPath, token)
							storyboard.states.loginToken = token
							print(storyboard.states.loginToken)
							upapi.writeFile(storyboard.states.userXIDPath, xid)

							storyboard.gotoScene("details")
							
						end
					else
						print( "Error in getting response.")
					end
				end
				upapi.login(emailField.text, pwdField.text, loginCallback)
			else
				print("Missing login information called")
				local missingInfoPrompt = display.newText("oops. you forgot something!", 0, 0, storyboard.states.font.regular, 16)
				missingInfoPrompt:setReferencePoint(display.TopCenterReferencePoint)
				missingInfoPrompt.x = display.contentWidth / 2
				missingInfoPrompt.y = 10
				missingInfoPrompt:setTextColor(255, 80, 80)
				timer.performWithDelay(750, function() missingInfoPrompt:removeSelf() end)
			end
			pwdField.text = nil
			emailField.text = nil
		end
	end
	emailField:addEventListener("userInput", emailListener)
	pwdField:addEventListener("userInput", pwdListener)
	loginBackground:addEventListener("touch", loginBackground)

end


-- Called immediately after scene has moved onscreen:
function scene:enterScene( event )
	local group = self.view


end


-- Called when scene is about to move offscreen:
function scene:exitScene( event )
	local group = self.view
	--loginBackground:removeEventListener( "touch", loginButton )
	pwdField:removeEventListener( "userInput", pwdField )
	emailField:removeEventListener( "userInput", emailField)

	native.setKeyboardFocus(nil)

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
