import OpenSwiftUI

public struct DividerDrawable: Drawable {
    public var origin: Point = Point.zero
    public var size: Size = Size.zero
    
    public init() {
        
    }
    
    public func wantedWidthForProposal(_ proposedWidth: Int) -> Int {
        if size.width > 0 {
            return size.width
        }
        return proposedWidth
    }
    
    public func wantedHeightForProposal(_ proposedHeight: Int) -> Int {
        if size.height > 0 {
            return size.height
        }
        return proposedHeight
    }
}

extension DividerDrawable: CustomDebugStringConvertible {
    public var debugDescription: String {
        return "Divider [\(size), \(origin)]"
    }
}
