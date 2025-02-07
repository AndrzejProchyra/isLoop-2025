Class {
	#name : 'EAddition',
	#superclass : 'EBinaryExpression',
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'as yet unclassified' }
EAddition class >> fivePlusThree [

	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	^ self left: ep1 right: ep2
]

{ #category : 'visiting' }
EAddition >> accept: aVisitor [

	^ aVisitor visitAddition: self
]

{ #category : 'public access' }
EAddition >> evaluateWith: aBindingDictionary [

	^ (left evaluateWith: aBindingDictionary)
	  + (right evaluateWith: aBindingDictionary)
]

{ #category : 'printing' }
EAddition >> operatorString [

	^ ' + '
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
