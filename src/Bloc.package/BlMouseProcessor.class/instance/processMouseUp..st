mouse up
processMouseUp: aMouseUpEvent
	
	self fireEvent: aMouseUpEvent.
	
	self updateCursorFrom: aMouseUpEvent target.

	(self canBeClickEvent: aMouseUpEvent) ifTrue: [
		
		(self canBeDblClickEvent: aMouseUpEvent)
			ifTrue: [ 
				lastClickEvent := nil.
				self fireEvent: aMouseUpEvent asDblClickEvent ]
			ifFalse:[
				lastClickEvent := aMouseUpEvent.
				self fireEvent: aMouseUpEvent asClickEvent.
			] ]