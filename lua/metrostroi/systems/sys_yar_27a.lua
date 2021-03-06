--------------------------------------------------------------------------------
-- ßùèê ñ ðåëå (ßÐ-27)
--------------------------------------------------------------------------------
Metrostroi.DefineSystem("YAR_27A")

function TRAIN_SYSTEM:Initialize()
	-- Ðåëå äâåðåé (ÐÄ)
	self.Train:LoadSystem("RD","Relay","REV-821",{ close_time = 2.6 })
	-- Ðåëå âêëþ÷åíèÿ îñâåùåíèÿ (ÐÂÎ)
	self.Train:LoadSystem("RVO","Relay","REV-814T",{ open_time = 4.0 })
	-- Ðåëå âðåìåíè òîðìîæåíèÿ (ÐÂ3)
	self.Train:LoadSystem("RVZ","Relay","REV-813T",{ open_time = 2.3 })
	-- Ðåëå òîêà (ÐÒ2)
	self.Train:LoadSystem("RT2","Relay","REV-830",{ trigger_level = 120 }) -- A
	-- Ðåëå êîíòðîëÿ òîðìîçíîãî òîêà (ÐÊÒÒ) FIXME: see konspekt page 55
	self.Train:LoadSystem("RKTT","Relay","R-52B")
	-- Ðåëå ðåâåðñèðîâêè (ÐÐ)
	self.Train:LoadSystem("RR","Relay","RPU-116T")
	self.WeightLoadRatio = 0
end

function TRAIN_SYSTEM:Inputs()
	return { "WeightLoadRatio" }
end
function TRAIN_SYSTEM:Outputs()
	--return { "RKTTClose" , "RKTTOpen", "RKTTCurrent"}
end

function TRAIN_SYSTEM:TriggerInput(name,value)
	if name == "WeightLoadRatio" then
		self.WeightLoadRatio = value
	end
end

function TRAIN_SYSTEM:Think()
	local Train = self.Train
	--self.RUTTarget = 250 + 150*self.WeightLoadRatio
	self.RKTTCurrent = (math.abs(Train.Electric.I13) + math.abs(Train.Electric.I24))*Train:ReadTrainWire(6)
	--self.RKTTClose  = 275 + 50*self.WeightLoadRatio --125
	--self.RKTTOpen = 370 + 52*self.WeightLoadRatio --130
	self.RKTTClose  = 275 + 100*self.WeightLoadRatio --125
	self.RKTTOpen = 470 + 130*self.WeightLoadRatio --130
	if self.RKTTCurrent < self.RKTTClose then
		Train.RKTT:TriggerInput("Set",false)
	else
		Train.RKTT:TriggerInput("Set",self.RKTTCurrent >= self.RKTTOpen)
	end
	-- RT2 relay operation
	Train.RT2:TriggerInput("Set",Train.Electric.IRT2)
end
