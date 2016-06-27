ENT.Type            = "anim"
ENT.Base            = "gmod_subway_base"

ENT.PrintName       = "81-717.6(Test)"
ENT.Author          = ""
ENT.Contact         = ""
ENT.Purpose         = ""
ENT.Instructions    = ""
ENT.Category		= "Metrostroi (trains)"

ENT.Spawnable       = true
ENT.AdminSpawnable  = false

function ENT:PassengerCapacity()
	return 300
end

function ENT:GetStandingArea()
	return Vector(-450,-30,-45),Vector(380,30,-45)
end

function ENT:InitializeSounds()
	self.BaseClass.InitializeSounds(self)
	self.SoundNames["r1_5_close"] = {"subway_trains/drive_on3.wav","subway_trains/drive_on4.wav"}
	self.SoundNames["door_close1"]  = "dcls2.wav"
	self.SoundNames["door_open1"] = {"dopen4.wav"}
	self.SoundNames["inf_on"]		= "subway_trains/but_on6.wav"
	self.SoundNames["inf_off"]		= "subway_trains/but_off6.wav"
	self.SoundNames["vu22_on"]	= "subway_trains/but_off5.wav"
	self.SoundNames["vu22_off"]	= "subway_trains/but_on5.wav"
	self.SoundNames["kr_open"]			= ""
	self.SoundNames["kr_close"]			= ""
end
function ENT:InitializeSystems()
	-- Электросистема 81-710
	self:LoadSystem("Electric","81_717_Electric")

	-- Токоприёмник
	self:LoadSystem("TR","TR_3B")
	-- Электротяговые двигатели
	self:LoadSystem("Engines","DK_117DM")

	-- Резисторы для реостата/пусковых сопротивлений
	self:LoadSystem("KF_47A")
	-- Резисторы для ослабления возбуждения
	self:LoadSystem("KF_50A")
	-- Ящик с предохранителями
	self:LoadSystem("YAP_57")

	-- Резисторы для цепей управления
	--self:LoadSystem("YAS_44V")
	-- Реостатный контроллер для управления пусковыми сопротивления
	self:LoadSystem("RheostatController","EKG_17B")
	-- Групповой переключатель положений
	self:LoadSystem("PositionSwitch","EKG_18B")
	-- Кулачковый контроллер
	self:LoadSystem("KV","KV_70")
	-- Контроллер резервного управления
	self:LoadSystem("KRU")


	-- Ящики с реле и контакторами
	self:LoadSystem("LK_755A")
	self:LoadSystem("YAR_13A")
	self:LoadSystem("YAR_27")
	self:LoadSystem("YAK_36")
	self:LoadSystem("YAK_37E")
	self:LoadSystem("YAS_44V")
	self:LoadSystem("YARD_2")
	self:LoadSystem("PR_14X_Panels")

	-- Пневмосистема 81-710
	self:LoadSystem("Pneumatic","81_717_Pneumatic")
	self.Pneumatic.ValveType = 2
	-- Панель управления 81-710
	self:LoadSystem("Panel","81_717_Panel")
	-- Everything else
	self:LoadSystem("Battery")
	self:LoadSystem("PowerSupply","BPSN")
	self:LoadSystem("DURA")
	self:LoadSystem("ALS_ARS")
	self:LoadSystem("ADoorDisable","Relay")
	self:LoadSystem("ASNP31","Relay","Switch")
	self:LoadSystem("ASNP32","Relay","Switch")
	self:LoadSystem("Horn")

	self:LoadSystem("Announcer")
	self:LoadSystem("ASNP")
end
