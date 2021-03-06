private - notifying
notifyHorizontalEdgeReached: aStartPosition final: aFinalPosition overshot: anOvershotDistance
	"Notify the scroller that we've reached a horizontal boundary.
	Normally the information to handle this will already be known when the animation is started, such as in a call to one of the fling functions.
	However there are cases where this cannot be known in advance. This function will transition the current motion and animate from aStartPosition to aFinalPosition as appropriate.
	
	aStartPosition - Starting/current X position
	aFinalPosition - Desired final X position
	anOvershotDistance - Magnitude of overscroll allowed. This should be the maximum desired distance from aFinalPosition. Absolute value - must be positive."

	self
		assert: [ anOvershotDistance >= 0 ]
		description: [ 'Overshot distance must not be negative' ].

	scrollerX
		notifyEdgeReached: anOvershotDistance
		start: aStartPosition
		end: aFinalPosition