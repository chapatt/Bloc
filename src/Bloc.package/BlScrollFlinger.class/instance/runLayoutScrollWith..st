private
runLayoutScrollWith: aState

	aState dX isZero
		ifFalse: [ 
			aState hResult: (scrollable scrollHorizontallyBy: aState dX).
			aState overscrollX: aState dX - aState hResult ].
	
	aState dY isZero
		ifFalse: [ 
			aState vResult: (scrollable scrollVerticallyBy: aState dY).
			aState overscrollY: aState dY - aState vResult ]