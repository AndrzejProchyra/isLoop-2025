"
I'm a board a kind of 2D space holding tile objects.
A tile object should accept a position and a character based representation.
"
Class {
	#name : 'RbsBoard',
	#superclass : 'Object',
	#instVars : [
		'map'
	],
	#category : 'Robots-Board',
	#package : 'Robots-Board'
}

{ #category : 'instance creation' }
RbsBoard class >> extent: aPoint [

	^ self basicNew extent: aPoint; yourself
]

{ #category : 'instance creation' }
RbsBoard class >> new [

	^ self extent: 30@12
]

{ #category : 'printing' }
RbsBoard >> asciiString [ 

	^ String streamContents: [ :st | self printNicelyOn: st ]	

]

{ #category : 'low level access' }
RbsBoard >> at: anInteger at: anInteger2 put: anElement [
	map at: anInteger at: anInteger2 put: anElement 
]

{ #category : 'accessing' }
RbsBoard >> atPosition: aCpPositionable [ 
	^ (map atX: aCpPositionable x atY: aCpPositionable y)
]

{ #category : 'low level access' }
RbsBoard >> atX: xCoord atY: yCoord [

	^ map atX: xCoord atY: yCoord
]

{ #category : 'low level access' }
RbsBoard >> atX: anInteger atY: anInteger2 put: anElement [
	map atX: anInteger atY: anInteger2 put: anElement 
]

{ #category : 'inspector' }
RbsBoard >> basicPrintOnInspector [
	<inspectorPresentationOrder: 35 title: 'Game'>

	^ SpTextPresenter new 
		text: self asciiString;
		yourself
]

{ #category : 'building' }
RbsBoard >> buildMapWidth: x height: y [

	map := CTArray2D 
				width: x height: y.
	map rowsAndColumnsDo: [ :row :column |
			self initializeElement: self groundClass new atX: column atY: row ]
]

{ #category : 'accessing' }
RbsBoard >> columnNumber [
	^ map numberOfColumns
]

{ #category : 'building' }
RbsBoard >> do: aBlock [
	"Execute the block on each element of the board"
	
	map do: aBlock
]

{ #category : 'accessing' }
RbsBoard >> extent: aPoint [

	self buildMapWidth: aPoint x height: aPoint y 
]

{ #category : 'building' }
RbsBoard >> groundClass [

	^ RbsGround
]

{ #category : 'accessing' }
RbsBoard >> height [
	^ map height
]

{ #category : 'building' }
RbsBoard >> initializeElement: anElement atX: xCoord atY: yCoord [

	anElement setBoard: self.
	anElement basicPosition: xCoord @ yCoord.
	self atX: xCoord atY: yCoord put: anElement.
	anElement postCreationAction.
]

{ #category : 'accessing' }
RbsBoard >> lineNumber [
	^ map numberOfRows
]

{ #category : 'printing' }
RbsBoard >> printNicelyOn: aStream [
	
	(self height to: 1 by: -1) 
		do: [ :yCoord |
			1 to: self width do: [ :xCoord |
				| el |
				el := (self atX: xCoord atY: yCoord).
				aStream nextPut: el class textualMapCharacter]]
		separatedBy: [ aStream cr ]
]

{ #category : 'accessing' }
RbsBoard >> width [
	^ map width
]
