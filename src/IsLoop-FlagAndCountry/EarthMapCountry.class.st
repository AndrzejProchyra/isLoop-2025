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
