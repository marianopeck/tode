as yet unclassified
mergeSource
  | diff selectedSource |
  selectedSource := self selectedSource.
  self displayDiffs
    ifFalse: [ ^ selectedSource ].
  diff := TextDiffBuilder
    from: (self formatSource: self source) withSqueakLineEndings
    to: (self formatSource: selectedSource) withSqueakLineEndings.
  ^ diff buildTextPatch