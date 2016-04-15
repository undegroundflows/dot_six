AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

ENT.BogeyDistance = 650 -- Needed for gm trainspawner

--------------------------------------------------------------------------------
function ENT:Initialize()
	-- Defined train information
	self.SubwayTrain = {
		Type = "81",
		Name = "81-7037",
	}

	-- Set model and initialize
	self:SetModel("models/metrostroi/81/81-7037.mdl")
	self.BaseClass.Initialize(self)
	self:SetPos(self:GetPos() + Vector(0,0,140))
	
	-- Create bogeys
	self.FrontBogey = self:CreateBogey(Vector( 325-20,0,-80),Angle(0,180,0),true)
	self.RearBogey  = self:CreateBogey(Vector(-325-10,0,-80),Angle(0,0,0),false)
end


--------------------------------------------------------------------------------
function ENT:Think()
	local retVal = self.BaseClass.Think(self)
	return retVal
end