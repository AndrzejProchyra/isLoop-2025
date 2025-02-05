Class {
	#name : 'EConstantTest',
	#superclass : 'TestCase',
	#category : 'IsLoopExpressions-Tests',
	#package : 'IsLoopExpressions-Tests'
}

{ #category : 'tests' }
EConstantTest >> testCreationWithClassCreationMessage [

	self assert: ((EConstant value: 5) evaluateWith: nil) equals: 5
]

{ #category : 'tests' }
EConstantTest >> testEvaluate [

	self assert: ((EConstant new value: 5) evaluateWith: nil) equals: 5
]

{ #category : 'tests' }
EConstantTest >> testNegated [

	self
		assert: ((EConstant new value: 6) negated evaluateWith: nil)
		equals: -6
]

{ #category : 'tests' }
EConstantTest >> testNegationNegated [

	self
		assert: ((EConstant new value: 6) negated negated evaluateWith: nil)
		equals: 6
]

{ #category : 'tests' }
EConstantTest >> testPrinting [

	self assert: EConstant constant5 printString equals: '5'
]
