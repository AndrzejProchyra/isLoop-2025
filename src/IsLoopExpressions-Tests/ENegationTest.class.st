Class {
	#name : 'ENegationTest',
	#superclass : 'TestCase',
	#category : 'IsLoopExpressions-Tests',
	#package : 'IsLoopExpressions-Tests'
}

{ #category : 'tests' }
ENegationTest >> testEvaluate [

	self
		assert:
		(ENegation new expression: (EConstant new value: 5)) evaluate
		equals: -5
]
