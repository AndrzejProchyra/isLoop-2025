Class {
	#name : 'ERaisingToPowerTest',
	#superclass : 'TestCase',
	#category : 'IsLoopExpressions-Tests',
	#package : 'IsLoopExpressions-Tests'
}

{ #category : 'tests' }
ERaisingToPowerTest >> testEvaluate [

	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.

	self
		assert: (ERaisingToPower left: ep1 right: ep2) evaluate
		equals: 125
]

{ #category : 'tests' }
ERaisingToPowerTest >> testPrinting [

	| five three |
	five := EConstant constant5.
	three := EConstant constant3.

	self
		assert: (ERaisingToPower left: five right: three) printString
		equals: '( 5 ^ 3 )'
]
