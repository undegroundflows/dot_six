local APP = {}

APP.PrintName = "My Dot Six"
APP.Icon = "vgui/gphone/dot_six.png"
APP.Author = "Cyberdream"
APP.Tags = {"Information", "Useful", "Social"}

function APP.Run( objects, screen )
	gPhone.darkenStatusBar()

	-- Read from file
	local contents = file.Read( "gphone/Metrostroi.txt", "DATA" )
	-- Multiline text entry
	objects.Title = vgui.Create( "DLabel", screen )
	objects.Title:SetText( ("Metrostroi") )
	objects.Title:SetTextColor( Color( 0, 122, 255 ) )
	objects.Title:SetFont("gPhone_18Lite")
	objects.Title:SizeToContents()
	objects.Title:SetPos( screen:GetWide()/2 - objects.Title:GetWide()/2, 25 )


	objects.main = vgui.Create("DPanel",screen)
	objects.main:SetPos( 0, 50)
	objects.main:SetSize(234,325)
	objects.main:SetFGColor( 0, 122, 255  )


	objects.Title_news = vgui.Create("DLabel",screen)
	objects.Title_news:SetText( ("News") )
	objects.Title_news:SetTextColor( Color( 0, 122, 255 ) )
	objects.Title_news:SetFont("gPhone_18Lite")
	objects.Title_news:SizeToContents()
	objects.Title_news:SetPos( objects.main:GetWide()/2 - objects.Title_news:GetWide()/2, 50 )



	objects.Bottom_button_1 = vgui.Create("DButton",screen)
	objects.Bottom_button_1:SetPos(0,376)
	objects.Bottom_button_1:SetSize(40,40)
	objects.Bottom_button_1:SetImage("vgui/gphone/nomer.png")
	objects.Bottom_button_1:SetText("")
	objects.Bottom_button_1.Paint = function( self, w, h )
 	draw.RoundedBox( 0, 0, 0, w, h, Color( 41, 128, 185, 0 ) ) -- Draw a blue button

end
	objects.Bottom_button_2 = vgui.Create("DButton",screen)
	objects.Bottom_button_2:SetPos(screen:GetWide()-objects.Bottom_button_2:GetWide()*1.378,376)
	objects.Bottom_button_2:SetSize(40,40)
	objects.Bottom_button_2:SetImage("vgui/gphone/round.png")
	objects.Bottom_button_2:SetText("")
	objects.Bottom_button_2.Paint = function( self, w, h )
 	draw.RoundedBox( 0, 0, 0, w, h, Color( 41, 128, 185, 0 ) ) -- Draw a blue button
end
	objects.Bottom_button_3 = vgui.Create("DButton",screen)
	objects.Bottom_button_3:SetPos(screen:GetWide()/2-objects.Bottom_button_3:GetWide()/3,376)
	objects.Bottom_button_3:SetSize(40,40)
	objects.Bottom_button_3:SetImage("vgui/gphone/avatar.png")
	objects.Bottom_button_3:SetText("")
	objects.Bottom_button_3.Paint = function( self, w, h )
 	draw.RoundedBox( 0, 0, 0, w, h, Color( 41, 128, 185, 0 ) ) -- Draw a blue button
end
	objects.Bottom_button_4 = vgui.Create("DButton",screen)
	objects.Bottom_button_4:SetPos(screen:GetWide()/2-objects.Bottom_button_4:GetWide()*1.091,376)
	objects.Bottom_button_4:SetSize(40,40)
	objects.Bottom_button_4:SetImage("vgui/gphone/book.png")
	objects.Bottom_button_4:SetText("")
	objects.Bottom_button_4.Paint = function( self, w, h )
 	draw.RoundedBox( 0, 0, 0, w, h, Color( 41, 128, 185, 0 ) ) -- Draw a blue button
end
	objects.Bottom_button_5 = vgui.Create("DButton",screen)
	objects.Bottom_button_5:SetPos(screen:GetWide()-objects.Bottom_button_5:GetWide()/1.6,376)
	objects.Bottom_button_5:SetSize(40,40)
	objects.Bottom_button_5:SetImage("vgui/gphone/info.png")
	objects.Bottom_button_5:SetText("")
	objects.Bottom_button_5.Paint = function( self, w, h )
 	draw.RoundedBox( 0, 0, 0, w, h, Color( 41, 128, 185, 0 ) ) -- Draw a blue button
end
	local button_4 = true
	objects.Bottom_button_4.DoClick = function ()
		if button_4 == true then
			print("f")
			APP.Knowleges(objects,screen)
			button_4 = false
		end
	end

	--objects.Bottom_button_1.DoClick = function ()

--	end

end
function APP.Knowleges( objects, screen )
	objects.Gopa = vgui.Create("DPanel",screen)
	objects.Gopa:SetPos( 0, 50)
	objects.Gopa:SetSize(234,325)
	objects.Gopa:SetFGColor( 0, 122, 255  )

	objects.isi_button = vgui.Create("DButton", screen)
	objects.isi_button:SetPos(2, 75)
	objects.isi_button:SetSize(230,75)
	objects.isi_button:SetText("ISI")
	objects.Bottom_button_3:SetImage("vgui/gphone/avatar.png")
	objects.Title:SetTextColor( Color( 0, 122, 255 ) )
	objects.Title:SetFont("gPhone_18Lite")

	objects.pte_button = vgui.Create("DButton", screen)
	objects.pte_button:SetPos(2, 160)
	objects.pte_button:SetSize(230,75)
	objects.pte_button:SetText("sdasda")

end
function APP.Paint( screen )
	draw.RoundedBox(2, 0, 0, screen:GetWide(), screen:GetTall(), gPhone.colors.whiteBG)
end

gPhone.addApp(APP)