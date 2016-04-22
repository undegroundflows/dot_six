local APP = {}

APP.PrintName = "Ple Clicker"
APP.Icon = "vgui/gphone/metrostroi.png"
APP.Author = "Cyberdream"
APP.Tags = {"Information", "Useful", "Social"}

function APP.Run( objects, screen )
	gPhone.darkenStatusBar()

local contents = file.Read( "gphone/Metrostroi.txt", "DATA" )

counter_ple = 0
objects.counter = vgui.Create("DLabel",screen,main)
objects.counter:SetText(counter_ple)
objects.counter:SetTextColor( Color( 0, 122, 255 ) )
objects.counter:SetFont("gPhone_18Lite")
objects.counter:SizeToContents()
objects.counter:SetPos( screen:GetWide()/2 - objects.counter:GetWide()/2, 50 )


objects.kus_1 = vgui.Create( "DButton", screen )
objects.kus_1:SetSize(234,300)
objects.kus_1:SetPos(0,82)
objects.kus_1:SetImage("vgui/gphone/games/ple_clicker/kus_1.png")

objects.kus_1.DoClick = function ()
	counter_ple=counter_ple+1
	objects.counter:SetText(counter_ple)
	objects.counter:SizeToContents()
	objects.counter:SetPos( screen:GetWide()/2 - objects.counter:GetWide()/2, 50 )
	if counter_ple == 10 then
		objects.vau = vgui.Create("DLabel",screen,main)
		objects.vau:SetText("+10 Очков!!")
		objects.vau:SetTextColor( Color( 0, 122, 255 ) )
		objects.vau:SetFont("gPhone_18Lite")
		objects.vau:SizeToContents()
		objects.vau:SetPos( screen:GetWide()/2 - objects.counter:GetWide()/2, 25 )
		objects.kus_1:SetImage("vgui/gphone/games/ple_clicker/kus_3.png")
	end
	if counter_ple == 11 then
		objects.kus_1:SetImage("vgui/gphone/games/ple_clicker/kus_1.png")
		objects.vau:Remove()
	end
	print(counter_ple)
end

end
function APP.Paint( screen )
	draw.RoundedBox(2, 0, 0, screen:GetWide(), screen:GetTall(), gPhone.colors.whiteBG)
end

function APP.Close()
	-- Write to file
	local objects = gApp["_children_"]

end

gPhone.addApp(APP)
