-- 
-- Abstract: Reaction Time Game
-- Details:	 Test the reaction time of the user
-- Copyright (C) Ye Zhao


local storyboard = require("storyboard")
local scene = storyboard.newScene()

local function displayNewStartButton ()
	newGameGroup = display.newGroup()
	newGameButton = display.newRoundedRect(0,0, 
		display.contentWidth/2.5, 
		display.contentWidth/5,
		display.contentWidth/20)
	newGameButton:setFillColor(50, 50, 50)
	newGameButton:setReferencePoint(display.CenterReferencePoint)
	newGameText = display.newText("Start", 0, 0, native.systemFont, 24)
	newGameGroup.x = display.contentWidth/2
	newGameGroup.y = display.contentHeight/2
	newGameGroup:insert(newGameButton, true)
	newGameGroup:insert(newGameText,true)
	return newGameGroup
end

function  scene:createScene(event)
	local group = self.view
	-- Display and graphics
	display.setStatusBar(display.HiddenStatusBar)
	display.setDefault("background", 255, 255, 255)
	

	local reactionInfo = display.newText("", 0, 0, native.systemFontBold, 24)
	reactionInfo:setTextColor(50,50,50)

	local lowLeftRect = display.newRect(0,0,display.contentWidth/3, display.contentHeight/8)
	local lowMidRect = display.newRect(0,0,display.contentWidth/3, display.contentHeight/8)
	local lowRightRect = display.newRect(0,0,display.contentWidth/3, display.contentHeight/8)

	lowLeftRect:setFillColor(225,225,225)
	lowLeftRect:setStrokeColor(200,200,200)
	lowLeftRect.strokeWidth = 4

	lowMidRect:setFillColor(225,225,225)
	lowMidRect:setStrokeColor(200,200,200)
	lowMidRect.strokeWidth = 4

	lowRightRect:setFillColor(225,225,225)
	lowRightRect:setStrokeColor(200,200,200)
	lowRightRect.strokeWidth = 4

	local topLeftRect = display.newRect(0,0,display.contentWidth/2, display.contentHeight/8)
	local topRightRect = display.newRect(0,0,display.contentWidth/2, display.contentHeight/8)

	topLeftRect:setFillColor(225,225,225)
	topLeftRect:setStrokeColor(200,200,200)
	topLeftRect.strokeWidth = 4

	topRightRect:setFillColor(225,225,225)
	topRightRect:setStrokeColor(200,200,200)
	topRightRect.strokeWidth = 4

	local lowLeftInfo = display.newText("Average", 0, 0, native.systemFontBold, 18)
	lowLeftInfo:setTextColor(50,50,50)

	local lowMidInfo = display.newText("Median", 0, 0, native.systemFontBold, 18)
	lowMidInfo:setTextColor(50,50,50)

	local lowRightInfo = display.newText("Fastest", 0, 0, native.systemFontBold, 18)
	lowRightInfo:setTextColor(50,50,50)

	local topLeftInfo = display.newText("Round 1", 0, 0, native.systemFontBold, 18)
	topLeftInfo:setTextColor(50,50,50)

	local topRightInfo = display.newText("Time", 0, 0, native.systemFontBold, 18)
	topRightInfo:setTextColor(50,50,50)

	local lowLeftGroup = display.newGroup()
	lowLeftGroup.x = display.contentWidth / 6
	lowLeftGroup.y = display.contentHeight * 17/18
	lowLeftGroup:insert(1,lowLeftRect, true)
	lowLeftGroup:insert(lowLeftInfo, true)

	local lowMidGroup = display.newGroup()
	lowMidGroup.x = display.contentWidth / 6 * 3
	lowMidGroup.y = display.contentHeight * 17/18
	lowMidGroup:insert(1,lowMidRect, true)
	lowMidGroup:insert(lowMidInfo, true)

	local lowRightGroup = display.newGroup()
	lowRightGroup.x = display.contentWidth / 6 * 5
	lowRightGroup.y = display.contentHeight * 17/18
	lowRightGroup:insert(1,lowRightRect, true)
	lowRightGroup:insert(lowRightInfo, true)

	local centeredGroup = display.newGroup()
	centeredGroup.x = display.contentWidth * 0.5
	centeredGroup.y = display.contentHeight * 0.2
	centeredGroup:insert(reactionInfo, true)

	local topLeftGroup = display.newGroup()
	topLeftGroup.x = display.contentWidth / 4
	topLeftGroup.y = display.contentHeight /18
	topLeftGroup:insert(1,topLeftRect, true)
	topLeftGroup:insert(topLeftInfo, true)

	local topRightGroup = display.newGroup()
	topRightGroup.x = display.contentWidth / 4 * 3
	topRightGroup.y = display.contentHeight / 18
	topRightGroup:insert(1,topRightRect, true)
	topRightGroup:insert(topRightInfo, true)


	-- Variables for keeping track of game progres
	local tapTime = nil
	local popTime = nil
	local aveReactTime = nil
	local fastestReactTime = nil
	local roundNum = 1

	local function updateTime(newTime)
		if aveReactTime == nil then aveReactTime = newTime
		else
			preciseAveReactTime = (aveReactTime * (roundNum - 1) + newTime) / roundNum
			aveReactTime = math.round(preciseAveReactTime * 1000) / 1000
		end
		if fastestReactTime == nil then fastestReactTime = newTime
		elseif fastestReactTime > newTime then fastestReactTime = newTime
		end

		lowLeftInfo.text = aveReactTime
		lowRightInfo.text = fastestReactTime
		topRightInfo.text = newTime
	end


	local function popCircle()
		-- Circle for reaction time testing
		local circle = display.newCircle(
			display.contentWidth/2, 
			display.contentHeight/2, 
			display.contentWidth/5)
		circle:setFillColor(235, 120, 35)

		


		function circle:touch(event)
			tapTime = system.getTimer()
			reactionTime = math.round(tapTime - popCompleted)/1000
			updateTime(reactionTime)
			print("Reaction time is " .. tapTime-popCompleted)
			circle:removeSelf()

			local event = { name = "newRound", target = Runtime }
			Runtime:dispatchEvent(event)
			circle:removeEventListener("circle", circle)
		end
		circle:addEventListener("touch", circle)

	end


	local function randomTap(event)
		currentTime = system.getTimer()
		print("Random touch time is " .. currentTime)
		if currentTime < popCompleted then print("Pressed too early")
			
		end
		Runtime:removeEventListener( "touch", randomTap)
	end



	local function testReaction()
		Runtime:addEventListener("touch", randomTap)
		topLeftInfo.text = "Round " .. roundNum
		popDelay = math.random(500, 1500);

		popTimer = timer.performWithDelay(popDelay, popCircle)
		popStart = system.getTimer()
		print("Start = " .. popStart)
		print("Delay = " .. popDelay)
		popCompleted = popStart + popDelay
		print("Completed = " .. popCompleted)
		roundNum = roundNum + 1
		print(roundNum)
	end

	Runtime:addEventListener( "newRound", testReaction)

	if roundNum == 1 then 
		local event = { name = "newRound", target = Runtime }
		Runtime:dispatchEvent(event)
	end
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

