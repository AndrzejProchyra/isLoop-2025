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

	^ self new
		  left: anExp;
		  right: anExp2
]

{ #category : 'accessing' }
EBinaryExpression >> left: anExpression [

	left := anExpression
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
