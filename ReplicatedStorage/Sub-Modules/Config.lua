-- || MODULES || -- (Add your own modules here)
local InputVerifier = require(script.Parent.Verifier)
local BindActions = require(script.Parent.BindActions)

return {
	
	--[[
	
		INPUT TYPES:
		- KeyRelease: Fired when key is released. 
		- KeyTapped: Fired when key is initially tapped.
		- TimedHold: Fired when key is released and passes the time key was held as param. 
		
	
		----------------------------------------------------------------------------------------------------------------------------
	
		EXAMPLE CONFIG
	
		["AbilityOne"] = {
			InputType = InputVerifier.InputType
			BindedFunction = InputVerifier.AbilityOne, 
			Priority = 10,
			Key = Enum.KeyCode.E
		}
	
	]]

	
	["AbilityOne"] = {
		InputType = InputVerifier.KeyReleased,
		BindedFunction = BindActions.AbilityOne, 
		Priority = 1,
		Key = Enum.KeyCode.E,
	}
	
}
