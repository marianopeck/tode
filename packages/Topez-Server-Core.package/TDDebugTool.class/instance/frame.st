as yet unclassified
frame
    | frameIndex |
    stackNode := topez currentNode.
    frameIndex := (tokens at: 2) asNumber.
    self stack navigateFrame: frameIndex.
    self stack currentFrame edit: topez windowId: nil.
    ^ (topez commands at: 'ds') block
        value: topez
        value: self stackNode
        value:
            {'ds'.
            (frameIndex asString)}
        value: nil