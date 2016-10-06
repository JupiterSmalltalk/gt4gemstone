callbacks
computeChildrenFor: anOop
	| childObjects childNodes |
	
	childObjects := self childrenBlock value: anOop.
	
	childNodes := OrderedCollection new: (childObjects size).
	childObjects do: [ :anObject |
		childNodes add: (self buildDisplayNodeFor: anObject) ].
	
	^ childNodes