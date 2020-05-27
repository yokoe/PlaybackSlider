import Cocoa

public class CachedSegment: NSObject {
    public var start: Int
    public var end: Int
    
    public init(start: Int, end: Int) {
        self.start = start
        self.end = end
    }
    
    override public var debugDescription: String {
        if end != start {
            return "\(start)-\(end)"
        } else {
            return "\(start)"
        }
    }
}
