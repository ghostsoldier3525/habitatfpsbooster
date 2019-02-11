hook.Add( "OnPlayerChat", "fps", function( ply, strText, bTeam, bDead )
	if ( ply != LocalPlayer() ) then return end

	strText = string.lower( strText ) -- 
        
	if ( strText == "!fps" ) then -- 
		ply:ChatPrint( "[HabitatFPSBooster] FPS Basari ile yukseltildi" )
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
		return true -- 
	end

if ( ply != LocalPlayer() ) then return end

	strText = string.lower( strText ) -- 

	if ( strText == "!fpsgerial" ) then -- 
		ply:ChatPrint( "[HabitatFPSBooster] FPS Geri alindi." )
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
		return true -- 
	end

if ( ply != LocalPlayer() ) then return end

	strText = string.lower( strText ) -- 

	if ( strText == "!internet" ) then -- 
		ply:ChatPrint( "[HabitatFPSBooster] Internet ayarlari optimize edildi" )
		RunConsoleCommand( "cl_interp", "0" )
		RunConsoleCommand( "cl_interp_ratio", "2" )
		RunConsoleCommand( "cl_lagcompensation", "1" )
		RunConsoleCommand( "cl_pred_optimize", "2" )
		RunConsoleCommand( "cl_smooth", "0" )
		RunConsoleCommand( "cl_smoothtime", "0.1" )
		return true -- 
	end


end )
