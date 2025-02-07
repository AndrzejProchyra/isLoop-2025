Class {
	#name : 'EEvaluaingVisitorTest',
	#superclass : 'TestCase',
	#category : 'IsLoopExpressions-Tests',
	#package : 'IsLoopExpressions-Tests'
}

{ #category : 'tests' }
EEvaluaingVisitorTest >> testDivisionByZeroThrowsException [

	| expression |
	expression := EDivision
		              numerator: EConstant constant5
		              denominator: (EConstant value: 0).
	self
		should: [ expression accept: EEvaluatingVisitor new ]
		raise: EZeroDenominator
]

{ #category : 'tests' }
EEvaluaingVisitorTest >> testVisitAdditionReturnsResult [

	| fivePlusThree result |
	fivePlusThree := EAddition fivePlusThree.

	result := fivePlusThree accept: EEvaluatingVisitor new.

	self assert: result equals: 8
]

{ #category : 'tests' }
EEvaluaingVisitorTest >> testVisitConstantReturnsConstantValue [

	| three result |
	three := EConstant constant3.

	result := three accept: EEvaluatingVisitor new.

	self assert: result equals: 3
]

{ #category : 'tests' }
EEvaluaingVisitorTest >> testVisitDivisionReturnsDivisionResult [

	| expression result |
	expression := EDivision
		              numerator: (EConstant value: 6)
		              denominator: (EConstant value: 3).
	result := expression accept: EEvaluatingVisitor new.
	self assert: result equals: 2
]

{ #category : 'tests' }
EEvaluaingVisitorTest >> testVisitMultiplicationReturnsMultiplicationResult [

	| expression result |
	expression := EMultiplication fiveTimesThree.

	result := expression accept: EEvaluatingVisitor new.

	self assert: result equals: 15
]

{ #category : 'tests' }
EEvaluaingVisitorTest >> testVisitNegationReturnsNegatedConstant [

	| expression result |
	expression := (EConstant value: 7) negated.

	result := expression accept: EEvaluatingVisitor new.

	self assert: result equals: -7
]
