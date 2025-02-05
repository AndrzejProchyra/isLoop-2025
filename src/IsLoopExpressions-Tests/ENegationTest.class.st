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
			((ENegation new expression: (EConstant new value: 5))
				 evaluateWith: nil)
		equals: -5
]

{ #category : 'tests' }
ENegationTest >> testEvaluateWithClassCreationMessage [

	self
		assert:
		((ENegation expression: (EConstant value: 5)) evaluateWith: nil)
		equals: -5
]

{ #category : 'tests' }
ENegationTest >> testNegatedStructureIsCorrect [

	| exp |
	exp := EConstant value: 11.
	self assert: exp negated class equals: ENegation.
	self assert: exp negated negated equals: exp
]

{ #category : 'tests' }
ENegationTest >> testPrinting [

	self assert: EConstant constant3 negated printString equals: '- 3'
]
