-- For help, bug reports, or feature suggestions, please visit https://github.com/samschloegel/qlab-scripts
-- Built for QLab 4. v211121-01

tell application id "com.figure53.QLab.4" to tell front workspace
	set theCue to last item of (selected as list)
	if q type of theCue is "Audio" then
		set fileTarget to file target of theCue
		tell application "Finder"
			reveal fileTarget
			activate
		end tell
	end if
end tell