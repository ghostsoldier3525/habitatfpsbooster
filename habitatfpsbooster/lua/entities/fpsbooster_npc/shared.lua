
ENT.Base = "base_ai" 
ENT.Type = "ai" 
ENT.AutomaticFrameAdvance = true 
ENT.Spawnable 			  = true
ENT.AdminSpawnable        = false
ENT.PrintName             = "FPS Booster NPC"
ENT.Purpose 			  = "FPS Boosteri Buradanda Kullanabilirsin"
ENT.Category 			  = "Habitat FPS Booster"
ENT.RenderGroup	= 9
 
function ENT:SetAutomaticFrameAdvance( bUsingAnim ) 
	self.AutomaticFrameAdvance = bUsingAnim
end