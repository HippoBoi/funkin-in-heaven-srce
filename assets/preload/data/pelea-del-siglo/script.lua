local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('pelea-del-siglo1');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end