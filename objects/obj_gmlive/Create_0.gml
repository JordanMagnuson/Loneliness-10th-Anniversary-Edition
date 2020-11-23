// Disable for HTML5 builds, since this extension currently breaks HTML5. See https://itch.io/t/1012491/issues-on-html5-23
#macro live_enabled !scr_is_browser()

// change IP/port here if you connect to remote gmlive-server:
live_init(1, "http://localhost:5100", "");