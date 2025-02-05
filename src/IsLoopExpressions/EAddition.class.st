Class {
	#name : 'EAddition',
	#superclass : 'EExpression',
	#instVars : [
		'right',
		'left'
	],
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'as yet unclassified' }
EAddition class >> fivePlusThree [

	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	^ EMultiplication left: ep1 right: ep2
]

{ #category : 'instance creation' }
EAddition class >> left: anExp right: anExp2 [

	^ self new
		  left: anExp;
		  right: anExp2
]

{ #category : 'public access' }
EAddition >> evaluate [

	^ left evaluate + right evaluate
]

{ #category : 'accessing' }
EAddition >> left: anExpression [

	left := anExpression
]

{ #category : 'printing' }
EAddition >> printOn: aStream [

	aStream
		nextPutAll: '( ';
		print: left;
		nextPutAll: ' + ';
		print: right;
		nextPutAll: ' )'
]

{ #category : 'accessing' }
EAddition >> right: anExpression [

	right := anExpression
]
