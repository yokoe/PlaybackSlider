import Cocoa
import PlaybackSlider

class ViewController: NSViewController {
    @IBOutlet weak var slider: PlaybackSlider!
    @IBOutlet weak var coloredSlider: PlaybackSlider!
    @IBOutlet weak var someView: NSView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        someView.wantsLayer = true
        someView.layer?.backgroundColor = NSColor.white.cgColor
        
        coloredSlider.contentBackgroundColor = NSColor.blue
        coloredSlider.knobColor = NSColor.red
        coloredSlider.knobBorderColor = NSColor.white
        coloredSlider.cachedSegmentColor = NSColor.yellow
    }
    
    @IBAction func onRandomizeButton(_ sender: Any) {
        var segments = [CachedSegment]()
        segments.append(CachedSegment(start: 0, end: 25))
        segments.append(CachedSegment(start: 50, end: 75))
        [slider, coloredSlider].forEach { (slider) in
            slider.cachedSegments = segments
        }
    }

    @IBAction func onZeroRange(_ sender: Any) {
        slider.maxValue = 0
        slider.minValue = 0
    }
}

