-----------------------------------------------------------------------------------------
--
-- upapi.lua
--
-- Library for using UP APIs as described at https://jawbone.com/up/platform
--
-----------------------------------------------------------------------------------------


module(..., package.seeall)

local json = require("json")
local network = require("network")
local storyboard = require( "storyboard" )

-- File input output helper functions
function readFile(path)
	local file, reason = io.open( path, "r" )
	local content = nil

	if file then
		content = file:read( "*a" )
	else
		print( "Unable to open file: " .. reason)
		return nil
	end
	io.close(file)

	return content
end

function writeFile( path, content )
	local file, reason = io.open( path, "w" )

	if file then
		file:write(content)
	else
		print( "Unable to open file: " .. reason)
	end
	io.close(file)
end


-- API access helper functions
function logout( tokenPath )
	-- Remove the file storing the access token locally
	os.remove( tokenPath )
end

function isLoggedIn()
	-- Check if the tokenPath file exist
	local file, reason = io.open( storyboard.states.upAPILoginTokenPath, "r" )
	if file then return true
	else return false
	end
end

function getEmail( emailPath )
	local email = nil
	if infoPath then 
		email = io.read(infoPath, "*a" )
		print( "User Information Exist!\nUser Email = " .. email)
	else
		print( "User Information Doesn't Exist.")
	end

	return email
end

function getXID( )
	local xid = nil
	if storyboard.states.userXID then 
		xid = readFile(storyboard.states.userXID)
		print( "User Information Exist!\nUser xid = " .. xid)
	else
		print( "User xid missing.")
	end

	return xid
end

function genericCallback( failed, result )
	if not failed then 
		print("Added to react-firebase.")
		print(result)
	else
		print("Unable to add result. Try again")
	end
end

function insertReactionTime( reactionTime, xid, timestamp )
	local data = {}
	data[xid][timestamp] = reactionTime

	rawPUTRequest(storyboard.states.firebaseURL, json.encode(data), genericCallback)
end

function createFirebaseUser( xid, userMeta )

	local userMetaJSON = json.encode(userMeta)
	print(userMetaJSON)
	rawPUTRequest(storyboard.states.firebaseURL .. "/" .. xid .."/meta.json", userMetaJSON, genericCallback)

end

function updateTimings( sessionData )
	local data = {}
	print(storyboard.states.userXID)
	local xid = storyboard.states.userXID
	

	local userTimingsJSON= json.encode(sessionData)
	print(userTimingsJSON)
	rawPOSTRequest(storyboard.states.firebaseURL .."/" .. xid .. "/sessions.json", userTimingsJSON, genericCallback)
end

function login( email, pwd, callback )

	local loginURL = "https://jawbone.com/user/signin/login"
	local loginInfo = "service=nudge&email=" .. email .. "&pwd=" .. pwd

	rawPOSTRequest(loginURL, loginInfo, callback)
end

function logout( )
	os.remove(storyboard.states.upAPILoginTokenPath)
	os.remove(storyboard.states.userXIDPath)
end

function getUserMetrics( metric, callback )

	local metricsBaseURL = "https://jawbone.com/nudge/api/users/@me/"
	local params = {}

	rawGETRequest( metricsBaseURL .. metric, callback)
end

function insertTimingToDatabase( reactionTimingData )
	local databaseURL = "https://reactiontimings.firebaseio.com/"

	local params = {}
	params.body = json.encode(reactionTimingData)
	print(params.body)
	network.request(databaseURL.."timings.json", "POST", genericCallback, params)
end

function getSleepGraph(callback)
	local xid = storyboard.states.userXID
	print("presenting user sleep graph")
	print(json.encode(storyboard.states.sleepData["data"]["items"][1]["snapshot_image"]))
	local sleepGraphURL = "https://jawbone.com" .. storyboard.states.sleepData["data"]["items"][1]["snapshot_image"]

	rawDownloadRequest(sleepGraphURL, callback, 'sleep_graph.png')
end


-----------------------------------------------------------------------------------------
-- RAW POST REQUEST
-- Added callback when response is ready
-----------------------------------------------------------------------------------------

function loadingMessage( event )
	local loadingScreen = display.newRect(0, 0, display.contentWidth, display.contentHeight)
	loadingScreen:setFillColor( 230, 230, 230)
	loadingScreen.alpha = 0.5
	print(".")
end

function rawPUTRequest( url, rawdata, callback )
	local function networkListener( event )

		if event.isError then 
			print ( "Network error!", event.status, event.response)
		else
			-- print ( "RESPONSE: " .. event.response )
		end

		if callback then 
			callback(event.isError, event.response)
		end
	end

	-- Set up the parameters for the request
	local headers = {}
	local params = {}

	headers["Content-Type"] = "application/x-www-form-urlencoded"

	params.headers = headers
	params.body = rawdata

	network.request( url, "PUT", networkListener, params )
end


function rawPOSTRequest( url, rawdata, callback )
	local function networkListener( event )

		if event.isError then 
			print ( "Network error!", event.status, event.response)
		else
			print ( "RESPONSE: " .. event.response )
		end


		if callback then 
			callback(event.isError, event.response)
		end
	end

	-- Set up the parameters for the request
	local headers = {}
	local params = {}

	headers["Content-Type"] = "application/x-www-form-urlencoded"

	params.headers = headers
	params.body = rawdata

	network.request( url, "POST", networkListener, params )
end

function rawGETRequest( url, callback )
	-- Callback from network loader
	local function networkListener( event )

		if event.isError then 
			print ( "Network error!", event.status, event.response)
		else
			-- print ( "RESPONSE: " .. event.response )
		end

		if callback then 
			callback(event.isError, event.response)
		end
	end

	local params = {}
	local headers = {}
	
	headers["Accept"] = "application/json"

	local loginToken = readFile(storyboard.states.upAPILoginTokenPath)

	print("The login token is: " .. loginToken)

	print(loginToken~=nil)

	if loginToken ~= nil then
		headers["x-nudge-token"] = loginToken
	end
	
	params.headers = headers

	return network.request( url, "GET", networkListener, params)
end


function rawDownloadRequest( url, callback, file)
	-- Callback from network loader
	local function networkListener( event )

		if event.isError then 
			print ( "Network error! Download failed. ", event.status, event.response)
		elseif ( event.phase == "began" ) then
            if event.bytesEstimated <= 0 then
                print( "Download starting, size unknown" )
            else
            	print( "Download starting, estimated size: " .. event.bytesEstimated )
            end
        elseif ( event.phase == "progress" ) then
            if event.bytesEstimated <= 0 then
                print( "Download progress: " .. event.bytesTransferred )
            else
                print( "Download progress: " .. event.bytesTransferred .. " of estimated: " .. event.bytesEstimated )
            end
        elseif ( event.phase == "ended" ) then
            print( "Download complete, total bytes transferred: " .. event.bytesTransferred )
            if callback then
            	callback(event.response)
            end
        end

	end

	local params = {}
	local headers = {}
	
	headers["Accept"] = "application/json"

	local loginToken = storyboard.states.loginToken


	print(loginToken~=nil)

	if loginToken ~= nil then
		headers["x-nudge-token"] = loginToken
	end
	
	params.headers = headers
	params.progress = "download"

	params.response = {
		filename = file,
		baseDirectory = system.DocumentsDirectory
	}
	print(file)
	return network.request( url, "GET", networkListener, params)
end