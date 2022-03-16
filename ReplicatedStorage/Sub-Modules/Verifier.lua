-- || MODULES || --
local BindActions = require(script.Parent.BindActions)

-- || PRIVATE VARIABLES || --
local KeyHeld = {}

local InputVerifier = {}

function InputVerifier.KeyTapped(ActionName, InputState, InputObject)
	if (InputState == Enum.UserInputState.Begin)  then
		BindActions[ActionName]()
	end
end

function InputVerifier.KeyReleased(ActionName, InputState, InputObject)
	if (InputState == Enum.UserInputState.End)  then
		BindActions[ActionName]()
	end
end

function InputVerifier.TimedHold(ActionName, InputState, InputObject)
	if (InputState == Enum.UserInputState.Begin) then
		table.insert(KeyHeld, InputObject)
		KeyHeld[InputObject] = tick()
	else 
		BindActions[ActionName](math.abs(tick()-KeyHeld[InputObject]))
		table.clear(KeyHeld)
	end
end

return InputVerifier
