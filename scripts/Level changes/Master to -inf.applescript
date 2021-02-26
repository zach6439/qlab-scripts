tell application id "com.figure53.QLab.4" to tell front workspace
	set theSelection to (selected as list)
	repeat with eachCue in theSelection
		if q type of eachCue is in {"Audio", "Mic", "Fade"} then
			eachCue setLevel row 0 column 0 db -120
		end if
	end repeat
end tell