*test_gsinspector-Pharo-Core
setGlamourPresentationAttributesFor: aPresentation 

	 aPresentation
		shouldValidate: false;
		allowsRecursiveSearch: false;
		title: [
			self cacheAt: #'title' ifAbsentPut: [ self executeRemotely: #computeTitle ] ];
		display: [ 
			self cacheAt: #'displayNodes' ifAbsentPut: [ self executeRemotely: #'computeDisplayNodes' ] ];
		icon: [ :aListNode | 
			Smalltalk ui icons iconNamed: aListNode iconId ];
		format: [ :aListNode | 
			aListNode displayValue ];
		send: [ :aListNode ||serializedProxy|
			serializedProxy := self gemstoneClient session executeString: '
				GtGsInspectorProxy1 
					serializeInstance: (GtGsInspectorProxy1 forOop: ' , aListNode targetObjectOop asString , ' )'.
			self gemstoneClient objectSerializer fromString: serializedProxy ]