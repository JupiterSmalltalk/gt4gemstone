executing
performStringAndBuildProxyFor: aString inContext: anObject
	| resultObject |
	resultObject := self performString: aString inContext: anObject.
	^ resultObject gtGsSerializedInspectorProxy