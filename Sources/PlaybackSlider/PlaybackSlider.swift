import Cocoa

public class PlaybackSlider: NSSlider {
    
    public var cachedSegments: [CachedSegment]? = nil {
        didSet {
            setNeedsDisplay()
        }
    }
    
    public var contentBackgroundColor: NSColor = NSColor.darkGray {
        didSet {
            setNeedsDisplay()
        }
    }
    public var knobColor: NSColor = NSColor.windowBackgroundColor {
        didSet {
            setNeedsDisplay()
        }
    }
    public var knobBorderColor: NSColor = NSColor.black {
        didSet {
            setNeedsDisplay()
        }
    }
    public var cachedSegmentColor: NSColor = NSColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1.0) {
        didSet {
            setNeedsDisplay()
        }
    }

    let bezelMargin: CGFloat = 4
    
    override public func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        contentBackgroundColor.setFill()
        let bezelFrame = bounds.insetBy(dx: bezelMargin, dy: bezelMargin)
        NSBezierPath(roundedRect: bezelFrame, xRadius: bezelFrame.height * 0.5, yRadius: bezelFrame.height * 0.5).fill()
        
        let innerRect = bounds.insetBy(dx: bounds.height / 2, dy: 0)
        
        // Cached segments
        cachedSegmentColor.setFill()
        cachedSegments?.forEach { fragment in
            let start = CGFloat(fragment.start) / CGFloat(maxValue + 1)
            let end = CGFloat(fragment.end + 1) / CGFloat(maxValue + 1)
            let rect = NSRect(x: start * bezelFrame.width + bezelFrame.minX, y: bezelFrame.minY, width: (end - start) * bezelFrame.width, height: bezelFrame.height).insetBy(dx: 2, dy: 2)
            NSBezierPath(roundedRect: rect, xRadius: rect.height / 2, yRadius: rect.height / 2).fill()
        }
        
        //Knob
        knobColor.setFill()
        let knobX: CGFloat
        if maxValue - minValue == 0 {
            knobX = innerRect.minX
        } else {
            knobX = innerRect.minX + CGFloat((doubleValue - minValue) / maxValue) * innerRect.width
        }
        let knobPath = NSBezierPath(ovalIn: NSRect(x: knobX - bounds.height * 0.5, y: 0, width: bounds.height, height: bounds.height).insetBy(dx: 2, dy: 2))
        knobPath.fill()
        
        knobBorderColor.setStroke()
        knobPath.lineWidth = 2
        knobPath.stroke()
        
    }
    
}
