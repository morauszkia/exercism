Class {
    #name: #TwoFer,
    #superclass: #Object,
    #category: #'Exercise@TwoFer'
}

{ #category: #exercise }

TwoFer >> who [
    ^'One for you, one for me.'
]

TwoFer >> who: name [
    name := name ifNotNil: [name] ifNil: ['you'].
    ^'One for ', name, ', one for me.'
]