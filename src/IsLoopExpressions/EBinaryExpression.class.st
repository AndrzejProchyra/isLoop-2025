Class {
	#name : 'EBinaryExpression',
	#superclass : 'EExpression',
	#instVars : [
		'right',
		'left'
	],
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'as yet unclassified' }
EBinaryExpression class >> left: anExp right: anExp2 [ 
	^ self subclassResponsibility
]

{ #category : 'accessing' }
EBinaryExpression >> left: anExpression [

	left := anExpression
]

{ #category : 'accessing' }
EBinaryExpression >> right: anExpression [

	right := anExpression
]
