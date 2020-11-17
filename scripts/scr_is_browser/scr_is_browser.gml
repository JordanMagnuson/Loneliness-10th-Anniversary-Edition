// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_is_browser() {
	if (os_browser == browser_not_a_browser) {
		return false;
	}
	return true;
}