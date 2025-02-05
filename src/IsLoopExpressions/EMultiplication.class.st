Class {
	#name : 'EMultiplication',
	#superclass : 'EBinaryExpression',
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'as yet unclassified' }
EMultiplication class >> fiveTimesThree [

	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	^ self left: ep1 right: ep2
]

{ #category : 'instance creation' }
EMultiplication class >> left: anExp right: anExp2 [

	^ self new
		  left: anExp;
		  right: anExp2
]

{ #category : 'public access' }
EMultiplication >> evaluate [

	^ left evaluate * right evaluate
]

{ #category : 'printing' }
EMultiplication >> printOn: aStream [

	aStream
		nextPutAll: '( ';
		print: left;
		nextPutAll: ' * ';
		print: right;
		nextPutAll: ' )'
]
