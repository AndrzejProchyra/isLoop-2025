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

{ #category : 'visiting' }
EMultiplication >> accept: aVisitor [

	^ aVisitor visitMultiplication: self
]

{ #category : 'printing' }
EMultiplication >> operatorString [

	^ ' * '
]
