dofile(LockOn_Options.common_script_path.."devices_defs.lua")
dofile(LockOn_Options.common_script_path.."ViewportHandling.lua")

indicator_type       = indicator_types.COMMON----------------------
init_pageID     = 1
purposes 	    = {render_purpose.GENERAL,render_purpose.HUD_ONLY_VIEW}
--subset ids
BASE       = 1
RADAR 	   = 2


page_subsets  = {

[BASE]     = LockOn_Options.script_path.."AN_APQ159/indicator/AN_APQ159_page_base.lua",
[RADAR]    = LockOn_Options.script_path.."AN_APQ159/indicator/AN_APQ159_page_radar.lua",
}
pages = 
{
	{ BASE, RADAR },
}

update_screenspace_diplacement(SelfWidth/SelfHeight,false)
try_find_assigned_viewport("RIGHT_MFCD")

