Class {
	#name : 'EarthMap',
	#superclass : 'Object',
	#instVars : [
		'countries'
	],
	#category : 'IsLoop-FlagAndCountry',
	#package : 'IsLoop-FlagAndCountry'
}

{ #category : 'accessing' }
EarthMap >> countries [

	^ countries
]

{ #category : 'as yet unclassified' }
EarthMap >> importCountriesFrom: aFileName [

	| xmlTree countryNodes |
	xmlTree := self xmlTreeFromFile: aFileName.
	countryNodes := xmlTree nodes first nodes.

	countryNodes
		select: [ :node | node isElement ]
		thenDo: [ :node | self importCountryFromXMLNode: node ]
]

{ #category : 'as yet unclassified' }
EarthMap >> importCountryFromXMLNode: anXMLElement [

	countries add: (EarthMapCountry new fromXML: anXMLElement)
]

{ #category : 'initialization' }
EarthMap >> initialize [

	super initialize.
	countries := OrderedCollection new
]

{ #category : 'as yet unclassified' }
EarthMap >> openPopulatedCanvas [

	self populatedCanvas open
]

{ #category : 'as yet unclassified' }
EarthMap >> populatedCanvas [

	^ RSCanvas new
		  addAll: (countries collect: [ :country | country asRSShape ]);
		  @ RSCanvasController;
		  yourself
]

{ #category : 'as yet unclassified' }
EarthMap >> xmlTreeFromFile: aFileName [

	^ aFileName asFileReference readStreamDo: [ :stream |
		  (XMLDOMParser parse: stream) document ]
]
