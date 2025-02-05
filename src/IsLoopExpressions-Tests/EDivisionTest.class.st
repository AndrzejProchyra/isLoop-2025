Class {
	#name : 'EDivisionTest',
	#superclass : 'TestCase',
	#category : 'IsLoopExpressions-Tests',
	#package : 'IsLoopExpressions-Tests'
}

{ #category : 'tests' }
EDivisionTest >> testEvaluate [

	| ep1 ep2 |
	ep1 := EConstant value: 12.
	ep2 := EConstant value: 4.

	self assert: (EDivision left: ep1 right: ep2) evaluate equals: 3
]

{ #category : 'tests' }
EDivisionTest >> testPrinting [

	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.

	self
		assert: (EDivision left: ep1 right: ep2) printString
		equals: '( 5 / 3 )'
]
