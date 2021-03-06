building
holderViewOn: aBuilder for: aHolderProxy
	
	aBuilder shape rectangle color: Color white.	
	aBuilder
		nodes: aHolderProxy addressBooks gtGsBareElementsAsProxies
		forEach: [ :anAddressBook | 
			aBuilder shape label
				color: Color gray;
				text: [ :aContact | aContact fullName].
			aBuilder nodes: anAddressBook contacts gtGsBareElementsAsProxies.
			aBuilder layout circle radius: 200 ].
	aBuilder flowLayout.
	^ aBuilder build