Class {
	#name : 'EVariable',
	#superclass : 'EExpression',
	#instVars : [
		'id'
	],
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'accessing' }
EVariable class >> id: aSymbol [

	^ self new
		  id: aSymbol;
		  yourself
]

{ #category : 'visiting' }
EVariable >> accept: aVisitor [

	^ aVisitor visitVariable: self
]

{ #category : 'accessing' }
EVariable >> id [

	^ id
]

{ #category : 'accessing' }
EVariable >> id: aString [

	id := aString
]
