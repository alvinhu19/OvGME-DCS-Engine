dofile(LockOn_Options.common_script_path.."devices_defs.lua")

indicator_type = indicator_types.COMMON
----------------------
rwr_symbols_bound = 0.027   -- coeff to limit indication on RWR when symbol can't be place on RWR entirely
-------PAGE IDs-------
id_Page =
{
	PAGE_OFF		= 0,
	PAGE_MAIN		= 1,
	PAGE_BIT		= 2,
	PAGE_TEST		= 3
}

id_pagesubset =
{
	COMMON			= 0,
	MAIN			= 1,
	BIT				= 2,
	TEST			= 3
}

page_subsets = {}
page_subsets[id_pagesubset.COMMON]	= LockOn_Options.script_path.."AN_ALR87/indicator/AN_ALR87_COMMON_page.lua"
page_subsets[id_pagesubset.MAIN]	= LockOn_Options.script_path.."AN_ALR87/indicator/AN_ALR87_MAIN_page.lua"
page_subsets[id_pagesubset.BIT]	    = LockOn_Options.script_path.."AN_ALR87/indicator/AN_ALR87_BIT_page.lua"
page_subsets[id_pagesubset.TEST]	= LockOn_Options.script_path.."AN_ALR87/indicator/AN_ALR87_TEST_page.lua"

----------------------
pages = {}

pages[id_Page.PAGE_OFF]		= {}
pages[id_Page.PAGE_MAIN]	= {id_pagesubset.COMMON, id_pagesubset.MAIN}
pages[id_Page.PAGE_BIT]		= {id_pagesubset.COMMON, id_pagesubset.BIT}
pages[id_Page.PAGE_TEST]	= {id_pagesubset.COMMON, id_pagesubset.TEST}

init_pageID		= id_Page.PAGE_OFF
use_parser		= false

--- master modes
F5E_ALR87_OFF		= 0 
F5E_ALR87_MAIN		= 1 
F5E_ALR87_BIT		= 2
F5E_ALR87_TEST		= 3

------------------------------------
pages_by_mode                 = {}
clear_mode_table(pages_by_mode, 3, 0, 0)

function get_page_by_mode(master,L2,L3,L4)
	return get_page_by_mode_global(pages_by_mode,init_pageID,master,L2,L3,L4)
end

pages_by_mode[F5E_ALR87_OFF][0][0][0]		= id_Page.PAGE_OFF
pages_by_mode[F5E_ALR87_MAIN][0][0][0]		= id_Page.PAGE_MAIN
pages_by_mode[F5E_ALR87_BIT][0][0][0]		= id_Page.PAGE_BIT
pages_by_mode[F5E_ALR87_TEST][0][0][0]		= id_Page.PAGE_TEST

opacity_sensitive_materials = 
{
"font_RWR",
"INDICATION_RWR"
}

