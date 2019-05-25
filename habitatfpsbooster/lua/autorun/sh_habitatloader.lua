include("baristaner/config.lua")

if SERVER then
	AddCSLuaFile("baristaner/config.lua")
	include("server/sv_habitatfog.lua")

	AddCSLuaFile("client/cl_fpsboost.lua")	
	AddCSLuaFile("client/cl_habitatfog.lua")	
end

if CLIENT then

	include("client/cl_fpsboost.lua")	
	include("client/cl_habitatfog.lua")	
end