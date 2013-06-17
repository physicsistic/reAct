-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Main screen for the app to direct different paths.
--
-----------------------------------------------------------------------------------------


-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- include the Corona "storyboard" module
local storyboard = require "storyboard"

-- load welcome screen
storyboard.gotoScene( "welcome" )

-- persistent states that go between screens 

storyboard.states = {}

storyboard.states.upAPILoginTokenPath = system.pathForFile( "react_upapi_token", system.DocumentsDirectory )
storyboard.states.userXIDPath = system.pathForFile( "react_user_xid", system.DocumentsDirectory )

-- Firebase attributes
storyboard.states.firebaseURL = "https://react.firebaseio.com/users.json"


storyboard.states.userInfoFilePath = system.pathForFile( "react_user_info", system.DocumentsDirectory )

