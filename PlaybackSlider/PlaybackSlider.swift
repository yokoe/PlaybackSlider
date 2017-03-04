import Cocoa

public class PlaybackSlider: NSSlider {
    
    public var cachedSegments: [CachedSegment]? = nil {
        didSet {
            setNeedsDisplay()
        }
    }

    let bezelMargin: CGFloat = 4
    
    override public func draw(_ dirtyRect: NSRect) {
        NSColor.windowBackgroundColor.setFill()
        NSRectFill(bounds)
        
        NSColor.darkGray.setFill()
        let bezelFrame = bounds.insetBy(dx: bezelMargin, dy: bezelMargin)
        NSBezierPath(roundedRect: bezelFrame, xRadius: bezelFrame.height * 0.5, yRadius: bezelFrame.height * 0.5).fill()
        
        let innerRect = bounds.insetBy(dx: bounds.height / 2, dy: 0)
        
        // Cached segments
        NSColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1.0).setFill()
        cachedSegments?.forEach { fragment in
            let start = CGFloat(fragment.start) / CGFloat(maxValue + 1)
            let end = CGFloat(fragment.end + 1) / CGFloat(maxValue + 1)
            let rect = NSRect(x: start * bezelFrame.width + bezelFrame.minX, y: bezelFrame.minY, width: (end - start) * bezelFrame.width, height: bezelFrame.height).insetBy(dx: 2, dy: 2)
            NSBezierPath(roundedRect: rect, xRadius: rect.height / 2, yRadius: rect.height / 2).fill()
        }
        
        //Knob
        
        NSColor.windowBackgroundColor.setFill()
        let knobX = innerRect.minX + CGFloat((doubleValue - minValue) / maxValue) * innerRect.width
        let knobPath = NSBezierPath(ovalIn: NSRect(x: knobX - bounds.height * 0.5, y: 0, width: bounds.height, height: bounds.height).insetBy(dx: 2, dy: 2))
        knobPath.fill()
        
        NSColor.black.setStroke()
        knobPath.lineWidth = 2
        knobPath.stroke()
        
    }
    
}
