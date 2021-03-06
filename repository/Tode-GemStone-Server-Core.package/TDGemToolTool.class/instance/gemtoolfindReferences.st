find
gemtoolfindReferences
  | browseTool block clsNamePattern list classNames className |
  browseTool := self topez toolInstanceFor: 'browse'.
  clsNamePattern := (GsTextInteraction
    prompt: 'Class Name Fragment:'
    template: 'Object') signal.
  clsNamePattern ifNil: [ ^ false ].
  list := browseTool findClass: clsNamePattern.
  classNames := list collect: [ :cls | cls className asString ].
  className := (GsChoiceInteraction
    prompt: 'Choose a class'
    labels: classNames
    values: classNames) signal.
  className ifNil: [ ^ false ].
  block := [ browseTool findReferences: className inClass: nil searchScriptRoot: nil ].
  browseTool
    browseMethodsBlock: block
    label: 'Browse references to class ' , className printString.
  ^ true