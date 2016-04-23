include("shared.lua")
--------------------------------------------------------------------------------
ENT.ClientProps = {}
ENT.ButtonMap = {}
			
-- Main panel
ENT.ButtonMap["Main"] = {
	pos = Vector(466,15,-2.9), --446 -- 14 -- -0,5
	ang = Angle(0,-90,14),
	width = 700,
	height = 250,
	scale = 0.0625,
	
	buttons = {
		--{ID = "R_ZSToggle",		x=36+28*1, y=37, radius=20, tooltip="ЗС\nZS"},
		{ID = "R_ProgramToggle",x=520, y=99, radius=0, },
		{ID = "R_Program1Set",  x=520, y=99, radius=20, tooltip="Программа 1\nProgram 1"},
		--{ID = "R_Program2Set",  x=27+28*4.5, y=37-10, w=28,h=20, tooltip="Программа 2\nProgram 2"},
		
		{ID = "1:KVTSet",	    x=450-5, y=92+7, radius=20, tooltip="КВТ: Кнопка восприятия торможения\nKVT: ARS Brake cancel button"},
		{ID = "2:KVTSet",		x=485-5, y=92+7, radius=20, tooltip="КБ: Кнопка Бдительности\nKB: Attention button"},
		{ID = "VZ1Set",			x=520, y=40, radius=20, tooltip="ВЗ1: Вентиль замещения №1\nVZ1: Pneumatic valve #1"},
		
		--{ID = "AutodriveToggle",x=420, y=92, radius=20, tooltip="Автоматическая остановка\nAutomatic stop"},
		
		{ID = "VUD1Toggle",		  x=375, y=99, radius=40, tooltip="ВУД: Выключатель управления дверьми\nVUD: Door control toggle (close doors)"},
		{ID = "KDLSet",			  x=375, y=160, radius=20, tooltip="КДЛ: Кнопка левых дверей\nKDL: Left doors open"},
		{ID = "DoorSelectToggle", x=390, y=40, radius=20, tooltip="Выбор стороны открытия дверей\nSelect side on which doors will open"},

--		{ID = "OtklAVUPl",  x=283, y=210, radius=20, tooltip="Пломба крышки ОтклАВУ\nOtklAVU plomb"},
--		{ID = "PS2",	    x=238, y=183, radius=20, tooltip="(placeholder) Emergency brake toggle"},
--		{ID = "PS2Pl",      x=238, y=210, radius=20, tooltip="(placeholder) Пломба крышки Торможение АТ\nEmergency brake toggle plomb"},

		{ID = "ParkingBrakeSignToggle",	x=203,y=113, radius=20, tooltip="Табличка \"ОТПУСТИ СТОЯНОЧНЫЙ ТОРМОЗ\"\nSign \"RELEASE PARKING BRAKE\""},
		{ID = "L_4Toggle",              x=450, y=160, radius=20, tooltip="Фары: 1 группа\nHead lights: 1 group"},
		{ID = "VUSToggle",              x=485, y=160, radius=20, tooltip="Фары: 2 группа\nHead lights: 2 group"},
		{ID = "KDPSet",                 x=520, y=160, radius=20, tooltip="КДП: Кнопка правых дверей\nKDP: Right doors open"},
		
		{ID = "KRPSet",    x=118, y=140, radius=20, tooltip="КРП: Кнопка резервного пуска\nKRP: Emergency start button"},
		{ID = "RezMKSet",  x=157,  y=30, radius=20, tooltip="Резервное включение мотор-компрессора\nEmergency motor-compressor startup"},
		{ID = "KRZDSet",   x=157, y=90, radius=20, tooltip="КРЗД: Кнопка резервного закрытия дверей\nKRZD: Emergency door closing"},
		{ID = "KDLRSet",   x=200, y=60, radius=20, tooltip="РКДЛ: Резервное открытие дверей левых\nVDL: Left doors open"},
		{ID = "KDPSet",    x=118, y=60, radius=20, tooltip="РКДП: Резервное открытие дверей правых\nKDP: Right doors open"},

	}
}

-- Front panel
ENT.ButtonMap["Front"] = {
	pos = Vector(467.90,2,-0.7),
	ang = Angle(0,-90,65),
	width = 450,
	height = 60,
	scale = 0.0625,
	
	buttons = {
		--{ID = "VAHToggle",x=360, y=15, radius=20, tooltip="ВАХ: Включение аварийного хода (неисправность реле педали безопасности)\nVAH: Emergency driving mode (failure of RPB relay)"},
--		{ID = "UAVAContactSet",x=380, y=15, h=170, tooltip="УАВА: Универсальный Автоматический Выключатель Автостопа (восстановление контактов)\nUAVA: Universal Automatic Autostop Disabler(contacts reset)"},		
		{ID = "WiperToggle",x=340, y=15,radius=20, tooltip="Дворник\nWiper"},
		{ID = "VADToggle",x=93, y=15, radius=20, tooltip="Блокировка контроля дверей\nEmergency door close override"},
		{ID = "KAHSet",x=121,  y=15, radius=20, tooltip="КАХ: Кнопка аварийного хода\nEmergency drive button"},
		{ID = "KAHPl",x=121, y=7, radius=20, tooltip="Пломба крышки КАХ\nKAH plomb"},
		{ID = "KAHKToggle",			x=101, y=25, w=	50,h=25, tooltip="Крышечка"},
		{ID = "KSNSet",x=203, y=15, radius=20, tooltip="КСН: Кнопка сигнализации неисправности\nKSN: Failure indication button"},
		{ID = "DIPoffSet",		x=292, y=15, radius=20, tooltip="Звонок\nRing"},
		{ID = "ConverterProtectionSet",			x=148, y=15, radius=20, tooltip="КПС: Кнопка проверки схемы / Защита преобразователя\nKPS / ConverterProtection "},
	    {ID = "VozvratRPSet",	x=260, y=15, radius=20, tooltip="Возврат реле перегрузки\nReset overload relay"},
		
		{ID = "GreenRPLight",	x=260, y=35, radius=20, tooltip="РП: Зелёная лампа реле перегрузки\nRP: Green overload relay light (overload relay open on current train)"},
--		{ID = "AVULight",		x=406, y=-47, radius=20, tooltip="АВУ: Автоматический выключатель управления\nAVU: Automatic control disabler active"},
		{ID = "KVPLight",		x=148, y=35, radius=20, tooltip="КВП: Контроль высоковольного преобразователя\nKVP: High-voltage converter control"},
		{ID = "SPLight",		x=0, y=15, radius=20, tooltip="ЛСП: Лампа сигнализации пожара\nLSP: Fire emergency (rheostat overheat)"},
	}
}

--ALS-ALS TOGGLE PANEL
ENT.ButtonMap["PackSwitch"] = {
    pos = Vector(472.2,14,9),
	ang = Angle(0,-90,66),
	width = 200,
	height = 200,
	scale = 0.0625,
	
	buttons = {
	{ID = "VAHToggle",      x=20, y=100, radius=20, tooltip="ВАХ: Включение аварийного хода (неисправность реле педали безопасности)\nVAH: Emergency driving mode (failure of RPB relay)"},
	{ID = "ARSToggle",		x=60, y=100, radius=20, tooltip="АРС: Включение системы автоматического регулирования скорости\nARS: Automatic speed regulation"},
    {ID = "ALSToggle",		x=60, y=150, radius=20, tooltip="АЛС: Включение системы автоматической локомотивной сигнализации\nALS: Automatic locomotive signalling"},
	{ID = "OtklAVUToggle",	x=20, y=50,  radius=20, tooltip="Отключение автоматического выключения управления (неисправность АВУ)\nTurn off automatic control disable relay (failure of AVU)"},
	{ID = "UOSToggle",      x=20, y=150, radius=70, tooltip="РЦ-УОС: Устройство ограничения скорости\nRC-UOS: Speed Limitation Device"},
	}
}
    

-- BPSN panel
ENT.ButtonMap["LowVoltagecontrol"] = {
	pos = Vector(466,-45,3.5),
	ang = Angle(0,-150,79),
	width = 120,
	height = 120,
	scale = 0.0625,
	
	buttons = {
		{x=60,y=60,tooltip="Напряжение цепей управления\nControl circuits voltage",radius=60},
	}
}

--BPSNrear
ENT.ButtonMap["BPSNrear"] = {
    pos = Vector(400.25,-3,29.8),
    ang = Angle(0,90,90),
	width = 310,
	height = 120,
	scale = 0.0625,

	buttons = {
		{ID = "VMKToggle",x=203+10,  y=100, radius=20, tooltip="Основной мотор-компрессор\nMain motor-compressor on"},
		{ID = "BPSNonToggle",x=234+10,  y=100, radius=20, tooltip="ИП:Источник питания\nIP: Power supply"},
		{ID = "L_1Toggle",		x=177, y=50, radius=20, tooltip="Освещение салона\nWagon lighting"},
		{ID = "L_2Toggle",		x=213, y=50, radius=20, tooltip="Освещение кабины\nCabin lighting"},
		{ID = "L_3Toggle",		x=244, y=50, radius=20, tooltip="Освещение пульта\nPanel lighting"},
		--{ID = "L_5Toggle",x=126, y=28, radius=20, tooltip="Аварийное освещение\nEmergency lighting"},
		{ID = "R_UNchToggle",	x=308, y=50, radius=20, tooltip="УНЧ: Усилитель низких частот (информатор салона)\nUNCh: Low frequency amplifier(sound in wagons enable)"},
		{ID = "R_GToggle",		x=277, y=50, radius=20, tooltip="Информатор(Звук)\nAnnouncer(Sound)"},		
	}
}
	
	
	
-- Announcer panel
ENT.ButtonMap["Announcer"] = {
	pos = Vector(460,-53,8),
	ang = Angle(0,-170,90),
	width = 265,
	height = 245,
	scale = 0.0625,
	
	buttons = {
		--{ID = "DURASelectMain", x=159, y=200, radius=20, tooltip="DURA Select Main"}, -- NEEDS TRANSLATING
		--{ID = "DURASelectAlternate", x=198, y=200, radius=20, tooltip="DURA Select Alternate"}, -- NEEDS TRANSLATING
		--{ID = "DURAToggleChannel", x=110, y=217, radius=20, tooltip="DURA Toggle Channel"}, -- NEEDS TRANSLATING
		--{ID = "DURAPowerToggle", x=110, y=187, radius=20, tooltip="DURA Power"}, -- NEEDS TRANSLATING
		
		--{ID = "CustomCToggle", x=220, y=45, radius=20, tooltip="C"},
		
		{ID = "Custom1Set",     x=150, y=95, radius=20, tooltip="-"},
		{ID = "Custom2Set",     x=175, y=95, radius=20, tooltip="+"},
		{ID = "Custom3Set",     x=95, y=95, radius=20, tooltip="Menu"},
		{ID = "R_RadioToggle",	x=55, y=57, radius=20, tooltip="Вкл/Выкл\nOn/Off"},
--55 66
		--{ID = "CustomD", x=95+29*0, y=18, radius=20, tooltip="D"},
		--{ID = "CustomE", x=95+29*1, y=18, radius=20, tooltip="E"},
		--{ID = "CustomF", x=95+29*2, y=18, radius=20, tooltip="F"},
		--{ID = "CustomG", x=95+29*3, y=18, radius=20, tooltip="G"},
	}
}
-- Announcer panel
ENT.ButtonMap["AnnouncerDisplay"] = {
	pos = Vector(460.4,-53.0625,7.21),
	ang = Angle(-0,-170,90),
	width = 265,
	height = 245,
	scale = 0.0186,
	props = {},
}


--ARS FUCKING PANEL!!!
ENT.ButtonMap["ARS"] = {
	pos = Vector(472.5,-3,8.5),
	ang = Angle(0,-90,60.7),
	width = 300*10,
	height = 110*10,
	scale = 0.0625/10,

	buttons = {
		{x=1100+70,y=160+75,tooltip="Индикатор скорости\nSpeed indicator",radius=130},
		{x=1780+60,y=780+60,tooltip="ЛСН: Лампа сигнализации неисправности\nLSN: Failure indicator light (power circuits failed to assemble)",radius=120},
		{x=1520+60,y=780+60,tooltip="РП: Красная лампа реле перегрузки\nRP: Red overload relay light (power circuits failed to assemble)",radius=120},
		{x=1110+60,y=780+60,tooltip="ЛхРК: Лампа хода реостатного контроллера\nLhRK: Rheostat controller motion light",radius=120},
		{x=3130+60,y=780+60,tooltip="ЛКТ: Контроль тормоза\nLKT: ARS braking indicator",radius=120},
		{x=2130+60,y=550+60,tooltip="ЛКВД: Контроль выключения двигателей\nLKVD: ARS engine shutdown indicator",radius=120},
		{x=2540+60,y=100+60,tooltip="ЛКВЦ: Лампа контактора высоковольтных цепей\nLKVC: High voltage not available",radius=120},
	
		{x=410+275*0+60+60,y=480,tooltip="ОЧ: Отсутствие частоты АРС\nOCh: No ARS frequency",radius=120},
		{x=410+275*1+60+60,y=480,tooltip="0: Сигнал АРС остановки\n0: ARS stop signal",radius=120},
		{x=410+275*2+60+60,y=480,tooltip="40: Ограничение скорости 40 км/ч\nSpeed limit 40 kph",radius=120},
		{x=410+275*3+60+60,y=480,tooltip="60: Ограничение скорости 60 км/ч\nSpeed limit 60 kph",radius=120},
		{x=410+275*4+60+60,y=480,tooltip="70: Ограничение скорости 70 км/ч\nSpeed limit 70 kph",radius=120},
		{x=410+275*5+60+60,y=480,tooltip="80: Ограничение скорости 80 км/ч\nSpeed limit 80 kph",radius=120},

		{x=580,y=900,tooltip="ЛСД: Сигнализация дверей\nLSD: Door state light (doors are closed)",radius=120},
		{x=810,y=900,tooltip="ЛСД: Сигнализация дверей\nLSD: Door state light (doors are closed)",radius=120},
		
		{x=2540+60,y=780+60,tooltip="ЛСТ: Лампа сигнализации торможения\nLST: Brakes engaged",radius=120},
		{x=2540+60,y=330+60,tooltip="ЛВД: Лампа включения двигателей\nLVD: Engines engaged",radius=120},
		{x=2130+60,y=330+60,tooltip="ЛН: Лампа направления\nLN: Direction signal",radius=120},
		{x=2540+60,y=550+60,tooltip="ЛРС: Лампа равенства скоростей\nLRS: Speed equality light (next segment speed limit equal or greater to current)",radius=120},
	}
}

ENT.ButtonMap["ARSKyiv"] = {
	pos = Vector(459.59,10.98,13.10),
	ang = Angle(0,-90-0.2,56.3),
	width = 300*10,
	height = 110*10,
	scale = 0.0625/10,
}

-- Parking Brake Sign
ENT.ButtonMap["ParkingBrakeSign"] = {
	pos = Vector(458.8,10.9,13),
	ang = Angle(0,-90-0.2,56.3),
	width = 300,
	height = 110,
	scale = 0.0625,
	visivle=0,
}

-- AV panel
ENT.ButtonMap["AV"] = {
	pos = Vector(415,-57,55),
	ang = Angle(0,90,90),
	width = 590,
	height = 590,
	scale = 0.0625,
	
	buttons = {
		{ID = "A61Toggle", x=1+45*0,  y=5+167*0, radius=20, tooltip="A61 Управление 6ым поездным проводом\nTrain wire 6 control"},
		{ID = "A55Toggle",x=1+45*1,  y=5+167*0, radius=20, tooltip="A55 Управление проводом 10АС\nTrain wire 10AS control"},
		{ID = "A54Toggle",x=1+45*2,  y=5+167*0, radius=20, tooltip="A54 Управление проводом 10АК\nTrain wire 10AK control"},
		{ID = "A56Toggle",x=1+45*3,  y=5+167*0, radius=20, tooltip="A56 Включение аккумуляторной батареи\nTurn on battery power to control circuits"},
		{ID = "A27Toggle",x=1+45*4,  y=5+167*0, radius=20, tooltip="A27 Turn on DIP and lighting"},
		{ID = "A21Toggle",x=1+45*5,  y=5+167*0, radius=20, tooltip="A21 Door control"},
		{ID = "A10Toggle",x=1+45*6,  y=5+167*0, radius=20, tooltip="A10 Motor-compressor control"},
		{ID = "A53Toggle",x=1+45*7,  y=5+167*0, radius=20, tooltip="A53 KVC power supply"},
		{ID = "A43Toggle",x=1+45*8,  y=5+167*0, radius=20, tooltip="A43 ARS 12V power supply"},
		{ID = "A45Toggle",x=1+45*9,  y=5+167*0, radius=20, tooltip="A45 ARS train wire 10AU"},
		{ID = "A42Toggle",x=1+45*10, y=5+167*0, radius=20, tooltip="A42 ARS 75V power supply"},
		{ID = "A41Toggle",x=1+45*11, y=5+167*0, radius=20, tooltip="A41 ARS braking"},		
		------------------------------------------------------------------------
		{ID = "VUToggle", x=1+45*0,  y=5+167*1, radius=20, tooltip="VU  Train control"},
		{ID = "A64Toggle",x=1+45*1,  y=5+167*1, radius=20, tooltip="A64 Cabin lighting"},
		{ID = "A63Toggle",x=1+45*2,  y=5+167*1, radius=20, tooltip="A63 IGLA/BIS"},
		{ID = "A50Toggle",x=1+45*3,  y=5+167*1, radius=20, tooltip="A50 Turn on DIP and lighting"},
		{ID = "A52Toggle",x=1+45*4,  y=5+167*1, radius=20, tooltip="A52 Turn off DIP and lighting"},
		{ID = "A23Toggle",x=1+45*5,  y=5+167*1, radius=20, tooltip="A23 Emergency motor-compressor turn on"},	
		{ID = "A14Toggle",x=1+45*6,  y=5+167*1, radius=20, tooltip="A14 Train wire 18"},
		{ID = "A75Toggle",x=1+45*7,  y=5+167*1, radius=20, tooltip="A75 Cabin heating"},
		{ID = "A1Toggle", x=1+45*8,  y=5+167*1, radius=20, tooltip="A1  XOD-1"},
		{ID = "A2Toggle", x=1+45*9,  y=5+167*1, radius=20, tooltip="A2  XOD-2"},
		{ID = "A3Toggle", x=1+45*10, y=5+167*1, radius=20, tooltip="A3  XOD-3"},
		{ID = "A17Toggle",x=1+45*11, y=5+167*1, radius=20, tooltip="A17 Reset overload relay"},
		------------------------------------------------------------------------
		{ID = "A62Toggle",x=1+45*0,  y=5+167*2, radius=20, tooltip="A62 Radio communications"},
		{ID = "A29Toggle",x=1+45*1,  y=5+167*2, radius=20, tooltip="A29 Radio broadcasting"},
		{ID = "A5Toggle", x=1+45*2,  y=5+167*2, radius=20, tooltip="A5 Interim wagon"},
		{ID = "A5Pl",  x=1+45*2,  y=19+167*2, radius=20, tooltip="A5 Plomb"},
		{ID = "A6Toggle", x=1+45*3,  y=5+167*2, radius=20, tooltip="A6  T-1"},
		{ID = "A8Toggle", x=1+45*4,  y=5+167*2, radius=20, tooltip="A8  Pneumatic valves #1, #2"},
		{ID = "A20Toggle",x=1+45*5,  y=5+167*2, radius=20, tooltip="A20 Drive/brake circuit control, train wire 20"},
		{ID = "A25Toggle",x=1+45*6,  y=5+167*2, radius=20, tooltip="A25 Manual electric braking"},
		{ID = "A22Toggle",x=1+45*7,  y=5+167*2, radius=20, tooltip="A22 Turn on KK"},
		{ID = "A30Toggle",x=1+45*8,  y=5+167*2, radius=20, tooltip="A30 Rheostat controller motor power"},
		{ID = "A39Toggle",x=1+45*9,  y=5+167*2, radius=20, tooltip="A39 Emergency control"},
		{ID = "A44Toggle",x=1+45*10, y=5+167*2, radius=20, tooltip="A44 Emergency train control"},
		{ID = "A80Toggle",x=1+45*11, y=5+167*2, radius=20, tooltip="A80 Power circuit mode switch motor power"},
		------------------------------------------------------------------------
		{ID = "A65Toggle", x=16+44*0,  y=5+167*3, radius=20, tooltip="A65 Interior lighting"},
		{ID = "L_5Toggle",x=1+45*1,  y=5+167*3, radius=20, tooltip="А49 Emergency lighting"},
		{ID = "A24Toggle",x=1+45*2,  y=5+167*3, radius=20, tooltip="A24 Battery charging"},
		{ID = "A32Toggle",x=1+45*3,  y=5+167*3, radius=20, tooltip="A32 Open right doors"},
		{ID = "A31Toggle",x=1+45*4,  y=5+167*3, radius=20, tooltip="A31 Open left doors"},
		{ID = "A16Toggle",x=1+45*5,  y=5+167*3, radius=20, tooltip="A16 Close doors"},
		{ID = "A13Toggle",x=1+45*6,  y=5+167*3, radius=20, tooltip="A13 Door alarm"},
		{ID = "A12Toggle",x=1+45*7,  y=5+167*3, radius=20, tooltip="A12 Emergency door close"},
		{ID = "A7Toggle", x=1+45*8,  y=5+167*3, radius=20, tooltip="A7  Red lamp"},
		{ID = "A9Toggle", x=1+45*9,  y=5+167*3, radius=20, tooltip="A9  Red lamp"},
		--{ID = "BPSToggle",x=1+45*9,  y=5+167*3+60, radius=20, tooltip="РЦ-БПС: Блок ПротивоСкатывания\nRC-BPS: Against Rolling System"}, 
		{ID = "A46Toggle",x=1+45*10, y=5+167*3, radius=20, tooltip="A46 White lamp"},
		{ID = "A47Toggle",x=1+45*11, y=5+167*3, radius=20, tooltip="A47 White lamp"},
	}
}
ENT.ButtonMap["Battery"] = {
	pos = Vector(415,-57,23),
	ang = Angle(0,90,90),
	width = 270,
	height = 375,
	scale = 0.0625,
	
	buttons = {
		{ID = "BPSToggle", x=68, y=71, radius=70, tooltip="РЦ-БПС: Блок ПротивоСкатывания\nRC-BPS: Against Rolling System"},
		{ID = "RC1Toggle", x=68, y=180, radius=70, tooltip="РЦ-1: Разъединитель цепей АРС\nRC-1: ARS circuits disconnect"},
		{ID = "RC1Pl",x=49, y=220, radius=20, tooltip="Пломба РЦ-1\nRC-1 plomb"},
		{ID = "UOSPl",x=169, y=220, radius=20, tooltip="Пломба РЦ-УОС\nRC-UOS plomb"},
		{ID = "VBToggle", x=68, y=294, radius=70, tooltip="ВБ: Выключатель батареи\nVB: Battery on/off"},
	}
}

-- Help panel
ENT.ButtonMap["Help"] = {
	pos = Vector(420,-48,-4.65),
	ang = Angle(0,0,0),
	width = 15,
	height = 15,
	scale = 1,
	
	buttons = {
		{ID = "ShowHelp", x=10, y=10, radius=5, tooltip="Помощь в вождении поезда\nShow help on driving the train"},
	}
}

-- Train driver helpers panel

-- Pneumatic instrument panel
ENT.ButtonMap["PneumaticPanels"] = {
	pos = Vector(470,-44,10),
	ang = Angle(0,-150,78),
	width = 310,
	height = 120,
	scale = 0.0625,
	
	buttons = {
		{x=180,y=55,radius=50,tooltip="Давление в тормозных цилиндрах (ТЦ)\nBrake cylinder pressure"},
		{x=65,y=55,radius=50,tooltip="Давление в магистралях (красная: тормозной, чёрная: напорной)\nPressure in pneumatic lines (red: brake line, black: train line)"},
	}
}
ENT.ButtonMap["DriverValveDisconnect"] = {
	pos = Vector(452,-26,-4),
	ang = Angle(0,0,0),
	width = 200,
	height = 90,
	scale = 0.0625,
	
	buttons = {
		{ID = "DriverValveDisconnectToggle", x=0, y=0, w=200, h=90, tooltip="Клапан разобщения\nDriver valve disconnect valve"},
	}
}
ENT.ButtonMap["ParkingBrake"] = {
	pos = Vector(465,-42,-4),
	ang = Angle(0,180,90),
	width = 200,
	height = 120,
	scale = 0.0625,
	
	buttons = {
		{ID = "ParkingBrakeToggle", x=0, y=0, w=70, h=120, tooltip="Стояночный тормоз\nParking brake"},
	}
}
ENT.ButtonMap["EPKDisconnect"] = {
	pos = Vector(445,-39,-4),
	ang = Angle(0,0,0),
	width = 200,
	height = 120,
	scale = 0.0625,
	
	buttons = {
		{ID = "EPKToggle", x=0, y=0, w=200, h=120, tooltip="Кран ЭПВ\nEPK disconnect valve"},
	}
}
ENT.ButtonMap["Meters"] = {
	pos = Vector(459.8,-29.0,32.0),
	ang = Angle(0,-125,90),
	width = 95,
	height = 150,
	scale = 0.0625,
	
	buttons = {
		{x=22, y=24, w=55, h=45, tooltip="Вольтметр высокого напряжения (кВ)\nHV voltmeter (kV)"},
		{x=22, y=85, w=58, h=45, tooltip="Амперметр (А)\nTotal ampermeter (A)"},
	}
}

-- UAVA
ENT.ButtonMap["UAVAPanel"] = {
	pos = Vector(445.0,-55.3,-7.0),
	ang = Angle(0,180,90),
	width = 230,
	height = 170,
	scale = 0.0625,
	
	buttons = {
		{ID = "UAVAToggle",x=0, y=0, w=230/2, h=170, tooltip="УАВА: Универсальный Автоматический Выключатель Автостопа (отключение автостопа)\nUAVA: Universal Automatic Autostop Disabler (autostop disable)"},
		{ID = "UAVAContactSet",x=230/2, y=0, w=230/2, h=170, tooltip="УАВА: Универсальный Автоматический Выключатель Автостопа (восстановление контактов)\nUAVA: Universal Automatic Autostop Disabler(contacts reset)"},
	}
}


--These values should be identical to those drawing the schedule
local col1w = 80 -- 1st Column width
local col2w = 32 -- The other column widths
local rowtall = 30 -- Row height, includes -only- the usable space and not any lines

local rowamount = 16 -- How many rows to show (total)
ENT.ButtonMap["Schedule"] = {
	pos = Vector(470,19,27),
	ang = Angle(-3,-70,95),
	width = (col1w + 2 + (1 + col2w) * 3),
	height = (rowtall+1)*rowamount+1,
	scale = 0.0625/2,
	
	buttons = {
		{x=1, y=1, w=col1w, h=rowtall, tooltip="Маршрут №\nRoute number"},
		{x=1, y=rowtall*2+3, w=col1w, h=rowtall, tooltip="Путь №\nPath number"},
		
		{x=col1w+2, y=1, w=col2w*3+2, h=rowtall, tooltip="Время хода\nTotal schedule time"},
		{x=col1w+2, y=rowtall+2, w=col2w*3+2, h=rowtall, tooltip="Интервал\nTrain interval"},
		
		{x=col1w+2, y=rowtall*2+3, w=col2w, h=rowtall, tooltip="Час\nHour"},
		{x=col1w+col2w+3, y=rowtall*2+3, w=col2w, h=rowtall, tooltip="Мин\nMinute"},
		{x=col1w+col2w*2+4, y=rowtall*2+3, w=col2w, h=rowtall, tooltip="Сек\nSecond"},
		{x=col1w+2, y=rowtall*3+4, w=col2w*3+2, h=(rowtall+1)*(rowamount-3)-1, tooltip="Время прибытия\nArrival times"}, -- NEEDS TRANSLATING
		
		{x=1, y=rowtall*3+4, w=col1w, h=(rowtall+1)*(rowamount-3)-1, tooltip="Станция\nStation name"}, -- NEEDS TRANSLATING
	}
}
ENT.ButtonMap["IGLA"] = {
	pos = Vector(470.5,-28.2,8.0),
	ang = Angle(0,-90,68.9),
	width = 440,
	height = 190,
	scale = 0.024,
}

-- Temporary panels (possibly temporary)
ENT.ButtonMap["FrontPneumatic"] = {
	pos = Vector(480.0,-45.0,-46.5),
	ang = Angle(0,90,90),
	width = 900,
	height = 100,
	scale = 0.1,
	buttons = {
		{ID = "FrontBrakeLineIsolationToggle",x=182, y=57, radius=32, tooltip="Концевой кран тормозной магистрали"},
		{ID = "FrontTrainLineIsolationToggle",x=710, y=60, radius=32, tooltip="Концевой кран напорной магистрали"},
	}
}
ENT.ButtonMap["RearPneumatic"] = {
	pos = Vector(-472.0,45.0,-45.5),
	ang = Angle(0,270,90),
	width = 900,
	height = 100,
	scale = 0.1,
	buttons = {
		{ID = "RearBrakeLineIsolationToggle",x=710, y=60, radius=32, tooltip="Концевой кран тормозной магистрали"},
		{ID = "RearTrainLineIsolationToggle",x=182, y=57, radius=32, tooltip="Концевой кран напорной магистрали"},
	}
}
ENT.ButtonMap["GV"] = {
	pos = Vector(128,66,-52),
	ang = Angle(0,180,90),
	width = 170,
	height = 150,
	scale = 0.1,
	buttons = {
		{ID = "GVToggle",x=0, y=0, w= 170,h = 150, tooltip="Главный выключатель"},
	}
}
ENT.ButtonMap["AirDistributor"] = {
	pos = Vector(-168,68.6,-50),
	ang = Angle(0,180,90),
	width = 170,
	height = 80,
	scale = 0.1,
	buttons = {
		{ID = "AirDistributorDisconnectToggle",x=0, y=0, w= 170,h = 80, tooltip="Выключение воздухораспределителя"},
	}
}

-- Wagon numbers
ENT.ButtonMap["TrainNumber1"] = {
	pos = Vector(40,-68.6,-6),
	ang = Angle(0,0,90),
	width = 130,
	height = 55,
	scale = 0.20,
}
ENT.ButtonMap["TrainNumber2"] = {
	pos = Vector(40+28,68.6,-6),
	ang = Angle(0,180,90),
	width = 130,
	height = 55,
	scale = 0.20,
}

ENT.ButtonMap["InfoTable"] = {
	pos = Vector(469.1,-36.0,43.0),
	ang = Angle(0,90,90),
	width = 646,
	height = 100,
	scale = 0.1/2,
}

ENT.ButtonMap["InfoTableSelect"] = {
	pos = Vector(464.0,27.0,22.0),
	ang = Angle(0,-90,90),
	width = 550,
	height = 100,
	scale = 0.1,
		
	
	buttons = {
		{ID = "PrevSign",x=150,y=0,w=50,h=100, tooltip="Предыдущая надпись\nPrevious sign"},
		{ID = "NextSign",x=200,y=0,w=50,h=100, tooltip="Следующая надпись\nNext sign"},

		{ID = "Num2P",x=450,y=0,w=50,h=50, tooltip="Маршрут: Увеличить число 2\nRoute: Increase 2nd number"},
		{ID = "Num2M",x=450,y=50,w=50,h=50, tooltip="Маршрут: Уменьшить число 2\nRoute: Decrease 2nd number"},
		{ID = "Num1P",x=500,y=0,w=50,h=50, tooltip="Маршрут: Увеличить число 1\nRoute: Increase 1st number"},
		{ID = "Num1M",x=500,y=50,w=50,h=50, tooltip="Маршрут: Уменьшить число 1\nRoute: Decrease 1st number"},
	}
}

ENT.ButtonMap["InfoRoute"] = {
	pos = Vector(469.1,-42.75,61),
	ang = Angle(0,90,90),
	width = 100,
	height = 100,
	scale = 0.1,
}
ENT.ButtonMap["CabinDoor"] = {
	pos = Vector(414.5,63.9,56.7),
	ang = Angle(0,0,90),
	width = 642,
	height = 2000,
	scale = 0.1/2,
	buttons = {
		{ID = "CabinDoor",x=0,y=0,w=642,h=2000, tooltip="Дверь в кабину машиниста\nCabin door"},
	}
}
ENT.ButtonMap["PassengerDoor"] = {
	pos = Vector(380,40.6,50.6), --28
	ang = Angle(0,90,90),
	width = 642-220,
	height = 2000,
	scale = 0.1/2,
	buttons = {
		{ID = "PassengerDoor",x=0,y=0,w=642-220,h=2000, tooltip="Дверь в кабину машиниста из салона\nPass door "},
	}
}

--ENT.ButtonMap["CabinFaceDoor"] = {
--	pos = Vector(380,40,30.6), --28
--	ang = Angle(0,90,90),
--	width = 642-220,
--	height = 2000,
--	scale = 0.1/2,
--	buttons = {
--		{ID = "CabinFaceDoor",x=0,y=0,w=642-220,h=2000, tooltip="Дверь в кабину машиниста из салона\nPass door"},
--	}
--}
--door_cab_face
ENT.ButtonMap["Trap"] = {
	pos = Vector(460,40,30.6), --28
	ang = Angle(0,-90,90),
	width = 642-220,
	height = 2000,
	scale = 0.1/2,
	buttons = {
		{ID = "Trap",x=0,y=0,w=642-220,h=2000, tooltip="Трап\nEmergency Exit"},
	}
}
--ENT.ButtonMap["Wiper"] = {
--	pos = Vector(455.80,7,57.5),
--	ang = Angle(180,90,0.0),
--	width = 750,
--	height = 300,
--	scale = 0.0185,
--	buttons = {
--		{ID = "WiperToggle",x=0,y=0,w=750,h=300, tooltip="Дворник\nWiper"},
--	}
--}
--------------------------------------------------------------------------------
ENT.ClientPropsInitialized = false
ENT.ClientProps["brake013"] = {
	model = "models/metrostroi/81-717/brake.mdl",
	pos = Vector(454,-29.5,-5),
	ang = Angle(0,135,0)
}
ENT.ClientProps["controller"] = {
 model = "models/6000/grkv.mdl",
 pos = Vector(461.3,-1.4,-6),
 ang = Angle(0,-90,15)
}

ENT.ClientProps["reverser"] = {
	model = "models/metrostroi/81-717/reverser.mdl",
	pos = Vector(458.75,15,-6),
	ang = Angle(-15,0,90)
}
ENT.ClientProps["brake_disconnect"] = {
	model = "models/metrostroi/81-717/uava.mdl",
	pos = Vector(462,-32,-4),
	ang = Angle(0,25,270)
}
ENT.ClientProps["EPK_disconnect"] = {
	model = "models/metrostroi/81-717/uava.mdl",
	pos = Vector(454,-42,-4),
	ang = Angle(0,-100,270),
}
ENT.ClientProps["ParkingBrake"] = {
	model = "models/metrostroi/81-717/uava.mdl",
	pos = Vector(461,-42,-4),
	ang = Angle(0,0,270),
}
ENT.ClientProps["krureverser"] = {
	model = "models/metrostroi/81-717/reverser.mdl",
	pos = Vector(461.4,15,-4.5),
	ang = Angle(-15,0,90)
}
--------------------------------------------------------------------------------
ENT.ClientProps["train_line"] = {
	model = "models/metrostroi/81-717/black_arrow.mdl",
	pos = Vector(466.7,-45.5,5.5),
	ang = Angle(90+18,0,180+66)
}
ENT.ClientProps["brake_line"] = {
	model = "models/metrostroi/81-717/red_arrow.mdl",
    pos = Vector(466.7,-45.45,5.5),
	ang = Angle(90+18,0,180+62)
}
ENT.ClientProps["brake_cylinder"] = {
	model = "models/metrostroi/81-717/black_arrow.mdl",
	pos = Vector(462,-48.1,5),
	ang = Angle(90+18,0,180+66)
}
--------------------------------------------------------------------------------
--ENT.ClientProps["ampermeter"] = {--24.2 0.2 5.3
--	model = "models/metrostroi/81-717/volt_arrow.mdl",
--	pos = Vector(458.30,-34.0+2.25,23.2),
--	ang = Angle(90,0,-35+360+70)
--}
--ENT.ClientProps["voltmeter"] = {--
--	model = "models/metrostroi/81-717/volt_arrow.mdl",
--	pos = Vector(458.30,-34.0+2.25,26.85),
--	ang = Angle(90,0,-35+360+70)
--}
--ENT.ClientProps["volt1"] = {--
--	model = "models/metrostroi/81-717/volt_arrow.mdl",
--	pos = Vector(462.3,-46.15,-0.3),
--	ang = Angle(120,0,360)
--}
--[[
"LSD"
"LOCh"
"L0"
"LRS"
"L40"
"L60"
"L70"
"L80"
"LRK"
]]

--------------------------------------------------------------------------------
Metrostroi.ClientPropForButton("headlights",{
	panel = "Main",
	button = "VUSToggle",	
	model = "models/6000/button_s.mdl",
	ang = 90
})
--------------------------------------------------------------------------------

Metrostroi.ClientPropForButton("R_UNch",{
	panel = "BPSNrear",
	button = "R_UNchToggle",
	model = "models/metrostroi_train/81/tumbler4.mdl",
	ang = 90
})
Metrostroi.ClientPropForButton("R_G",{
	panel = "BPSNrear",
	button = "R_GToggle",
	model = "models/metrostroi_train/81/tumbler4.mdl",
	ang = 90
})
Metrostroi.ClientPropForButton("R_Radio",{
	panel = "Announcer",
	button = "R_RadioToggle",
	model = "models/6000/tumbler1.mdl",
	ang = 90
})
Metrostroi.ClientPropForButton("R_Program",{
	panel = "Main",
	button = "R_ProgramToggle",
	model = "models/6000/button_s.mdl",
	ang = 90
})
Metrostroi.ClientPropForButton("BPSNon",{
	panel = "BPSNrear",
	button = "BPSNonToggle",
	model = "models/metrostroi_train/81/tumbler4.mdl",
	ang = 90	
})
Metrostroi.ClientPropForButton("VozvratRP",{
	panel = "Front",
	button = "VozvratRPSet",
	model = "models/6000/button_s.mdl",
	skin = 4,
	z = 1,
})
Metrostroi.ClientPropForButton("VMK",{
	panel = "BPSNrear",
	button = "VMKToggle",
	model = "models/metrostroi_train/81/tumbler4.mdl",
	ang = 90
})
Metrostroi.ClientPropForButton("KAH",{
	panel = "Front",
	button = "KAHSet",
	model = "models/6000/buttonw.mdl",
	skin = 1,
})
Metrostroi.ClientPropForButton("KAHP1",{
	panel = "Front",
	button = "KAHPl",
	model = "models/metrostroi_train/81/plomb_b.mdl",
	ang = 110,
	z = -3,
})
Metrostroi.ClientPropForButton("KAHK",{
	panel = "Front",
	button = "KAHKToggle",
	model = "models/metrostroi_train/81/krishka.mdl",
	ang = 0,
	z = -2
})
Metrostroi.ClientPropForButton("VAH",{
	panel = "PackSwitch",
	button = "VAHToggle",
	model = "models/6000/pult/buttons/button_round.mdl",
	ang = 50
})

Metrostroi.ClientPropForButton("VAD",{
	panel = "Front",
	button = "VADToggle",
	model = "models/6000/buttonw.mdl",
	ang = 90
})
--Metrostroi.ClientPropForButton("UAVAContactSet",{
--	panel = "Front",
--	button = "UAVAContactSet",
--	model = "models/6000/button_s.mdl",
--	ang = 90
--})
Metrostroi.ClientPropForButton("Wiper",{
	panel = "Front",
	button = "WiperToggle",
	model = "models/6000/button_s.mdl",
	ang = 90
})
Metrostroi.ClientPropForButton("ALS",{
	panel = "PackSwitch",
	button = "ALSToggle",
	model = "models/6000/pult/buttons/button_round.mdl",
	ang = 50
})
Metrostroi.ClientPropForButton("ARS",{
	panel = "PackSwitch",
	button = "ARSToggle",
	model = "models/6000/pult/buttons/button_round.mdl",
	ang = 50
})
Metrostroi.ClientPropForButton("OtklAVU",{
	panel = "PackSwitch",
	button = "OtklAVUToggle",
	model = "models/6000/pult/buttons/button_round.mdl",
	ang = 50
})
--Metrostroi.ClientPropForButton("OtklAVUPl",{
--	panel = "Main",
--	button = "OtklAVUPl",
--	model = "models/metrostroi_train/81/plomb.mdl",
--	z = -5,
--})
Metrostroi.ClientPropForButton("KRZD",{
	panel = "Main",
	button = "KRZDSet",	
	model = "models/6000/buttonw.mdl",
	skin = 4,
	z = 3,
})
Metrostroi.ClientPropForButton("RezMK",{
	panel = "Main",
	button = "RezMKSet",	
	model = "models/6000/buttonw.mdl",
	skin = 4,
	z = 3,
})
Metrostroi.ClientPropForButton("VUD1",{
	panel = "Main",
	button = "VUD1Toggle",
	model = "models/6000/buttonw.mdl",
	ang = 0
})
Metrostroi.ClientPropForButton("DoorSelect",{
	panel = "Main",
	button = "DoorSelectToggle",
	model = "models/6000/buttonw.mdl",
	ang = 90
})
Metrostroi.ClientPropForButton("KDL",{
	panel = "Main",
	button = "KDLSet",
	model = "models/6000/buttonw.mdl",
	skin = 7,
})
Metrostroi.ClientPropForButton("KDP",{
	panel = "Main",
	button = "KDPSet",
	model = "models/6000/buttonw.mdl",
	skin = 7,
})
Metrostroi.ClientPropForButton("VZ1",{
	panel = "Main",
	button = "VZ1Set",
	model = "models/6000/button_s.mdl",
	z=2
})
Metrostroi.ClientPropForButton("KSN",{
	panel = "Front",
	button = "KSNSet",
	model = "models/6000/button_s.mdl"
})
Metrostroi.ClientPropForButton("KRP",{
	panel = "Main",
	button = "KRPSet",
	model = "models/6000/buttonw.mdl",
	skin = 4
})
Metrostroi.ClientPropForButton("KDLR",{
	panel = "Main",
	button = "KDLRSet",
	model = "models/6000/buttonw.mdl",
	skin = 7,
	z=2
})
Metrostroi.ClientPropForButton("GreenRPLight",{
	panel = "Front",
	button = "GreenRPLight",
	model = "models/metrostroi_train/81/lamp.mdl",
	z = -10,
})
Metrostroi.ClientPropForButton("GreenRPLight_light",{
	panel = "Front",
	button = "GreenRPLight",
	model = "models/metrostroi_train/81/lamp_on.mdl",
	ignorepanel = true,
	z = -10,
})
--Metrostroi.ClientPropForButton("AVULight",{
--	panel = "Front",
--	button = "AVULight",
--	model = "models/metrostroi/81-717/light02.mdl",
--})
--Metrostroi.ClientPropForButton("AVULight",{
--	panel = "Front",
--	button = "AVULight",
--	model = "models/metrostroi_train/81/lamp.mdl",
--	skin = 1,
--	z = -10,
--})
--Metrostroi.ClientPropForButton("AVULight_light",{
--	panel = "Front",
--	button = "AVULight",
--	model = "models/metrostroi_train/81/lamp_on.mdl",
--	ignorepanel = true,
--	skin = 1,
--	z = -10,
--})
Metrostroi.ClientPropForButton("KVPLight",{
	panel = "Front",
	button = "KVPLight",
	model = "models/metrostroi_train/81/lamp.mdl",
	skin = 3,
	z = -10,
})
Metrostroi.ClientPropForButton("KVPLight_light",{
	panel = "Front",
	button = "KVPLight",
	model = "models/metrostroi_train/81/lamp_on.mdl",
	ignorepanel = true,
	skin = 3,
	z = -10,
})
Metrostroi.ClientPropForButton("SPLight",{
	panel = "Front",
	button = "SPLight",
	model = "models/metrostroi_train/81/lamp.mdl",
	skin = 1,
	z = -10,
})
Metrostroi.ClientPropForButton("SPLight_light",{
	panel = "Front",
	button = "SPLight",
	model = "models/metrostroi_train/81/lamp_on.mdl",
	ignorepanel = true,
	skin = 1,
	z = -10,
})
-- Placeholders
Metrostroi.ClientPropForButton("L_4",{
	panel = "Main",
	button = "L_4Toggle",
	model = "models/6000/button_s.mdl",
	ang = 90
})
--Metrostroi.ClientPropForButton("PS2",{
--	panel = "Main",
--	button = "PS2",
--	model = "models/6000/button_s.mdl",
--	ang = 90
--})
Metrostroi.ClientPropForButton("L_1",{
	panel = "BPSNrear",
	button = "L_1Toggle",
	model = "models/metrostroi_train/81/tumbler4.mdl",
	ang = 90
})
Metrostroi.ClientPropForButton("L_2",{
	panel = "BPSNrear",
	button = "L_2Toggle",
	model = "models/metrostroi_train/81/tumbler3.mdl",
	ang = 90
})
Metrostroi.ClientPropForButton("L_3",{
	panel = "BPSNrear",
	button = "L_3Toggle",
	model = "models/metrostroi_train/81/tumbler3.mdl",
	ang = 90
})
Metrostroi.ClientPropForButton("ConverterProtection",{
	panel = "Front",
	button = "ConverterProtectionSet",
	model = "models/6000/button_s.mdl",
	skin = 2,
})
Metrostroi.ClientPropForButton("DIPoff",{
	panel = "Front",
	button = "DIPoffSet",
	model = "models/6000/button_s.mdl"
})
Metrostroi.ClientPropForButton("KB",{
	panel = "Main",
	button = "2:KVTSet",
	model = "models/6000/button_s.mdl",
	skin = 1,
})

-- Customs
Metrostroi.ClientPropForButton("Custom1",{
	panel = "Announcer",
	button = "Custom1Set",
	model = "models/6000/buttonw.mdl",
	skin = 5,
})
Metrostroi.ClientPropForButton("Custom2",{
	panel = "Announcer",
	button = "Custom2Set",
	model = "models/6000/buttonw.mdl",
	skin = 5,
})
Metrostroi.ClientPropForButton("Custom3",{
	panel = "Announcer",
	button = "Custom3Set",
	model = "models/6000/buttonw.mdl"
})
--Metrostroi.ClientPropForButton("Autodrive",{
--	panel = "Main",
--	button = "AutodriveToggle",
--	model = "models/metrostroi/81-717/switch04.mdl",
--})

--------------------------------------------------------------------------------
ENT.ClientProps["gv"] = {
	model = "models/metrostroi/81-717/gv.mdl",
	pos = Vector(120,62.0+0.0,-60),
	ang = Angle(-90,0,-90)
}
ENT.ClientProps["gv_wrench"] = {
	model = "models/metrostroi/81-717/reverser.mdl",
	pos = Vector(120,62.0+0.0,-60),
	ang = Angle(0,0,0)
}
--------------------------------------------------------------------------------
function ENT:SetAutobreakersPos(ps)
	
end
for x=0,11 do
	for y=0,3 do
		if (x+12*y) == 37 then continue end
		ENT.ClientProps["a"..(x+12*y)] = {
			model = "models/metrostroi/81-717/circuit_breaker.mdl",
			pos = Vector(415,-57+x*2.8,55-y*10.4),
			ang = Angle(90,0,0)
		}
		Metrostroi.InsertHide("AV","a"..(x+12*y))
	end
end

ENT.ClientProps["L_5"] ={	
	model = "models/metrostroi/81-717/circuit_breaker.mdl",
	pos = Vector(415,-54.2,23.8),
	ang = Angle(90,0,0)
}
ENT.ClientProps["A5Pl"] ={	
	model = "models/metrostroi_train/81/plomb_b.mdl",
	pos = Vector(415,-51.2,32),
	ang = Angle(90,0,0)
}
Metrostroi.ClientPropForButton("battery",{
	panel = "Battery",
	button = "VBToggle",	
	model = "models/metrostroi/81-717/rc.mdl",
})
Metrostroi.ClientPropForButton("RC1",{
	panel = "Battery",
	button = "RC1Toggle",	
	model = "models/metrostroi/81-717/rc.mdl",
})

Metrostroi.ClientPropForButton("UOS",{
	panel = "PackSwitch",
	button = "UOSToggle",	
	model = "models/6000/pult/buttons/button_round.mdl",
	ang = 50
})
Metrostroi.ClientPropForButton("RC1Pl",{
	panel = "Battery",
	button = "RC1Pl",
	model = "models/metrostroi_train/81/plomb.mdl",
	z = -3,
})

Metrostroi.ClientPropForButton("UOSPl",{
	panel = "Battery",
	button = "UOSPl",	
	model = "models/metrostroi_train/81/plomb.mdl",
	z = -3,
})

Metrostroi.ClientPropForButton("BPS",{
	panel = "Battery",
	button = "BPSToggle",
	model = "models/metrostroi/81-717/rc.mdl",
})

--------------------------------------------------------------------------------
ENT.ClientProps["book"] = {
	model = "models/props_lab/clipboard.mdl",
	pos = Vector(430.5,-58,-4.65),
	ang = Angle(0,0,0)
}

ENT.ClientProps["FrontBrake"] = {--
	model = "models/metrostroi_train/81/tmiso.mdl",
	pos = Vector(460, -26.0, -55),
	ang = Angle(0,-90,0)
}
ENT.ClientProps["FrontTrain"] = {--
	model = "models/metrostroi_train/81/nmsio.mdl",
	pos = Vector(460, 25.7, -55),
	ang = Angle(0,-90,0)
}
ENT.ClientProps["RearBrake"] = {--
	model = "models/metrostroi_train/81/tmiso.mdl",
	pos = Vector(-455, -25.8, -55),
	ang = Angle(0,90,0)
}
ENT.ClientProps["RearTrain"] = {--
	model = "models/metrostroi_train/81/nmsio.mdl",
	pos = Vector(-455, 26, -55),
	ang = Angle(0,90,0)
}
ENT.ClientProps["PB"] = {--
	model = "models/metrostroi_train/81/pb.mdl",
	pos = Vector(455.7, 11.5, -27.5),
	ang = Angle(0,-90,40)
}

---------------------------------------------------------------------
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


--24.2 0.2 5.3
ENT.ClientProps["door1"] = {
	model = "models/6000/door_back.mdl",
	pos = Vector(-469.0,16.2,-42),
	ang = Angle(0,90,0)
}
ENT.ClientProps["door2"] = {
	model = "models/6000/door_salon.mdl",
	pos = Vector(380,28.0,-42),
	ang = Angle(0,-90,0)
}
ENT.ClientProps["door4"] = {
	model = "models/6000/door_front.mdl",
	pos = Vector(478.5,36.9,-46.31),
	ang = Angle(0,0,0)
}
ENT.ClientProps["door3"] = {
	model = "models/6000/door_cabin.mdl",
	pos = Vector(448,65,-42),
	ang = Angle(0,90,0)
}
ENT.ClientProps["UAVALever"] = {
	model = "models/metrostroi_train/81/uavalever.mdl",
	pos = Vector(441.3,-60.8,-16.5),
	ang = Angle(180,0,-65)
}
--ENT.ClientProps["teapot"] = {
--	model = "models/props_interiors/pot01a.mdl",
--	pos = Vector(441.3,-55,0),
--	ang = Angle(0,90,0),
--}

ENT.ClientProps["wiper"] = {
	model = "models/metrostroi_train/81/wiper.mdl",
	pos = Vector(480,-13,3.8),
	ang = Angle(-180,-90,0)
}

--ENT.AutoPos = {Vector(407.3,-10.5,47),Vector(419.3,-57.5,47.5)}
--local X = Material( "metrostroi_skins/81-717/6.png")

function ENT:Initialize()
	self.BaseClass.Initialize(self)
end
--------------------------------------------------------------------------------
function ENT:Think()

		
	--Sid Body Group check


	self.BaseClass.Think(self)
	if self.ClientProps["KVPLight_light"] and self.ClientProps["KVPLight_light"].skin ~= self:GetNWInt("KVPType") then
		self.ClientProps["KVPLight_light"].skin = self:GetNWInt("KVPType")
		if IsValid(self.ClientEnts["KVPLight_light"]) then self.ClientEnts["KVPLight_light"]:SetSkin(self:GetNWInt("KVPType")) end
	end
	if self.ClientProps["KVPLight"] and self.ClientProps["KVPLight"].skin ~= self:GetNWInt("KVPType") then
		self.ClientProps["KVPLight"].skin = self:GetNWInt("KVPType")
		if IsValid(self.ClientEnts["KVPLight"]) then self.ClientEnts["KVPLight"]:SetSkin(self:GetNWInt("KVPType")) end
	end
	local distance = self:GetPos():Distance(LocalPlayer():GetPos())
	if distance > 8192 then return end
	for i = 0,8 do
		--print(i,self:GetBodygroupName(i))
	end
	

	local transient = (self.Transient or 0)*0.05
	if (self.Transient or 0) ~= 0.0 then self.Transient = 0.0 end
	self.KRUPos = self.KRUPos or 0
	if self:GetPackedBool(27) 
	then self.KRUPos = self.KRUPos + (0.0 - self.KRUPos)*8.0*self.DeltaTime
	else self.KRUPos = 1.0
	end
	if not self.WiperValue then self.WiperValue = 0 end
	if self:GetPackedBool("Wiper") then
		self.WiperValue = self.WiperValue + 3.14*self.DeltaTime
	end
	if self.WiperValue > math.pi*2 then self.WiperValue = 0 end
	-- Simulate pressure gauges getting stuck a little
	self:Animate("wiper", 		(math.sin(self.WiperValue-math.pi/2)+2)/2 - 0.5, 			0, 0.34,  256,24)
	self:Animate("brake013", 		self:GetPackedRatio(0)^0.5,			0.00, 0.65,  256,24)
	--print(self:GetPackedBool(163))
	self:Animate("controller",		1-self:GetPackedRatio(1),			0.17, 0.78,  2,false)
	self:Animate("reverser",		self:GetPackedRatio(2),				0.46, 0.54,  4,false)
	self:Animate("volt1", 			self:GetPackedRatio(10),			0.381, 0.645,				nil, nil,  256,2,0.01)
	self:ShowHide("reverser",		self:GetPackedBool(0))
	self:Animate("krureverser",		self:GetPackedRatio(2),				0.54, 0.49,  4,false)
	self:ShowHide("krureverser",	self:GetPackedBool(27))
--	self:Animate("Wiper", 	self:GetPackedBool(169))
	
	--Sid Body Group check

--	self:ShowHide("brake013",		self:GetPackedBool(22))

	--self:ShowHide("controller",		self:GetNWBool("NewKV"))
	--print(self:GetPackedRatio(6))
	self:Animate("brake_line",		self:GetPackedRatio(4),				0.21, 0.865,  256,2)--,0.01)
	self:Animate("train_line",		self:GetPackedRatio(5),	0.21, 0.865,  4096,0)--,0.01)
	self:Animate("brake_cylinder",	self:GetPackedRatio(6),	 			0.215, 0.86,  256,2)--,0.03)
	--print(self:GetPackedRatio(7))
	--print((math.sin(CurTime()%4/4/math.pi*30)+2)/2-0.5)
	self:Animate("voltmeter",		self:GetPackedRatio(7),				0.419, 0.620,				nil, nil)--,  256,2,0.01)
	self:Animate("ampermeter",		self:GetPackedRatio(8),				0.42, 0.627,				nil, nil,  256,2,0.01)
	
	self:Animate("headlights",		self:GetPackedBool(1) and 1 or 0, 	0,1, 8, false)
	self:Animate("VozvratRP",		self:GetPackedBool(2) and 1 or 0, 	0,1, 16, false)
	self:Animate("DIPon",			self:GetPackedBool(3) and 1 or 0, 	0,1, 16, false)
	self:Animate("DIPoff",			self:GetPackedBool(4) and 1 or 0, 	0,1, 16, false)	
	self:Animate("brake_disconnect",self:GetPackedBool(6) and 1 or 0, 	0,0.7, 3, false)
	self:Animate("battery",			self:GetPackedBool(7) and 0.87 or 1, 	0,1, 1, false)
	self:Animate("RezMK",			self:GetPackedBool(8) and 1 or 0, 	0,1, 16, false)
	self:Animate("VMK",				self:GetPackedBool(9) and 1 or 0, 	0,1, 16, false)
	self:Animate("VAH",				self:GetPackedBool(10) and 1 or 0, 	0,1, 16, false)
	local VAD = self:Animate("VAD",				self:GetPackedBool(11) and 1 or 0, 	0,1, 16, false)
	local A = self:Animate("VUD1",			(self:GetPackedBool(12) and 1 or 0), 	0,1, 16, false)
	self:Animate("VUD2",			self:GetPackedBool(13) and 1 or 0, 	0,1, 16, false)
	self:Animate("VDL",				self:GetPackedBool(14) and 1 or 0, 	0,1, 16, false)
	self:Animate("VZ1",				self:GetPackedBool("VZ1") and 1 or 0, 	0,1, 16, false)
	self:Animate("KDLR",				self:GetPackedBool("KDLR") and 1 or 0, 	0,1, 16, false)	self:AnimateFrom("KDLR_light","KDLR")
	self:Animate("KDL",				self:GetPackedBool(15) and 1 or 0, 	0,1, 16, false)	self:AnimateFrom("KDL_light","KDL")
	self:Animate("KDP",				self:GetPackedBool(16) and 1 or 0, 	0,1, 16, false)	self:AnimateFrom("KDP_light","KDP")
	self:Animate("KDLK",				self:GetPackedBool("KDLK") and 1 or 0, 	0.32,0.67, 4, false)
	self:Animate("KDLRK",				self:GetPackedBool("KDLRK") and 1 or 0, 	0.32,0.67, 4, false)
	self:Animate("KDLRK",				self:GetPackedBool("KDLRK") and 1 or 0, 	0.32,0.67, 4, false)
	self:Animate("KDLRK",				self:GetPackedBool("KDLRK") and 1 or 0, 	0.32,0.67, 4, false)
	self:Animate("KDPK",				self:GetPackedBool("KDPK") and 1 or VAD*0.17, 	0.34,0.69, 4, false)
	self:Animate("Wiper",				self:GetPackedBool(169) and 1 or 0, 	0,1, 8, false)	

	self:SetCSBodygroup("UOSPl",1,self:GetPackedBool("UOSPl") and 0 or 1)
--	self:SetCSBodygroup("OtklAVUPl",1,self:GetPackedBool("OtklAVUPl") and 0 or 1)
--	self:SetCSBodygroup("RC1Pl",1,self:GetPackedBool("RC1Pl") and 0 or 1)
	self:SetCSBodygroup("A5Pl",1,self:GetPackedBool("A5Pl") and 0 or 1)
	self:SetCSBodygroup("RC1Pl",1,self:GetPackedBool("RC1Pl") and 0 or 1)
	
	self:HideButton("RC1",self:GetPackedBool("RC1Pl"))
	self:HideButton("KAH",self:GetPackedBool("KAHPl"))
	self:HideButton("KAHK",self:GetPackedBool("KAHPl"))
	
	self:HideButton("RC1Pl",not self:GetPackedBool("RC1Pl"))
	self:HideButton("KAHPl",not self:GetPackedBool("KAHPl"))
	
	local An = self:Animate("KDLRr",self:GetPackedBool("Left") and 1 or 0,0,1,10,false)
	--self:ShowHideSmooth("KDL_light",An)
	--self:ShowHideSmooth("KDLR_light",An)
	--self:ShowHideSmooth("KDP_light",self:Animate("KDPr",self:GetPackedBool("Right") and 1 or 0,0,1,10,false))
	
	self:Animate("KRZD",			self:GetPackedBool(17) and 1 or 0, 	0,1, 16, false)
	self:Animate("KSN",				self:GetPackedBool(18) and 1 or 0, 	0,1, 16, false)
	self:Animate("OtklAVU",			self:GetPackedBool(19) and 1 or 0, 	0,1, 16, false)
	self:Animate("DURAPower",		self:GetPackedBool(24) and 1 or 0, 	0,1, 16, false)
	self:Animate("SelectMain",		self:GetPackedBool(29) and 1 or 0, 	0,1, 16, false)
	self:Animate("SelectAlternate",	self:GetPackedBool(30) and 1 or 0, 	0,1, 16, false)
	self:Animate("SelectChannel",	self:GetPackedBool(31) and 1 or 0, 	0,1, 16, false)
	self:Animate("ARS",				self:GetPackedBool(56) and 1 or 0, 	0,1, 16, false)
	self:Animate("ALS",				self:GetPackedBool(57) and 1 or 0, 	0,1, 16, false)
	self:Animate("KVT",				self:GetPackedBool(28) and 1 or 0, 	0,1, 16, false)
	self:Animate("KB",			self:GetPackedBool(28) and 1 or 0, 	0,1, 16, false)
	self:Animate("BPSNon",			self:GetPackedBool(59) and 1 or 0, 	0,1, 16, false)
	self:Animate("L_1",				self:GetPackedBool(60) and 1 or 0, 	0,1, 16, false)
	self:Animate("L_2",				self:GetPackedBool(61) and 1 or 0, 	0,1, 16, false)
	self:Animate("L_3",				self:GetPackedBool(62) and 1 or 0, 	0,1, 16, false)
	self:Animate("L_4",				self:GetPackedBool(63) and 1 or 0, 	0,1, 16, false)
	self:Animate("L_5",				self:GetPackedBool(53) and 1 or 0,0,1,8,false)
	self:Animate("L_5_1",				self:GetPackedBool(53) and 1 or 0,0,1,8,false)
	self:Animate("DoorSelect",		self:GetPackedBool(55) and 1 or 0, 	0,1, 16, false)	
	self:Animate("KRP",				self:GetPackedBool(113) and 1 or 0, 0,1, 16, false)	
	self:Animate("Custom1",			self:GetPackedBool(114) and 1 or 0, 0,1, 16, false)
	self:Animate("Custom2",			self:GetPackedBool(115) and 1 or 0, 0,1, 16, false)
	self:Animate("Custom3",			self:GetPackedBool(116) and 1 or 0, 0,1, 16, false)
	self:Animate("Custom4",			self:GetPackedBool(117) and 1 or 0, 0,1, 16, false)
	self:Animate("Custom5",			self:GetPackedBool(118) and 1 or 0, 0,1, 16, false)
	self:Animate("Custom6",			self:GetPackedBool(119) and 1 or 0, 0,1, 16, false)
	self:Animate("Custom7",			self:GetPackedBool(120) and 1 or 0, 0,1, 16, false)
	self:Animate("Custom8",			self:GetPackedBool(121) and 1 or 0, 0,1, 16, false)
	self:Animate("CustomA",			self:GetPackedBool(122) and 1 or 0, 0,1, 16, false)
	self:Animate("CustomB",			self:GetPackedBool(123) and 1 or 0, 0,1, 16, false)
	self:Animate("CustomC",			self:GetPackedBool(124) and 1 or 0, 0,1, 16, false)
	self:Animate("R_G",				self:GetPackedBool(125) and 1 or 0, 0,1, 16, false)
	self:Animate("R_Radio",			self:GetPackedBool(126) and 1 or 0, 0,1, 16, false)
	self:Animate("R_UNch",			self:GetPackedBool(127) and 1 or 0, 0,1, 16, false)
	self:Animate("R_Program",		self:GetPackedBool(128) and 0 or (self:GetPackedBool(129) and 1 or 0.5), 0,1, 16, false)
	self:Animate("Program1",		self:GetPackedBool(128) and 1 or 0, 0,1, 16, false)
	self:Animate("Program2",		self:GetPackedBool(129) and 1 or 0, 0,1, 16, false)
	self:Animate("RC1",				self:GetPackedBool(130) and 0.87 or 1, 	0,1, 1, false)
	self:Animate("UOS",				self:GetPackedBool(134) and 1 or 0.87, 	0,1, 1, false)
	self:Animate("BPS",				self:GetPackedBool(135) and 0.87 or 1, 	0,1, 1, false)
	self:Animate("RC1_2",				self:GetPackedBool(130) and 0.87 or 1, 	0,1, 1, false)
	self:Animate("UOS_2",				self:GetPackedBool(134) and 1 or 0.87, 	0,1, 1, false)
	self:Animate("BPS_2",				self:GetPackedBool(135) and 0.87 or 1, 	0,1, 1, false)
	--self:Animate("Autodrive",		self:GetPackedBool(132) and 1 or 0,	0,1, 16, false)
	self:Animate("ARS13",			self:GetPackedBool(150) and 1 or 0, 0,1, 16, false)
	self:Animate("Radio13",			self:GetPackedBool(151) and 1 or 0, 0,1, 16, false)
	self:Animate("UAVALever",	self:GetPackedBool(152) and 1 or 0, 	0,0.25, 128,  3,false)
	self:Animate("EPK_disconnect",	self:GetPackedBool(155) and 0 or 1,0,0.5, 3, false)
	self:Animate("ParkingBrake",	self:GetPackedBool(160) and 0 or 1,0,0.5, 3, false)
	self:Animate("KAH",	self:GetPackedBool(163) and 1 or 0,0,1, 16, false)
	self:Animate("Indicate",self:GetPackedBool("Indicate3") and 0.4 or self:GetPackedBool("Indicate2") and 0.29 or self:GetPackedBool("Indicate1") and 0.17 or 0,0.0,1,2,false)
	self:Animate("BCCD",self:GetPackedBool("BCCD") and 1 or 0,0,1,8,false)
	self:Animate("VZP",self:GetPackedBool("VZP") and 1 or 0,0,1,8,false)
	self:Animate("B7",self:GetPackedBool("B7") and 1 or 0,0,1,8,false)
	self:Animate("B8",self:GetPackedBool("B8") and 1 or 0,0,1,8,false)
	self:Animate("B9",self:GetPackedBool("B9") and 1 or 0,0,1,8,false)
	self:Animate("BLeft",self:GetPackedBool("BLeft") and 1 or 0,0,1,8,false)
	self:Animate("B4",self:GetPackedBool("B4") and 1 or 0,0,1,8,false)
	self:Animate("B5",self:GetPackedBool("B5") and 1 or 0,0,1,8,false)
	self:Animate("B6",self:GetPackedBool("B6") and 1 or 0,0,1,8,false)
	self:Animate("BUp",self:GetPackedBool("BUp") and 1 or 0,0,1,8,false)
	self:Animate("B1",self:GetPackedBool("B1") and 1 or 0,0,1,8,false)
	self:Animate("B2",self:GetPackedBool("B2") and 1 or 0,0,1,8,false)
	self:Animate("B3",self:GetPackedBool("B3") and 1 or 0,0,1,8,false)
	self:Animate("BDown",self:GetPackedBool("BDown") and 1 or 0,0,1,8,false)
	self:Animate("B0",self:GetPackedBool("B0") and 1 or 0,0,1,8,false)
	self:Animate("BMinus",self:GetPackedBool("BMinus") and 1 or 0,0,1,8,false)
	self:Animate("BPlus",self:GetPackedBool("BPlus") and 1 or 0,0,1,8,false)
	self:Animate("BEnter",self:GetPackedBool("BEnter") and 1 or 0,0,1,8,false)
	self:Animate("ConverterProtection",self:GetPackedBool("ConverterProtection") and 1 or 0,0,1,8,false)
	self:Animate("ConverterProtection_light",self:GetPackedBool("ConverterProtection") and 1 or 0,0,1,8,false)
	self:Animate("KAHK",				self:GetPackedBool("KAHK") and 1 or 0, 	0.32,0.68, 8, false)
	
	self:HideButton("KAHSet",self:GetPackedBool("KAHK"))
	
 	if self:GetPackedBool(156) and not self.Door1 then self.Door1 = 0.99 end
  	if self:GetPackedBool(158) and not self.Door2 then self.Door2 = 0.99 end
  	if self:GetPackedBool(159) and not self.Door3 then self.Door3 = 0.99 end
 	if self:GetPackedBool(166) and not self.Door4 then self.Door4 = 0.99 end
  	if not self:GetPackedBool(156) and self.Door1 then self.Door1 = false end
  	if not self:GetPackedBool(158) and self.Door2 then self.Door2 = false end
  	if not self:GetPackedBool(159) and self.Door3 then self.Door3 = false end
 	if not self:GetPackedBool(166) and self.Door4 then self.Door4 = 0.99 end
	
	--Sid Body Group check
	self:SetCSBodygroup("door2",1,self:GetPackedBool("InstructorsSeatCheck") and 0 or 1)

	self:ShowHideSmooth("GreenRPLight_light",self:Animate("GreenRPl",self:GetPackedBool(36) and 1 or 0,0,1,10,false))
	self:ShowHideSmooth("AVULight_light",self:Animate("AVUl",self:GetPackedBool(38) and 1 or 0,0,1,10,false))
	self:ShowHideSmooth("KVPLight_light",self:Animate("KVPl",self:GetPackedBool(52) and 1 or 0,0,1,10,false))
	self:ShowHideSmooth("SPLight_light",self:Animate("SPl",self:GetPackedBool("LSP") and 1 or 0,0,1,10,false))
	self:ShowHideSmooth("ConverterProtection_light",self:Animate("ConverterProtectionl",self:GetPackedBool("RZP") and 1 or 0,0,1,10,false))
	
--	self:ShowHideSmooth("CustomD_light",self:Animate("CustomD",self:GetPackedBool("CustomD") and 1 or 0,0,1,10,false))
--	self:ShowHideSmooth("CustomE_light",self:Animate("CustomE",self:GetPackedBool("CustomE") and 1 or 0,0,1,10,false))
--	self:ShowHideSmooth("CustomF_light",self:Animate("CustomF",self:GetPackedBool("CustomF") and 1 or 0,0,1,10,false))
--	self:ShowHideSmooth("CustomG_light",self:Animate("CustomG",self:GetPackedBool("CustomG") and 1 or 0,0,1,10,false))

	if self:GetNWInt("ARSType",1) == 4 then
		self:ShowHideSmooth("LRP_light",self:Animate("light_rRP",self:GetPackedBool(35) and 1 or 0,0,1,12,false) + self:Animate("light_rLSN",self:GetPackedBool(131) and 1 or 0,0,0.3,12,false))
		self:ShowHideSmooth("LKT_light",self:Animate("light_KT",self:GetPackedBool(47) and 1 or 0,0,1,8,false))
		self:ShowHideSmooth("LKVD_light",self:Animate("light_KVD",self:GetPackedBool(48) and 1 or 0,0,1,8,false))
		self:ShowHideSmooth("LST_light",self:Animate("light_LST",self:GetPackedBool(49) and 1 or 0,0,1,8,false))
		self:ShowHideSmooth("LVD_light",self:Animate("light_LVD",self:GetPackedBool(50) and 1 or 0,0,1,8,false))
		self:ShowHideSmooth("LKVC_light",1-self:Animate("light_LKVC",self:GetPackedBool(34) and 1 or 0,0,1,8,false))
		self:ShowHideSmooth("LEKK_light",0)
		self:ShowHideSmooth("LPU_light",0)
		self:ShowHideSmooth("LSD",self:Animate("light_SD",self:GetPackedBool(40)and 1 or 0,0,1,8,false))
		self:ShowHideSmooth("LOCh",self:Animate("light_OCh",self:GetPackedBool(41) and 1 or 0,0,1,8,false))
		self:ShowHideSmooth("L0",self:Animate("light_0",self:GetPackedBool(42) and 1 or 0,0,1,8,false))
		self:ShowHideSmooth("LRS",self:Animate("light_LRS",self:GetPackedBool(54) and 1 or 0,0,1,8,false))
		self:ShowHideSmooth("L40",self:Animate("light_40",self:GetPackedBool(43) and 1 or 0,0,1,8,false))
		self:ShowHideSmooth("L60",self:Animate("light_60",self:GetPackedBool(44) and 1 or 0,0,1,8,false))
		self:ShowHideSmooth("L80",self:Animate("light_80",self:GetPackedBool(46) and 1 or 0,0,1,8,false))
		self:ShowHideSmooth("L70",self:Animate("light_70",self:GetPackedBool(45) and 1 or 0,0,1,8,false))
		self:ShowHideSmooth("LRK",self:Animate("light_LhRK",self:GetPackedBool(33) and 1 or 0,0,12,1,false))
	end
	local accel = self:GetNWFloat("Accel")
	
	if math.abs(accel) > 0.1 then
		--if self.Door1 then self.Door1 = math.min(0.99,math.max(0,self.Door1+accel*self.DeltaTime)) end
		--if self.Door2 then self.Door2 = math.min(0.99,math.max(0,self.Door2+accel*self.DeltaTime)) end
		--if self.Door3 then self.Door3 = math.min(0.99,math.max(0,self.Door3+accel*self.DeltaTime)) end
	end
	if self.Door1 == 0.99 then
		--sendButtonMessage({ID = "BackDoor",state = true})
		--sendButtonMessage({ID = "BackDoor",state = false})
	end
	if self.Door2 == 0.99 then
		--sendButtonMessage({ID = "PassDoor",state = true})
		--sendButtonMessage({ID = "PassDoor",state = false})
	end
	if self.Door3 == 0.99 then
		--sendButtonMessage({ID = "CabinDoor",state = true})
		--sendButtonMessage({ID = "CabinDoor",state = false})
	end
	if self.Door4 == 0.99 then
		--sendButtonMessage({ID = "door4",state = true})
		--sendButtonMessage({ID = "door4",state = false})
    end	
	self:Animate("door1",	self:GetPackedBool(156) and (self.Door1 or 0.99) or 0,0,0.54, 1024, 1)
	self:Animate("door2",	self:GetPackedBool(158) and (self.Door2 or 0.99) or 0,1,0, 1024, 1)
	self:Animate("door3",	self:GetPackedBool(159) and (self.Door3 or 0.99) or 0,0,1, 1024, 1)
	self:Animate("door4",	self:GetPackedBool(166) and (self.Door4 or 0.99) or 0,0,1, 512, 1)
	self:Animate("FrontBrake", self:GetNW2Bool("FbI") and 0 or 1,0,0.35, 3, false)
	self:Animate("FrontTrain",	self:GetNW2Bool("FtI") and 0 or 1,0,0.35, 3, false)
	self:Animate("RearBrake",	self:GetNW2Bool("RbI") and 1 or 0,0,0.35, 3, false)
	self:Animate("RearTrain",	self:GetNW2Bool("RtI") and 1 or 0,0,0.35, 3, false)

	self:Animate("PB",	self:GetPackedBool(165) and 1 or 0,0,0.2,  8,false)
	-- Animate AV switches
	for i,v in ipairs(self.Panel.AVMap) do
		local value = self:GetPackedBool(64+(i-1)) and 1 or 0
		self:Animate("a"..(i-1),value,0,1,8,false)
		self:Animate("1_a"..(i-1),value,0,1,8,false)
	end	
	--print(self.ClientProps["a0"])
	-- Main switch
	if self.LastValue ~= self:GetPackedBool(5) then
		self.ResetTime = CurTime()+1.5
		self.LastValue = self:GetPackedBool(5)
	end
	self:Animate("gv_wrench",	(self:GetPackedBool(5) and 1 or 0), 	0,0.51, 128,  1,false)
	self:ShowHide("gv_wrench",	CurTime() < self.ResetTime)
	self.TextureTime = self.TextureTime or CurTime()
	if (CurTime() - self.TextureTime) > 5.0 and self:GetNWString("texture",nil) then
		self.TextureTime = CurTime()
		for tex,ent in pairs(self.ClientEnts) do
			if tex:find("door") then
				for k,v in pairs(ent:GetMaterials()) do
						--print(v)
					if v == "models/metrostroi_train/81/b01a" then
						ent:SetSubMaterial(k-1,self:GetNWString("texture"))
					elseif v == "models/metrostroi_train/81/int01" then
						ent:SetSubMaterial(k-1,self:GetNWString("passtexture"))
					else
						ent:SetSubMaterial(k-1,"")
					end
				end
			end
		end
	end
	-- Animate doors
	for i=0,3 do
		for k=0,1 do
			local n_l = "door"..i.."x"..k.."a"
			local n_r = "door"..i.."x"..k.."b"
			self:Animate(n_l,self:GetPackedBool(21+(1-k)*4) and 1 or 0,0,1, 0.8 + (-0.2+0.4*math.random()),0)
			self:Animate(n_r,self:GetPackedBool(21+(1-k)*4) and 1 or 0,0,1, 0.8 + (-0.2+0.4*math.random()),0)
		end
	end
	--if self.ClientEnts["door1"] then self.ClientEnts["door1"]:SetSkin(self:GetSkin()) end
	--if self.ClientEnts["door2"] then self.ClientEnts["door2"]:SetSkin(self:GetSkin()) end
	--if self.ClientEnts["door3"] then self.ClientEnts["door3"]:SetSkin(self:GetSkin()) end
	
	-- Door transient
	local door_state1 = self:GetPackedBool(21)
	local door_state2 = self:GetPackedBool(25)
	if door_state1 ~= self.PrevDoorState1 then
		self.PrevDoorState1 = door_state1
		self.Transient = 1.00
	end
	if door_state2 ~= self.PrevDoorState2 then
		self.PrevDoorState2 = door_state2
		self.Transient = 1.00
	end

	-- Brake-related sounds
	local brakeLinedPdT = self:GetPackedRatio(9)
	local dT = self.DeltaTime
	self.BrakeLineRamp1 = self.BrakeLineRamp1 or 0

	if (brakeLinedPdT > -0.001)
	then self.BrakeLineRamp1 = self.BrakeLineRamp1 + 4.0*(0-self.BrakeLineRamp1)*dT
	else self.BrakeLineRamp1 = self.BrakeLineRamp1 + 4.0*((-0.6*brakeLinedPdT)-self.BrakeLineRamp1)*dT
	end
	self.BrakeLineRamp1 = math.Clamp(self.BrakeLineRamp1,0,1)
	self:SetSoundState("release2",self.BrakeLineRamp1^1.65,1.0)

	self.BrakeLineRamp2 = self.BrakeLineRamp2 or 0
	if (brakeLinedPdT < 0.001)
	then self.BrakeLineRamp2 = self.BrakeLineRamp2 + 4.0*(0-self.BrakeLineRamp2)*dT
	else self.BrakeLineRamp2 = self.BrakeLineRamp2 + 8.0*(0.1*brakeLinedPdT-self.BrakeLineRamp2)*dT
	end
	self.BrakeLineRamp2 = math.Clamp(self.BrakeLineRamp2,0,1)
	self:SetSoundState("release3",self.BrakeLineRamp2 + math.max(0,self.BrakeLineRamp1/2-0.15),1.0)

	self:SetSoundState("cran1",math.min(1,self:GetPackedRatio(4)/50*(self:GetPackedBool(6) and 1 or 0)),1.0)

	-- Compressor
	local state = self:GetPackedBool(20)
	self.PreviousCompressorState = self.PreviousCompressorState or false
	if self.PreviousCompressorState ~= state then
		self.PreviousCompressorState = state
		if 	state then
			self:SetSoundState("compressor_717",1,1)
		else
			self:SetSoundState("compressor_717",0,1)
			self:SetSoundState("compressor_717_end",0,1)
			self:SetSoundState("compressor_717_end",1,1)
			--self:PlayOnce("compressor_e_end",nil,1,nil,true)
		end
	end	
	-- ARS/ringer alert
	local state = self:GetPackedBool(39)
	self.PreviousAlertState = self.PreviousAlertState or false
	if self.PreviousAlertState ~= state then
		self.PreviousAlertState = state
		if state then
			self:SetSoundState("ring2",0.20,1)
		else
			self:SetSoundState("ring2",0,0)
			self:PlayOnce("ring2_end","cabin",0.45)
		end
	end
	
	-- RK rotation
	if self:GetPackedBool(112) then self.RKTimer = CurTime() end
	local state = (CurTime() - (self.RKTimer or 0)) < 0.2
	self.PreviousRKState = self.PreviousRKState or false
	if self.PreviousRKState ~= state then
		self.PreviousRKState = state
		if state then
			self:SetSoundState("rk_spin",0.67,1)
		else
			self:SetSoundState("rk_spin",0,0)
			self:PlayOnce("rk_stop",nil,0.67)
		end
	end
	
	-- IGLA alert
	--local state = true --self:GetPackedBool(39)
	--self:SetSoundState("ring2",0.20,1)
	
	-- DIP sound
	self.BPSNType = self:GetNWInt("BPSNType",6)
	if not self.OldBPSNType then self.OldBPSNType = self.BPSNType end
	if self.BPSNType ~= self.OldBPSNType then
		self:SetSoundState("bpsn"..self.BPSNType,0,1.0)
	end
	self:SetSoundState("bpsn"..self.BPSNType,self:GetPackedBool(52) and 2 or 0,1.0,nil,0.9)
	self.OldBPSNType = self.BPSNType
end

function ENT:Draw()
	self.BaseClass.Draw(self)
end
--ENT.ParkingBrakeMaterial = Material( "models/metrostroi_train/parking_brake.png", "vertexlitgeneric unlitgeneric mips" )
function ENT:DrawPost(special)
	--local dc = render.GetLightColor(self:LocalToWorld(Vector(460.0,0.0,5.0)))
	self:DrawOnPanel("InfoTable",function()
		surface.SetDrawColor(0,0,0) --255*dc.x,250*dc.y,220*dc.z)
		surface.DrawRect(50,0,54,00)
		draw.Text({
			text = self:GetNW2String("FrontText",""),
			font = "MetrostroiSubway_InfoRoute",--..self:GetNW2Int("Style",1),
			pos = { 260		, -100 },
			xalign = TEXT_ALIGN_CENTER,
			yalign = TEXT_ALIGN_CENTER,
			color = Color(0,255,0,255)})
			
	end)
	if self.InfoTableTimeout and (CurTime() < self.InfoTableTimeout) then
		self:DrawOnPanel("InfoTableSelect",function()
			local text = self:GetNWString("FrontText","")
			local col = text:find("ЗЕЛ") and Color(100,200,0) or text:find("СИН") and Color(0,100,200) or text:find("МАЛ") and Color(200,100,200) or text:find("ОРА") and Color(200,200,0) or Color(255,0,0)
			draw.DrawText(self:GetNWString("RouteNumber","") .. " " .. text,"MetrostroiSubway_InfoPanel",260, -100,col,TEXT_ALIGN_CENTER)
			
			draw.Text({
				text = self:GetNWString("RouteNumber","") .. " " .. self:GetNWString("FrontText",""),
				font = "MetrostroiSubway_InfoPanel",--..self:GetNWInt("Style",1),
				pos = { 260, -100 },
				xalign = TEXT_ALIGN_CENTER,
				yalign = TEXT_ALIGN_CENTER,
				color = Color(255,0,0,255)})

		end)
	end
	if self.InfoTableTimeout and (CurTime() < self.InfoTableTimeout) then
		self:DrawOnPanel("InfoTableSelect",function()
			draw.Text({
				text = self:GetNW2String("RouteNumber",""),
				font = "MetrostroiSubway_InfoPanel",--..self:GetNW2Int("Style",1),
				pos = { 140, -50 },
				xalign = TEXT_ALIGN_CENTER,
				yalign = TEXT_ALIGN_CENTER,
				color = Color(255,0,0,255)})
			draw.Text({
				text = self:GetNW2String("FrontText",""),
				font = "MetrostroiSubway_InfoPanel",--..self:GetNW2Int("Style",1),
				pos = { 140, -100 },
				xalign = TEXT_ALIGN_CENTER,
				yalign = TEXT_ALIGN_CENTER,
				color = Color(255,0,0,255)})
		end)
	end

	self:DrawOnPanel("InfoRoute",function()
		surface.SetDrawColor(0,0,0) --255*dc.x,250*dc.y,220*dc.z)
		surface.DrawRect(0,100,88,70)
		draw.Text({
			text = self:GetNWString("RouteNumber",""),
			font = "MetrostroiSubway_InfoRoute",--..self:GetNWInt("Style",1),
			pos = { 44, 135 },
			xalign = TEXT_ALIGN_CENTER,
			yalign = TEXT_ALIGN_CENTER,
			color = Color(0,255,0,255)})
	end)

	local distance = self:GetPos():Distance(LocalPlayer():GetPos())
	if distance > 1024 or special then return end
	if self:GetNWInt("ARSType",1) ~= 4 then
		self:DrawOnPanel("ARS",function()
			if self:GetNWInt("ARSType",1) ~= 2 then return end
			surface.SetAlphaMultiplier(0.7)
			surface.SetDrawColor(0,0,0)
			surface.DrawRect(48*10,20*10,24*10,24*10)
			surface.SetAlphaMultiplier(1.0)
			if not self:GetPackedBool(32) then return end
			
			local speed = self:GetPackedRatio(3)*100.0
			local d1 = math.floor(speed) % 10
			local d2 = math.floor(speed / 10) % 10
			self:DrawDigit((51+0) *10,	29*10, d2, 0.75, 0.60)
			self:DrawDigit((51+11)*10,	29*10, d1, 0.75, 0.60)
			surface.SetAlphaMultiplier(1)
		end)

		self:DrawOnPanel("ARS",function()
			if self:GetNWInt("ARSType",1) ~= 1 then return end
			
			--[[surface.SetAlphaMultiplier(0.7)
			surface.SetDrawColor(0,0,0)
			surface.DrawRect(83*10,54*10,24*10,24*10)
			surface.SetAlphaMultiplier(1.0)
			if not self:GetPackedBool(32) then return end
		]]
			local speed = self:GetPackedRatio(3)*100.0
			local d1 = math.floor(speed) % 10
			local d2 = math.floor(speed / 10) % 10
			self:DrawDigit((85.6+0) *10,	60.7*10, d2, 0.85, 0.70)
			self:DrawDigit((85.6+11)*10,	60.7*10, d1, 0.85, 0.70)


			local b = self:Animate("light_rRP",self:GetPackedBool(35) and 1 or 0,0,1,15,false)
			if b > 0.0 then
				surface.SetAlphaMultiplier(b)
				--surface.SetDrawColor(255,120,50)
				surface.SetDrawColor(255,60,60)
				surface.DrawRect(148*10,88*10,17*10,9*10)
				surface.SetAlphaMultiplier(1)
				draw.DrawText("РП","MetrostroiSubway_LargeText2",148*10+30,88*10-5,Color(0,0,0,245))
			end
			
			local b = self:Animate("light_rLSN",self:GetPackedBool(131) and 1 or 0,0,1,15,false)
			if b > 0.0 then
				surface.SetAlphaMultiplier(b)
				--surface.SetDrawColor(255,120,50)
				surface.SetDrawColor(255,60,60)
				surface.DrawRect(172.5*10,88*10,17*10,9*10)
				draw.DrawText("ЛСН","MetrostroiSubway_LargeText2",172.5*10+5,88*10-5,Color(0,0,0,245))
			end
			
			b = self:Animate("light_KT",self:GetPackedBool(47) and 1 or 0,0,1,15,false)
			if b > 0.0 then
				surface.SetAlphaMultiplier(b)
				surface.SetDrawColor(150,255,50)
				surface.DrawRect(205.8*10,88*10,17*10,9*10)
				draw.DrawText("ЛКТ","MetrostroiSubway_LargeText2",205.8*10+5,88*10-5,Color(0,0,0,245))
			end			
			
			b = self:Animate("light_KVD",self:GetPackedBool(48) and 1 or 0,0,1,15,false)
			if b > 0.0 then
				surface.SetAlphaMultiplier(b)
				--surface.SetDrawColor(255,120,50)
				surface.SetDrawColor(255,60,60)
				surface.DrawRect(205.8*10,71.5*10,17*10,9*10)
				draw.DrawText("ЛКВД","MetrostroiSubway_LargeText3",205.8*10+5,71.5*10+5,Color(0,0,0,245))
			end
			
			b = self:Animate("light_LhRK",self:GetPackedBool(33) and 1 or 0,0,1,15,false)
			if b > 0.0 then
				surface.SetAlphaMultiplier(b)
				surface.SetDrawColor(255,160,20)
				surface.DrawRect(111*10,88*10,17*10,9*10)
				--draw.DrawText("ЛхРК","MetrostroiSubway_LargeText3",111*10+5,78*10+5,Color(0,0,0,245))
				draw.DrawText("РК","MetrostroiSubway_LargeText2",111*10+30,88*10-5,Color(0,0,0,245))
			end
			
			b = self:Animate("light_LRS",self:GetPackedBool(54) and 1 or 0,0,1,15,false)
			if b > 0.0 then
				surface.SetAlphaMultiplier(b)
				surface.SetDrawColor(150,255,50)
				surface.DrawRect(242.5*10,54.5*10,17*10,9*10)
				draw.DrawText("РС","MetrostroiSubway_LargeText2",242.5*10+35,54.5*10-5,Color(0,0,0,245))
			end
			
			b = self:Animate("light_LST",self:GetPackedBool(49) and 1 or 0,0,1,15,false)
			if b > 0.0 then
				surface.SetAlphaMultiplier(b)
				surface.SetDrawColor(150,255,50)
				surface.DrawRect(242.5*10,88*10,17*10,9*10)
				draw.DrawText("ЛСТ","MetrostroiSubway_LargeText2",242.5*10+5,88*10-5,Color(0,0,0,245))
			end
			
			b = self:Animate("light_LVD",self:GetPackedBool(50) and 1 or 0,0,1,15,false)
			if b > 0.0 then
				surface.SetAlphaMultiplier(b)
				surface.SetDrawColor(150,255,50)
				surface.DrawRect(242.5*10,71.5*10,17*10,9*10)
				draw.DrawText("ЛВД","MetrostroiSubway_LargeText2",242.5*10+5,71.5*10-5,Color(0,0,0,245))
			end
			
			b = self:Animate("light_LKVC",1-(self:GetPackedBool(34) and 1 or 0),0,1,5,false)
			if b > 0.0 then
				surface.SetAlphaMultiplier(b)
				--surface.SetDrawColor(255,120,50)
				surface.SetDrawColor(255,60,60)
				surface.DrawRect(242.5*10,37.5*10,17*10,9*10)
				draw.DrawText("ЛКВЦ","MetrostroiSubway_LargeText3",242.5*10+5,37.5*10+5,Color(0,0,0,245))
			end
			
			b = self:Animate("light_SD",(self:GetPackedBool(40) and 1 or 0),0,1,5,false)
			if b > 0.0 then
				surface.SetAlphaMultiplier(b)
				surface.SetDrawColor(150,255,50)
				surface.DrawRect(50*10,88*10,17*10,9*10)
				surface.DrawRect(74*10,88*10,17*10,9*10)
				draw.DrawText("ЛСД","MetrostroiSubway_LargeText2",50*10+5,88*10-5,Color(0,0,0,245))
				draw.DrawText("ЛСД","MetrostroiSubway_LargeText2",74*10+5,88*10-5,Color(0,0,0,245))
			end
		
			------------------------------------------------------------------------
			b = self:Animate("light_OCh",self:GetPackedBool(41) and 1 or 0,0,1,15,false)
			if b > 0.0 then
				surface.SetAlphaMultiplier(b)
				--surface.SetDrawColor(255,120,50)
				surface.SetDrawColor(255,60,60)
				surface.DrawRect((50+29.5*0)*10,38*10,17*10,9*10)
				draw.DrawText("ОЧ","MetrostroiSubway_LargeText2",(50+29.5*0)*10+30,38*10-5,Color(0,0,0,245))
			end
			
			b = self:Animate("light_0",self:GetPackedBool(42) and 1 or 0,0,1,15,false)
			if b > 0.0 then
				surface.SetAlphaMultiplier(b)
				--surface.SetDrawColor(255,120,50)
				surface.SetDrawColor(255,60,60)
				surface.DrawRect((45+29.5*1)*10,38*10,17*10,9*10)
				draw.DrawText("0","MetrostroiSubway_LargeText",(45+29.5*1)*10+60,38*10-5,Color(0,0,0,245))
			end
			
			b = self:Animate("light_40",self:GetPackedBool(43) and 1 or 0,0,1,15,false)
			if b > 0.0 then
				surface.SetAlphaMultiplier(b)
				surface.SetDrawColor(255,160,20)
				surface.DrawRect((45+27.2*2)*10,38*10,17*10,9*10)
				draw.DrawText("40","MetrostroiSubway_LargeText",(45+27.2*2)*10+35,38*10-5,Color(0,0,0,245))
			end
				
			b = self:Animate("light_60",self:GetPackedBool(44) and 1 or 0,0,1,15,false)
			if b > 0.0 then
				surface.SetAlphaMultiplier(b)
				surface.SetDrawColor(150,255,50)
				surface.DrawRect((41+27.5*3)*10,38*10,17*10,9*10)
				draw.DrawText("60","MetrostroiSubway_LargeText",(41+27.5*3)*10+35,38*10-5,Color(0,0,0,245))
			end
				
			b = self:Animate("light_70",self:GetPackedBool(45) and 1 or 0,0,1,15,false)
			if b > 0.0 then
				surface.SetAlphaMultiplier(b)
				surface.SetDrawColor(150,255,50)
				surface.DrawRect((40+27*4)*10,38*10,17*10,9*10)
				draw.DrawText("70","MetrostroiSubway_LargeText",(40+27*4)*10+35,38*10-5,Color(0,0,0,245))
			end
				
			b = self:Animate("light_80",self:GetPackedBool(46) and 1 or 0,0,1,15,false)
			if b > 0.0 then
				surface.SetAlphaMultiplier(b)
				surface.SetDrawColor(150,255,50)
				surface.DrawRect((40+26.6*5)*10,38*10,17*10,9*10)
				draw.DrawText("80","MetrostroiSubway_LargeText",(40+26.6*5)*10+35,38*10-5,Color(0,0,0,245))
			end
			
			surface.SetAlphaMultiplier(1.0)
		end)
	end
	self:DrawOnPanel("IGLA",function()
		if not self:GetPackedBool(32) or not self:GetPackedBool(78) then return end
		local text1 = ""
		local text2 = ""
		local C1 = Color(0,200,255,255)
		local C2 = Color(0,0,100,155)
		local flash = false
		local T = self:GetPackedRatio(11)
		local Ptrain = self:GetPackedRatio(5)*16.0
		local Pcyl = self:GetPackedRatio(6)*6.0
		local date = os.date("!*t",os_time)
		
		-- Default IGLA text
		text1 = "IGLA-01K     RK TEMP"
		text2 = Format("%02d:%02d:%02d       %3d C",date.hour,date.min,date.sec,T)
		
		-- Modifiers and conditions
		if self:GetPackedBool(25) then text1 = " !!  Right Doors !!" end
		if self:GetPackedBool(21) then text1 = " !!  Left Doors  !!" end

		-- Modifiers and conditions
		if T > 300 then text1 = "Temperature warning!" end

		if self:GetPackedBool(50) and (Pcyl > 1.1) then
			text1 = "FAIL PNEUMATIC BRAKE"
			flash = true
		end
		if self:GetPackedBool(35) and
		   self:GetPackedBool(28) then
			text1 = "FAIL AVU/BRAKE PRESS"
			flash = true
		end
		if self:GetPackedBool(35) and
		   (not self:GetPackedBool(40)) then
			text1 = "FAIL SD/DOORS OPEN  "
			flash = true
		end
		if self:GetPackedBool(36) then
			text1 = "FAIL OVERLOAD RELAY "
			flash = true
		end
		if Ptrain < 5.5 then
			text1 = "FAIL TRAIN LINE LEAK"
			flash = true
		end
		
		if T > 400 then flash = true end
		if T > 500 then text1 = "!Disengage circuits!" end
		if T > 750 then text1 = " !! PIZDA POEZDU !! " end
		
		-- Draw text
		if flash and ((RealTime() % 1.0) > 0.5) then
			C2,C1 = C1,C2
		end
		for i=1,20 do
			surface.SetDrawColor(C2)
			surface.DrawRect(42+(i-1)*17.7+1,42+4,16,22)			
			draw.DrawText(string.upper(text1[i] or ""),"MetrostroiSubway_IGLA",42+(i-1)*17.7,42+0,C1)
		end
		for i=1,20 do
			surface.SetDrawColor(C2)
			surface.DrawRect(42+(i-1)*17.7+1,42+24+4,16,22)
			draw.DrawText(string.upper(text2[i] or ""),"MetrostroiSubway_IGLA",42+(i-1)*17.7,42+24,C1)
		end
		surface.SetAlphaMultiplier(1)
	end)
	
		
	self:DrawOnPanel("AnnouncerDisplay",function(...)
		local plus = (not self:GetPackedBool(32) and 1 or 0)
		surface.SetDrawColor(83,140,82)
		surface.DrawRect(231.6,86,450,150)
		if not self:GetPackedBool(32) then return end
		self.ASNP:AnnDisplay(self,true)
	end)	
	
		draw.Text({
			text = string.Trim(self:GetNWString("CustomStr10")),
			font = "MetrostroiSubway_VerySmallText3",
			pos = { 145,385+0*120},
			xalign = TEXT_ALIGN_CENTER,yalign = TEXT_ALIGN_CENTER,color = Color(0,0,0,255)})
		draw.Text({
			text = string.Trim(self:GetNWString("CustomStr11")),
			font = "MetrostroiSubway_VerySmallText3",
			pos = { 145,385+1*120},
			xalign = TEXT_ALIGN_CENTER,yalign = TEXT_ALIGN_CENTER,color = Color(0,0,0,255)})
		draw.Text({
			text = string.Trim(self:GetNWString("CustomStr12")),
			font = "MetrostroiSubway_VerySmallText3",
			pos = { 735,200},
			xalign = TEXT_ALIGN_CENTER,yalign = TEXT_ALIGN_CENTER,color = Color(0,0,0,255)})
		draw.Text({
			text = string.Trim(self:GetNWString("CustomStr13")),
			font = "MetrostroiSubway_VerySmallText3",
			pos = { 735,100},
			xalign = TEXT_ALIGN_CENTER,yalign = TEXT_ALIGN_CENTER,color = Color(0,0,0,255)})
			
		--draw.DrawText("SELFDESTRUCT","MetrostroiSubway_VerySmallText3",300,480,Color(0,0,0,255))		
		
		if not self:GetPackedBool(32) then return end
		if self:GetPackedBool(24) then
			local function GetColor(id, text)
				if text then
					return self:GetPackedBool(id) and Color(255,0,0) or Color(0,0,0)
				else
					return not self:GetPackedBool(id) and Color(255,255,255) or Color(0,0,0)
				end
			end

		end

		-- Custom announcer display
		local C1 = Color(0,0,0,210)
		local C2 = Color(0,0,0,90)
		local flash = false
		text1 = self:GetNWString("CustomStr0")
		text2 = self:GetNWString("CustomStr1")
		
		-- Draw text
		if flash and ((RealTime() % 1.0) > 0.5) then
			C2,C1 = C1,C2
		end
		for i=1,20 do
			surface.SetDrawColor(C2)
			surface.DrawRect(287+(i-1)*17.7+1,125+4,16,22)			
			draw.DrawText(string.upper(text1[i] or ""),"MetrostroiSubway_IGLA",287+(i-1)*17.7,125+0,C1)
		end
		for i=1,20 do
			surface.SetDrawColor(C2)
			surface.DrawRect(287+(i-1)*17.7+1,125+31+4,16,22)
			draw.DrawText(string.upper(text2[i] or ""),"MetrostroiSubway_IGLA",287+(i-1)*17.7,125+31,C1)
		end

	

	self:DrawOnPanel("FrontPneumatic",function()
		draw.DrawText(self:GetNW2Bool("FbI") and "Isolated" or "Open","Trebuchet24",150,30,Color(0,0,0,255))
		draw.DrawText(self:GetNW2Bool("FtI") and "Isolated" or "Open","Trebuchet24",650,30,Color(0,0,0,255))
	end)
	self:DrawOnPanel("RearPneumatic",function()
		draw.DrawText(self:GetNW2Bool("RtI") and "Isolated" or "Open","Trebuchet24",150,30,Color(0,0,0,255))
		draw.DrawText(self:GetNW2Bool("RbI") and "Isolated" or "Open","Trebuchet24",650,30,Color(0,0,0,255))
	end)
	self:DrawOnPanel("AirDistributor",function()
		draw.DrawText(self:GetNW2Bool("AD") and "Air Distributor ON" or "Air Distributor OFF","Trebuchet24",0,0,Color(0,0,0,255))
	end)

	
	-- Draw train numbers
	local dc = render.GetLightColor(self:GetPos())
	self:DrawOnPanel("TrainNumber1",function()
		draw.DrawText(Format("%04d",self:EntIndex()),"MetrostroiSubway_LargeText3",0,0,Color(255*dc.x,255*dc.y,255*dc.z,255))
	end)
	self:DrawOnPanel("TrainNumber2",function()
		draw.DrawText(Format("%04d",self:EntIndex()),"MetrostroiSubway_LargeText3",0,0,Color(255*dc.x,255*dc.y,255*dc.z,255))
	end)
	
	--dc = render.GetLightColor(self:LocalToWorld(Vector(453,14.4,1.8)))*render.GetAmbientLightColor()
	self:DrawOnPanel("ParkingBrakeSign",function()
		if not self:GetPackedBool(161) then return end
		surface.SetAlphaMultiplier(1.0)
		surface.SetMaterial(self.ParkingBrakeMaterial)
		--print(255*dc.x,255*dc.y,255*dc.z)
		surface.SetDrawColor(255,255,255)
		surface.DrawTexturedRect( 0, 0, 300, 90 )
	end)
	--self:DrawOnPanel("DURA",function()
		--surface.SetDrawColor(150,255,50)
		--surface.DrawRect(0,0,240,80)
	--end)
end

function ENT:OnButtonPressed(button)
	if button == "ShowHelp" then
		RunConsoleCommand("metrostroi_train_manual")
	end
	if button == "PrevSign" then
		self.InfoTableTimeout = CurTime() + 2.0
	end
	if button == "NextSign" then
		self.InfoTableTimeout = CurTime() + 2.0
	end
	if button and button:sub(1,3) == "Num" then
		self.InfoTableTimeout = CurTime() + 2.0
	end
end
