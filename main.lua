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
local json = require "json"

-- load welcome screen
storyboard.gotoScene( "welcome" )

-- persistent states that go between screens 

storyboard.states = {}

storyboard.states.upAPILoginTokenPath = system.pathForFile( "react_upapi_token", system.DocumentsDirectory )
storyboard.states.userXIDPath = system.pathForFile( "react_user_xid", system.DocumentsDirectory )
storyboard.states.loginToken = nil

-- Firebase attributes
storyboard.states.firebaseURL = "https://react.firebaseio.com/users"

storyboard.states.userInfoFilePath = system.pathForFile( "react_user_info", system.DocumentsDirectory )

-- Font states
storyboard.states.font = {}
storyboard.states.font.regular = "TitilliumWeb-Regular"
storyboard.states.font.bold = "TitilliumWeb-Bold"


-- Storing session data
storyboard.states.sessionTimings = {}

-- Firebase user data
storyboard.states.userXID = nil

-- Session timing
storyboard.states.timings = {}


-- Number of rounds to play (default set to 5)
storyboard.states.totalNumRounds = 10

