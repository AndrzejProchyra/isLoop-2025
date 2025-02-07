Class {
	#name : 'EarthMapCountry',
	#superclass : 'Object',
	#instVars : [
		'svgPath',
		'name',
		'code'
	],
	#category : 'IsLoop-FlagAndCountry',
	#package : 'IsLoop-FlagAndCountry'
}

{ #category : 'converting' }
EarthMapCountry >> asRSShape [

	^ RSSVGPath new svgPath: svgPath
]

{ #category : 'accessing' }
EarthMapCountry >> code [

	^ code
]

{ #category : 'printing' }
EarthMapCountry >> flagForCountryCode: aString [

	| request pngArray |
	request := ZnClient new.
	request get:
		'https://flagcdn.com/w320/' , aString asLowercase , '.png'.
	request isSuccess ifTrue: [
		pngArray := request response contents.
		^ ImageReadWriter formFromStream: (ReadStream on: pngArray) ].
	^ BorderedMorph new asForm
]

{ #category : 'instance creation' }
EarthMapCountry >> fromXML: anXMLElement [

	svgPath := anXMLElement attributeAt: 'd'.
	name := anXMLElement attributeAt: 'title'.
	code := anXMLElement attributeAt: 'id'
]

{ #category : 'as yet unclassified' }
EarthMapCountry >> inspectorShape [

	<inspectorPresentationOrder: 0 title: 'Shape'>
	| canvas |
	canvas := RSCanvas new.
	canvas add: self asRSShape.
	canvas @ RSCanvasController.
	^ SpRoassalInspectorPresenter new
		  canvas: canvas;
		  yourself
]

{ #category : 'as yet unclassified' }
EarthMapCountry >> inspectorShape2 [

	<inspectorPresentationOrder: 0 title: 'flag'>
	
	^ SpImagePresenter new 
		image: (self flagForCountryCode: code); yourself
]

{ #category : 'accessing' }
EarthMapCountry >> name [

	^ name
]

{ #category : 'printing' }
EarthMapCountry >> printOn: aStream [

	super printOn: aStream.
	aStream
		nextPutAll: ' ';
		nextPutAll: name;
		nextPutAll: ' ';
		nextPutAll: code
]
