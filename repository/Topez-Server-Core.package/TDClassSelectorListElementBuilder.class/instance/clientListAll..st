accessing
clientListAll: listElement
  | items ar beh className |
  items := OrderedCollection new.
  ar := OrderedCollection new.
  className := self theClass name.
  beh := self theBehavior.
  beh selectors sorted
    do: [ :selector | 
      ar add: selector asString.
      items
        add:
          (TDClientListItemAttributes
            object: (self methodDefinitionFor: selector)
            parent: nil
            aspect: listElement aspect) ].
  listElement ~~ nil
    ifTrue: [ listElement itemCache: items ].
  ^ ar -> nil