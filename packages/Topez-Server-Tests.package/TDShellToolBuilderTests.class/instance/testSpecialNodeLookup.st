as yet unclassified
testSpecialNodeLookup
  "object aspect expected"

  self
    executeNodeBuilderLookupSpecs:
      {{$o.
      #'view'.
      TDCharacterNodeBuilder}.
      {117.
      #'view'.
      TDIntegerNodeBuilder}.
      {(SmallInteger maximumValue + 1).
      #'view'.
      TDIntegerNodeBuilder}.
      {(SmallInteger minimumValue - 1).
      #'view'.
      TDIntegerNodeBuilder}.
      {117.145.
      #'view'.
      TDSpecialNodeBuilder}.
      {117.145s3.
      #'view'.
      TDSpecialNodeBuilder}.
      {(FixedPoint fromString: '117.145').
      #'view'.
      TDSpecialNodeBuilder}.
      {true.
      #'view'.
      TDSpecialNodeBuilder}.
      {nil.
      #'view'.
      TDSpecialNodeBuilder}}