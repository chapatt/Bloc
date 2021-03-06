*Bloc-Sparta
drawBackground: aBackgroundBlock border: aBorderBlock of: anElement onSpartaCanvas: aCanvas

	"If border is transparent there is no need to render it"
	anElement border isTransparent
		ifFalse: [
			"draw order"
			aBorderBlock value.

			"remove parts of the border where we will draw background"	
			aCanvas clip
				by: (anElement geometry pathOnSpartaCanvas: aCanvas)
				during: [
					aCanvas fill
						path: (anElement geometry pathOnSpartaCanvas: aCanvas);
						paint: Color white;
						drawOptions: (aCanvas drawOptions composeDestOut; antialiasGray);
						draw ] ].

	"draw background"
	aBackgroundBlock value