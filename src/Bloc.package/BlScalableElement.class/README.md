I'm a helper element that transforms its #contentElement in order to exactly #scaleTo:  my size.

!! Example:

[[[
	| content scalable |
	
	content := BlElement new 
		size: 20@20;
		background: Color red.
	
	scalable := BlScalableElement new.
	scalable scaleStrategy: (BlScalableFixedStrategy zoom: 2). "set custom zoom level"
	scalable scaleStrategy: (BlScalableFitWidthStrategy new). "Fit horizontally"
	scalable scaleStrategy: (BlScalableFitHeightStrategy new). "Fit vertically"
	scalable scaleStrategy: (BlScalableFitAllStrategy new). "Fit vertically and horizontally at the same time"
	scalable constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].

	scalable contentElement: content.
	scalable
]]]