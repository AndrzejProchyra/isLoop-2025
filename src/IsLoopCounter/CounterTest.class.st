Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#instVars : [
		'counter'
	],
	#category : 'IsLoopCounter',
	#package : 'IsLoopCounter'
}

{ #category : 'running' }
CounterTest >> setUp [

	super setUp.
	counter := Counter new
]

{ #category : 'tests' }
CounterTest >> testDecrementsMultipleTimes [

	counter increment.
	counter increment.

	counter decrement.
	counter decrement.

	self assert: counter count equals: 0
]

{ #category : 'tests' }
CounterTest >> testDecrementsOnce [

	counter increment.

	counter decrement.

	self assert: counter count equals: 0
]

{ #category : 'tests' }
CounterTest >> testDoesNotGoNegativeForDecrementFromZero [

	counter decrement.
	self assert: counter count equals: 0
]

{ #category : 'tests' }
CounterTest >> testIncrementsMultipleTimes [

	counter
		increment;
		increment.

	self assert: counter count equals: 2
]

{ #category : 'tests' }
CounterTest >> testIncrementsOnce [

	counter increment.
	self assert: counter count equals: 1
]

{ #category : 'tests' }
CounterTest >> testPrintString [

	counter := Counter startingAt: 12.

	self assert: counter printString equals: 'a Counter with value: 12'
]

{ #category : 'tests' }
CounterTest >> testStartingAt5 [

	| counterStartingAt5 |
	counterStartingAt5 := Counter startingAt: 5.

	self assert: counterStartingAt5 count equals: 5
]

{ #category : 'tests' }
CounterTest >> testStartsAtZero [

	self assert: counter count equals: 0
]
