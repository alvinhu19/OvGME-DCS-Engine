dofile(LockOn_Options.common_script_path.."devices_defs.lua")

indicator_type = indicator_types.COMMON
purposes = {render_purpose.GENERAL}--,render_purpose.HUD_ONLY_VIEW}  -- HUD will be rendered on hud only view 

--- EDIT: add viewport ---
dofile(LockOn_Options.common_script_path.."ViewportHandling.lua")
try_find_assigned_viewport("NS430")
--- EDIT: add viewport ---

local my_path = LockOn_Options.script_path

page_subsets = {
[1]			= my_path.."NS430_page.lua",
}
pages = {
[1]			= {1}
}

-- set this page on start 
init_pageID			= 1