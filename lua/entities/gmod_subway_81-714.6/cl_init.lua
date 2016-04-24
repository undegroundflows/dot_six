include("shared.lua")


--------------------------------------------------------------------------------
ENT.ClientProps = {}
ENT.ButtonMap = {}

--------------------------------------------------------------------------------
ENT.ClientPropsInitialized = false

--------------------------------------------------------------------------------
-- Add doors
local function GetDoorPosition(i,k,j)
	if j == 0 
	then return Vector(359.0 - 35.0*k     - 229.5*i,-65*(1-2*k),6)
	else return Vector(359.0 - 35.0*(1-k) - 229.5*i,-65*(1-2*k),6)
	end
end
for i=0,3 do
	for k=0,1 do
		ENT.ClientProps["door"..i.."x"..k.."a"] = {
			model = "models/6000/door/door_a.mdl",
			pos = GetDoorPosition(i,k,0),
			ang = Angle(0,90 +180*k,0)
		}
		ENT.ClientProps["door"..i.."x"..k.."b"] = {
			model = "models/6000/door/door_b.mdl",
			pos = GetDoorPosition(i,k,1),
			ang = Angle(0,90 +180*k,0)
		}
	end 
end

table.insert(ENT.ClientProps,{
	model = "models/6000/door_back.mdl",
	pos = Vector(-469.0,16.2,-42),
	ang = Angle(0,90,0)
})
table.insert(ENT.ClientProps,{
	model = "models/6000/door_back.mdl",
	pos = Vector(461.0,16.2,-42),
	ang = Angle(0,90,0)
})

--------------------------------------------------------------------------------
function ENT:Think()
	self.BaseClass.Think(self)
end

function ENT:Draw()
	self.BaseClass.Draw(self)
end