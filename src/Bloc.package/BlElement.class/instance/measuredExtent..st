layout
measuredExtent: anExtent
	"Set newly measured extent.
	@see BlElement>>#measuredExtent for more info
	anExtent must not be nil"
	self
		assert: anExtent isNotNil
		description: [ 'Measured extent must not be nil' ].
	
	self measuredBounds extent: anExtent