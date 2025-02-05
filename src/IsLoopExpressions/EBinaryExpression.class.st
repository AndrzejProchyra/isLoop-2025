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

{ #category : 'printing' }
EBinaryExpression >> operatorString [

	self subclassResponsibility
]

{ #category : 'printing' }
EBinaryExpression >> printOn: aStream [

	aStream
		nextPutAll: '( ';
		print: left;
		nextPutAll: self operatorString;
		print: right;
		nextPutAll: ' )'
]

{ #category : 'accessing' }
EBinaryExpression >> right: anExpression [

	right := anExpression
]
