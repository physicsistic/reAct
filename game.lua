-- 
-- Abstract: Reaction Time Game
-- Details:	 Test the reaction time of the user
-- Copyright (C) Ye Zhao


local storyboard = require("storyboard")
local upapi = require "upapi"
local json = require("json")
local scene = storyboard.newScene()
storyboard.purgeOnSceneChange = true

local user_xid = upapi.readFile(storyboard.states.userXIDPath)

-- Global variables for displays
local displayBarHeight = display.contentHeight / 10
local bottomBarPosY = display.contentHeight - displayBarHeight / 2
local topBarPosY = displayBarHeight / 2

local function displayNewStartButton ()
	startGameGroup = display.newGroup()
	startGameButton = display.newCircle( 0, 0, display.contentWidth/5)
	startGameButton:setFillColor(200, 200, 200)
	startGameButton:setReferencePoint(display.CenterReferencePoint)
	startGameText = display.newText("start", 0, 0, storyboard.states.font.bold, 24)
	startGameText:setTextColor(50,50,50)
	startGameGroup.x = display.contentWidth/2
	startGameGroup.y = display.contentHeight/2
	startGameGroup:insert(startGameButton, true)
	startGameGroup:insert(startGameText,true)
	return startGameGroup
end


function  scene:createScene(event)
	local group = self.view
	-- Display and graphics
	display.setStatusBar(display.HiddenStatusBar)
	display.setDefault("background", 255, 255, 255)

	-- Holder object for the popping circle

	local popTimer = nil
	sessionData = {}
	

	local reactionInfo = display.newText(group, "", 0, 0, storyboard.states.font.regular, 24)
	reactionInfo:setTextColor(50,50,50)

	local topBarRect = display.newRect(group, 0, 0, display.contentWidth, displayBarHeight)
	topBarRect:setFillColor(200,200,200)


	local topLeftInfo = display.newText(group, "round 1", 0, 0, storyboard.states.font.bold, 18)
	topLeftInfo:setTextColor(50,50,50)
	topLeftInfo:setReferencePoint(display.CenterLeftReferencePoint);
	topLeftInfo.x = displayBarHeight / 2
	topLeftInfo.y = displayBarHeight/2

	local topRightInfo = display.newText(group, "end", 0, 0, storyboard.states.font.bold, 18)
	topRightInfo:setReferencePoint(display.CenterRightReferencePoint);
	topRightInfo:setTextColor(50,50,50)
	topRightInfo.x = display.contentWidth - displayBarHeight / 2
	topRightInfo.y = displayBarHeight/2


	local bottomBarRect = display.newRect(group, 0, display.contentHeight - displayBarHeight, display.contentWidth, displayBarHeight)
	bottomBarRect:setFillColor(200,200,200)

	local lowLeftInfo = display.newText(group, "", 0, 0, storyboard.states.font.bold, 18)
	lowLeftInfo:setTextColor(50,50,50)
	local lowLeftInfoLabel = display.newText(group, "average", 0, 0, storyboard.states.font.bold, 12)

	local lowMidInfo = display.newText(group, "", 0, 0, storyboard.states.font.bold, 18)
	local lowMidInfoLabel = display.newText(group, "current", 0, 0, storyboard.states.font.bold, 12)
	lowMidInfo:setTextColor(50,50,50)

	local lowRightInfo = display.newText(group, "", 0, 0, storyboard.states.font.bold, 18)
	lowRightInfo:setTextColor(50,50,50)
	local lowRightInfoLabel = display.newText(group, "fastest", 0, 0, storyboard.states.font.bold, 12)


	local lowLeftGroup = display.newGroup()
	lowLeftGroup.x = display.contentWidth / 6
	lowLeftGroup.y = bottomBarPosY
	lowLeftGroup:insert(lowLeftInfo, true)
	lowLeftGroup:insert(1, lowLeftInfoLabel, true)
	lowLeftInfo.y =  displayBarHeight / 8
	lowLeftInfoLabel.y = - displayBarHeight / 4

	local lowMidGroup = display.newGroup()
	lowMidGroup.x = display.contentWidth / 6 * 3
	lowMidGroup.y = bottomBarPosY
	lowMidGroup:insert(lowMidInfo, true)
	lowMidGroup:insert(1, lowMidInfoLabel, true)
	lowMidInfo.y =  displayBarHeight / 8
	lowMidInfoLabel.y = - displayBarHeight / 4


	local lowRightGroup = display.newGroup()
	lowRightGroup.x = display.contentWidth / 6 * 5
	lowRightGroup.y = bottomBarPosY
	lowRightGroup:insert(lowRightInfo, true)
	lowRightGroup:insert(1, lowRightInfoLabel, true)
	lowRightInfo.y =  displayBarHeight / 8
	lowRightInfoLabel.y = - displayBarHeight / 4



	group:insert(lowLeftGroup)
	group:insert(lowMidGroup)
	group:insert(lowRightGroup)


	-- Variables for keeping track of game progres
	local tapTime = nil
	local popTime = nil
	local aveReactTime = nil
	local fastestReactTime = nil
	local roundNum = 1

	function updateTime(newTime)
		if aveReactTime == nil then aveReactTime = newTime
		else
			preciseAveReactTime = (aveReactTime * (roundNum - 1) + newTime) / roundNum
			aveReactTime = math.round(preciseAveReactTime * 1000) / 1000
		end
		if fastestReactTime == nil then fastestReactTime = newTime
		elseif fastestReactTime > newTime then fastestReactTime = newTime
		end

		lowLeftInfo.text = string.format("%.3f", aveReactTime)
		lowRightInfo.text = string.format("%.3f",fastestReactTime)
		lowMidInfo.text = string.format("%.3f", newTime)
		sessionData.timings[string.format("%d", roundNum)] = newTime
		local t = os.date('*t')
		local reactionTimingInstance = {}
		reactionTimingInstance.timestamp = t
		reactionTimingInstance.reactionTime = newTime
		upapi.insertTimingToDatabase(reactionTimingInstance)
		storyboard.states.timings[roundNum]=newTime
	end



	function popCircle()
		-- Circle for reaction time testing
		circle = display.newCircle(
			display.contentWidth/2, 
			display.contentHeight/2, 
			display.contentWidth/5)
		circle:setFillColor(235, 120, 35)
		print(circle)

		function circle:touch(event)

			if event.phase == "began" then
				tapTime = system.getTimer()
				reactionTime = math.round(tapTime - popCompleted)/1000
				updateTime(reactionTime)
				roundNum = roundNum + 1
				print("Reaction time is " .. tapTime-popCompleted)
				
			elseif event.phase == "ended" then
				circle:removeEventListener("touch", circle)
				circle:removeSelf()
				circle = nil
				if roundNum > storyboard.states.totalNumRounds then
					local endGameEvent = { name = "endGame", target = Runtime }
					Runtime:dispatchEvent(endGameEvent)
				else
					local testReactionEvent = { name = "testReaction", target = Runtime }
					Runtime:dispatchEvent(testReactionEvent)
				end
				
			end
		end
		circle:addEventListener("touch", circle)

	end



	function randomTap(event)
		local currentTime = 0
		if event.phase == "began" then
			currentTime = system.getTimer()
			print("Random touch time is " .. currentTime)
			if currentTime < popCompleted then 
				print("Pressed too early")
			end
		end
		
	end

	function testReaction()
		print(roundNum)
		
		topLeftInfo.text = "round " .. roundNum
		popDelay = math.random(1000, 2000);
		popStart = system.getTimer()
		popTimer = timer.performWithDelay(popDelay, popCircle)
		print("Start = " .. popStart)
		print("Delay = " .. popDelay)
		popCompleted = popStart + popDelay
		print("Completed = " .. popCompleted)
		
	end


	function startGame()
		local screen = display.newRect(group, 0, 0, display.contentWidth, display.contentHeight)
		-- body
		Runtime:removeEventListener("startGame", startGame)
		print("Removed runtime event listener for start game")
		local startGameButton = displayNewStartButton()
		group:insert(startGameButton)
		
		print("start button displayed")
		function startGameButton:touch( event )
			if event.phase == "ended" then
				Runtime:addEventListener("touch", randomTap)
				for i=startGameButton.numChildren, 1, -1 do
					local child = startGameButton[i] 
					child.parent:remove(child)
				end
				screen:removeSelf()
				
				local testReactionEvent = { name = "testReaction", target = Runtime }
				startGameButton:removeEventListener("touch", startGameButton)
				print("start button removed")
				Runtime:dispatchEvent(testReactionEvent)
			end
		end
		startGameButton:addEventListener("touch", startGameButton)
	end

	-- Function to end timing update
	function topRightInfo:touch( event )

		if event.phase == "ended" then
			topRightInfo:removeEventListener("touch")
			local endGameEvent = { name = "endGame", target = Runtime }
			Runtime:dispatchEvent(endGameEvent)
		end

	end
	topRightInfo:addEventListener("touch", topRightInfo)

	function endGame( )
		print(circle)
		-- if circle then
		-- 	-- Remove all the circles if it hasn't been removed yet
		-- 	circle:removeEventListener("touch", circle)
		-- 	circle:removeSelf()
		-- 	print("The circle is on the screen")
		-- else
		-- 	timer.cancel(popTimer)
		-- 	print("Timer to pop circle cancelled.")
		-- end
		
		
		sessionData.endTime = os.time()
		sessionData.fastestReactTime = fastestReactTime
		sessionData.aveReactTime = aveReactTime
		print(json.encode(sessionData.timings))
		sessionData.numTries = roundNum - 1

		upapi.updateTimings(sessionData)
		timer.performWithDelay(5,function() storyboard.gotoScene("results") end)
	end

	

	Runtime:addEventListener( "startGame", startGame)
	Runtime:addEventListener( "testReaction", testReaction)
	Runtime:addEventListener( "endGame", endGame)

	if roundNum == 1 then
		print("Round 1 started.") 
		local startGameEvent = { name = "startGame", target = Runtime }
		Runtime:dispatchEvent(startGameEvent)
		sessionData.startTime = os.time()
		sessionData.timings = {}
	end

	
end

function scene:enterScene( event )
	local group = self.view
end

function scene:exitScene( event )
	local group = self.view
	Runtime:removeEventListener("testReaction", testReaction)
	print("Removed event listener for test reaction")
	Runtime:removeEventListener("touch", randomTap)
	print("Remove event listener for randomTap")

	-- Update user performance if relevant

	

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

