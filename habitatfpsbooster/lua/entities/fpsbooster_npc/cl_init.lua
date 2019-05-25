include("shared.lua")

surface.CreateFont( "trebuchet50", {
    font = "Trebuchet MS", 
    size = ScreenScale(17),
    weight = 500,
    antialias = true,
})

surface.CreateFont( "trebuchet35", {
    font = "Trebuchet MS", 
    size = ScreenScale(10),
    weight = 500,
    antialias = true,
})

surface.CreateFont( "trebuchet20", {
    font = "Trebuchet MS", 
    size = ScreenScale(7.5),
    weight = 500,
    antialias = true,
})

local function npcMenu3()
	
    LocalPlayer():ConCommand( "play UI/buttonclick.wav")

     local gunluk = vgui.Create("DFrame")
        gunluk:SetPos(ScrW() * 0.33, ScrH() * 0.33)
        gunluk:SetSize(ScrW() * 0.0 + 0, ScrH() * 0.0 + 0)
        gunluk:SetTitle("Habitat FPS BOOSTER")
        gunluk:SetDraggable(true)
        gunluk:MakePopup()
        gunluk:ShowCloseButton(true)
        gunluk:Center(true)
        gunluk:SizeTo( 510, 300, 1, 0, 4)

        gunluk.Paint = function( self, w, h ) 
    draw.RoundedBox( 12, 0, 0, w, h, habitatfpsbooster.fpsboosterarkaplanrengi )
end
        
            local blur = vgui.Create("DFrame")
            blur:SetSize(2,1)
            blur:SetDraggable(false)
            blur:SetBackgroundBlur(true)
            gunluk.OnRemove = function() 
            blur:Close()
        end

        local button = vgui.Create("DButton", gunluk)
        button:SetPos(50, 50, ScrW() / 0.5, ScrH() / 0.1)
        button:SetSize(180, 50)
        button:SetColor( Color( 0,0,0 ) )
        button.Paint = function(s , w , h)
        draw.RoundedBox(6,0,0,w , h,Color(255, 255, 255, 255))
end
        button:SetFont("bum")
        button:SetText("FPS ARTTIR")
        button:SetConsoleCommand("habitatfpsboost")



   local button = vgui.Create("DButton", gunluk)
    button:SetPos(50, 150, ScrW() / 0.5, ScrH() / 0.1)
    button:SetSize(180, 50)
    button:SetColor(Color(0, 0, 0))

    button.Paint = function(s, w, h)
        draw.RoundedBox(6, 0, 0, w, h, Color(255, 255, 255, 255))
    end

    button:SetFont("bum")
    button:SetText("FPS GERI AL")
    button:SetConsoleCommand("habitatfpsboostgerial")


   local button = vgui.Create("DButton", gunluk)
    button:SetPos(50, 250, ScrW() / 0.5, ScrH() / 0.1)
    button:SetSize(180, 50)
    button:SetColor(Color(0, 0, 0))

    button.Paint = function(s, w, h)
        draw.RoundedBox(6, 0, 0, w, h, Color(255, 255, 255, 255))
    end

    button:SetFont("bum")
    button:SetText("INTERNET OPTIMIZE ET")
    button:SetConsoleCommand("habitatfpsboostinternet")
    

   local yazi = vgui.Create( "DLabel", gunluk )
   yazi:SetPos( 235, 20 )
   yazi:SetSize(250, 50)
   yazi:SetFont( "BudgetLabel" )
   yazi:SetText( "FPS BOOSTER FPS'INI YUKSELTIR" )

   local yazi = vgui.Create( "DLabel", gunluk )
   yazi:SetPos( 235, 40 )
   yazi:SetSize(250, 50)
   yazi:SetFont( "BudgetLabel" )
   yazi:SetText( "AKTIVE OLDUGUNDA DONMA OLABILIR" )

   local yazi = vgui.Create( "DLabel", gunluk )
   yazi:SetPos( 235, 60 )
   yazi:SetSize(290, 50)
   yazi:SetFont( "BudgetLabel" )
   yazi:SetText( "AYARLARI BEGENMEDIYSEN GERI ALABILIRSIN" )

    local yazi = vgui.Create( "DLabel", gunluk )
   yazi:SetPos( 235, 80 )
   yazi:SetSize(250, 50)
   yazi:SetFont( "BudgetLabel" )
   yazi:SetText( "KALITE KAYBETMEMEK ICIN AYARLARDAN" )
  
   local yazi = vgui.Create( "DLabel", gunluk )
   yazi:SetPos( 235, 100 )
   yazi:SetSize(250, 50)
   yazi:SetFont( "BudgetLabel" )
   yazi:SetText( "MODELLERI YUKSEGE CEKEBILIRSIN" )

    local yazi = vgui.Create( "DLabel", gunluk )
   yazi:SetPos( 235, 100 )
   yazi:SetSize(250, 50)
   yazi:SetFont( "BudgetLabel" )
   yazi:SetText( "MODELLERI YUKSEGE CEKEBILIRSIN" )
   


   local icon = vgui.Create( "DModelPanel", gunluk )
    function icon:LayoutEntity( Entity ) return end
    icon:SetPos(250, 140 )
    icon:SetSize( 200,200 )
    icon:SetFOV(12)
    icon:SetModel( LocalPlayer():GetModel() )
    icon:SetCamPos( Vector(85,0,65))
    icon:SetLookAt( Vector(0,0,62))
    icon:SetAnimated(true)
            
            icon = vgui.Create("DModelPanel")
            icon:SetModel( LocalPlayer():GetModel())
            function icon:LayoutEntity( Entity ) return end
            icon:SetPos(1190, ScrH() * 0.90)
            icon:SetAnimated(false)
            icon:SetSize( 150,150 )
            icon:SetCamPos( Vector(85,-20,65))
            icon:SetLookAt( Vector(0,0,62))

end


function ENT:Draw()

    self:DrawModel()

    if ( IsValid( self ) && LocalPlayer():GetPos():Distance( self:GetPos() ) < 500 ) then

         local ang = Angle( 0, ( LocalPlayer():GetPos() - self:GetPos() ):Angle()[ "yaw" ], ( LocalPlayer():GetPos() - self:GetPos() ):Angle()[ "pitch" ] ) + Angle( 0, 90, 90 )

        cam.IgnoreZ( false )
        cam.Start3D2D( self:GetPos() + Vector( 2, 0, 78 ), ang, .1 )

            draw.RoundedBox(12,-80,-20,146,40, habitatfpsbooster.fpsboosternpcyaziarkaplanrengi)
            draw.SimpleTextOutlined( self:GetNWString( "HeaderText", habitatfpsbooster.fpsboosternpcismi ), "trebuchet50", -10, 0, Color( 2361, 666, 650, 255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, .5, Color( 0, 0, 0, 255 ) )

        cam.End3D2D()

    end

end

net.Receive("ShopNPCUsed3",function()
	npcMenu3()
end)
