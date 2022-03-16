-- Context Action Service Utility Module || Created by scasting. 
local CASUtility = {}

-- || GLOBAL VARIABLES || --
local ContextService = game:GetService("ContextActionService")

local UtilityConfig = require(script.Config)

-- || REBINDS ALL CONTEXT ACTION SERVICES || --
function CASUtility.QuickBind() 
	for Name, Configuartion in pairs(UtilityConfig) do
		ContextService:BindActionAtPriority(Name, Configuartion.InputType, false, Configuartion.Priority, Configuartion.Key)
	end
end

return CASUtility
