testing
isIdentity
	"Return true if I represent an identity transformation, false otherwise"
	<return: #Boolean>
	
	^ self transformations allSatisfy: #isIdentity