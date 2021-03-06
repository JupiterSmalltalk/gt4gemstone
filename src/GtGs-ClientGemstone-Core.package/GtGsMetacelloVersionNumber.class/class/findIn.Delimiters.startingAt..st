adapted
findIn: aString Delimiters: delimiters startingAt: start 
	"Answer the index of the character within the receiver, starting at start, that matches one of the delimiters. If the receiver does not contain any of the delimiters, answer size + 1."

	start to: aString size do: [:i |
		delimiters do: [:delim | 
			delim = (aString at: i) 
				ifTrue: [^ i]]].
	^ aString size + 1