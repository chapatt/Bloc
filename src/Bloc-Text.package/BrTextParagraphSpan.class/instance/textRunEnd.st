accessing - text run
textRunEnd
	"Return an index of a last measured glyph in a text run that should be rendered"
	<return: #Number>
	self assertTextRun.
	
	^ textRunEnd