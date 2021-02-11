if (global.game_analytics_enabled) {
	// Need to make sure game analytics is shut down, to prevent background thread from continuing after game end.
	// Only needed for desktop builds. See https://gameanalytics.com/docs/s/article/GameMaker-SDK-Advanced-Features
	ga_endSession();
	ga_onQuit()
}