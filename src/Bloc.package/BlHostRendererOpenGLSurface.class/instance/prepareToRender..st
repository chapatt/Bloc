rendering
prepareToRender: aSpace
	"Dispatch preparation to render through host space based on surface type"
	
	self hostSpace prepareToRender: aSpace onOpenGLSurface: self