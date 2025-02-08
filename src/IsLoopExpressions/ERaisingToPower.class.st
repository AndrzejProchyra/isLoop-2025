Class {
	#name : 'ERaisingToPower',
	#superclass : 'EBinaryExpression',
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'visiting' }
ERaisingToPower >> accept: anEEvaluatingVisitor [

	^ anEEvaluatingVisitor visitRaisingToPower: self
]

{ #category : 'printing' }
ERaisingToPower >> operatorString [

	^ ' ^ '
]
