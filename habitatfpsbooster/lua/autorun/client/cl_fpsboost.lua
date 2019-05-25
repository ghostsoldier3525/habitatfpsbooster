AddCSLuaFile("baristaner/config.lua")

habitatfpsbooster = {}

include("baristaner/config.lua")

local y = ScrH()/3
local x = 15
local bum = (245-40)

surface.CreateFont( "bum", {
	font = "CloseCaption_BoldItalic",
	extended = false,
	size =  ScreenScale(9),
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
})


hook.Add("OnPlayerChat", "fpsmenu", function(ply, strText)
    if (ply ~= LocalPlayer()) then return end
    strText = string.lower(strText) -- 

    --
    if (strText == "!fps") then
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
            
            icon = vgui.Create("DModelPanel", gunluk)
            icon:SetModel( LocalPlayer():GetModel())
            function icon:LayoutEntity( Entity ) return end
            icon:SetPos(1190, ScrH() * 0.90)
            icon:SetAnimated(false)
            icon:SetSize( 150,150 )
            icon:SetCamPos( Vector(85,-20,65))
            icon:SetLookAt( Vector(0,0,62))

end

end)    






concommand.Add( "habitatfpsboost", function( ply )
		ply:ChatPrint( habitatfpsbooster.fpsboosteractivemsg )
		RunConsoleCommand( "mat_antialias", "0" )
		RunConsoleCommand( "cl_detaildist", "0" )
		RunConsoleCommand( "cl_detailfade", "0" )
		RunConsoleCommand( "cl_drawmonitors", "0" )
		RunConsoleCommand( "cl_ejectbrass", "0" )
		RunConsoleCommand( "mat_envmapsize", "8" )
		RunConsoleCommand( "mat_envmaptgasize", "8" )
		RunConsoleCommand( "mat_hdr_level", "0" )
		RunConsoleCommand( "mat_max_worldmesh_vertices", "512" )
		RunConsoleCommand( "mat_motion_blur_enabled", "0" )
		RunConsoleCommand( "mat_parallaxmap", "0" )
		RunConsoleCommand( "mat_picmip", "2" )
		RunConsoleCommand( "mat_reduceparticles", "1" )
		RunConsoleCommand( "mp_decals", "1" )
		RunConsoleCommand( "r_propsmaxdist", "0" )
		RunConsoleCommand( "r_waterdrawreflection", "0" )
		RunConsoleCommand( "gmod_mcore_test", "1" )
		RunConsoleCommand( "mat_queue_mode", "-1" )
		RunConsoleCommand( "cl_threaded_bone_setup", "1" )
		RunConsoleCommand( "cl_detailfade", "800" )
		RunConsoleCommand( "cl_smooth", "0" )
		RunConsoleCommand( "m9kgaseffect", "0" )
		RunConsoleCommand( "mat_bloom_scalefactor_scalar", "1" )
        RunConsoleCommand( "cl_detaildist", "2" )
        RunConsoleCommand( "cl_detailfade", "1" )	
		RunConsoleCommand( "r_WaterDrawReflection", "0" )
        RunConsoleCommand( "r_waterforceexpensive", "0" )
        RunConsoleCommand( "r_shadows", "0" )
        RunConsoleCommand( "mat_disable_bloom", "1" )
		RunConsoleCommand( "r_threaded_client_shadow_manager", "1" )
        RunConsoleCommand( "r_threaded_particles", "1" )
        RunConsoleCommand( "r_threaded_renderables", "1" )
        RunConsoleCommand( "r_queued_ropes", "1" )
        RunConsoleCommand( "r_drawmodeldecals", "0" )
        RunConsoleCommand( "mat_queue_mode", "-1" )
        RunConsoleCommand( "studio_queue_mode", "1" )	
end)

concommand.Add( "habitatfpsboostgerial", function( ply )
		RunConsoleCommand( "mat_antialias", "1" )
		RunConsoleCommand( "cl_detaildist", "1" )
		RunConsoleCommand( "cl_detailfade", "1" )
		RunConsoleCommand( "cl_drawmonitors", "1" )
		RunConsoleCommand( "cl_ejectbrass", "1" )
		RunConsoleCommand( "mat_envmapsize", "8" )
		RunConsoleCommand( "mat_envmaptgasize", "8" )
		RunConsoleCommand( "mat_hdr_level", "1" )
		RunConsoleCommand( "mat_max_worldmesh_vertices", "512" )
		RunConsoleCommand( "mat_motion_blur_enabled", "1" )
		RunConsoleCommand( "mat_parallaxmap", "1" )
		RunConsoleCommand( "mat_picmip", "2" )
		RunConsoleCommand( "mat_reduceparticles", "1" )
		RunConsoleCommand( "mp_decals", "1" )
		RunConsoleCommand( "r_propsmaxdist", "1" )
		RunConsoleCommand( "r_waterdrawreflection", "1" )
		RunConsoleCommand( "fps_max", "0" )
		RunConsoleCommand( "gmod_mcore_test", "0" )
		RunConsoleCommand( "mat_queue_mode", "-1" )
		RunConsoleCommand( "cl_threaded_bone_setup", "0" )
		RunConsoleCommand( "cl_detailfade", "800" )
		RunConsoleCommand( "cl_smooth", "1" )
		RunConsoleCommand( "m9kgaseffect", "1" )
end)

concommand.Add( "habitatfpsboostinternet", function( ply ) 
		ply:ChatPrint( habitatfpsbooster.fpsboosterinternetmsg )
		RunConsoleCommand( "cl_interp", "0" )
		RunConsoleCommand( "cl_interp_ratio", "2" )
		RunConsoleCommand( "cl_lagcompensation", "1" )
		RunConsoleCommand( "cl_pred_optimize", "2" )
		RunConsoleCommand( "cl_smooth", "0" )
		RunConsoleCommand( "cl_smoothtime", "0.1" )
end)

if habitatfpsbooster.enablefog then
    hook.Add("SetupWorldFog", "habitatfpsbooster", function()
        if globalFogDed then
            render.FogMode(1)
            render.FogStart(globalFogDed - 600)
            render.FogEnd(globalFogDed - 200)
            render.FogMaxDensity(1)
            local col = Vector(0.8, 0.8, 0.8)
            render.FogColor(col.x * 255, col.y * 255, col.z * 255)

            return true
        end
    end)

    if habitatfpsbooster.enablefog then
        hook.Add("SetupSkyboxFog", "habitatfpsboostersis", function()
            if globalFogDed then
                render.FogMode(MATERIAL_FOG_LINEAR)
                render.FogStart((globalFogDed - 600) / 16 - (200 / 16))
                render.FogEnd(globalFogDed / 16 - (200 / 16))
                render.FogMaxDensity(1)
                local col = Vector(0.8, 0.8, 0.8)
                render.FogColor(col.x * 255, col.y * 255, col.z * 255)

                return true
            end
        end)
    else
        return
    end
else
    return
end




