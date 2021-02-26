tell application id "com.figure53.QLab.4" to tell front workspace
	set theSelection to (selected as list)
	repeat with eachCue in theSelection
		set selected to eachCue
		set theName to q name of eachCue
		set theNum to q number of eachCue
		set theID to uniqueID of eachCue
		set q number of eachCue to ""
		make type "Group"
		set theGroup to last item of (selected as list)
		set q name of theGroup to theName
		set q number of theGroup to theNum
		move cue id theID of parent of eachCue to end of theGroup
	end repeat
end tell