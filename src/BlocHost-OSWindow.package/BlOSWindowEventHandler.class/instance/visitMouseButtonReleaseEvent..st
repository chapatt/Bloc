visiting mouse
visitMouseButtonReleaseEvent: anEvent
	^ BlMouseUpEvent new
		position: anEvent position;
		screenPosition: window position + anEvent position;
		delta: anEvent delta;
		button: (self convertButton: anEvent button);
		modifiers: (self convertKeyModifiers: anEvent modifiers);
		timestamp: DateAndTime now