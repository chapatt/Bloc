loading
load: aBaselineName from: aRepository
	"I choose appropriate loading method for a baseline from repository
	depending on requested directive"
	| aDirective |

	"we load code only using metacello, not actions needed"
	self hasDirective
		ifFalse: [ ^ self ].
	
	aDirective := self directive.

	"we load code only without Iceberg"
	aDirective = #file
		ifTrue: [ ^ self ].

	"we load code + iceberg"
	aDirective = #git
		ifTrue: [ ^ self gitLoad: aBaselineName from: aRepository ].

	Error signal: 'Unknown load directive ' , aDirective asString