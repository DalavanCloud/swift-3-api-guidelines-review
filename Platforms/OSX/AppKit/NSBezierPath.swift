
enum NSLineCapStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case buttLineCapStyle
  case roundLineCapStyle
  case squareLineCapStyle
}
enum NSLineJoinStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case miterLineJoinStyle
  case roundLineJoinStyle
  case bevelLineJoinStyle
}
enum NSWindingRule : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case nonZeroWindingRule
  case evenOddWindingRule
}
enum NSBezierPathElement : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case moveToBezierPathElement
  case lineToBezierPathElement
  case curveToBezierPathElement
  case closePathBezierPathElement
}
class NSBezierPath : Object, Copying, Coding {
  /*not inherited*/ init(rect: Rect)
  /*not inherited*/ init(ovalIn rect: Rect)
  @available(OSX 10.5, *)
  /*not inherited*/ init(roundedRect rect: Rect, xRadius: CGFloat, yRadius: CGFloat)
  class func fill(rect: Rect)
  class func stroke(rect: Rect)
  class func clipRect(rect: Rect)
  class func strokeLine(from point1: Point, to point2: Point)
  class func drawPackedGlyphs(packedGlyphs: UnsafePointer<Int8>, at point: Point)
  class func setDefaultMiterLimit(limit: CGFloat)
  class func defaultMiterLimit() -> CGFloat
  class func setDefaultFlatness(flatness: CGFloat)
  class func defaultFlatness() -> CGFloat
  class func setDefaultWindingRule(windingRule: NSWindingRule)
  class func defaultWindingRule() -> NSWindingRule
  class func setDefaultLineCapStyle(lineCapStyle: NSLineCapStyle)
  class func defaultLineCapStyle() -> NSLineCapStyle
  class func setDefaultLineJoinStyle(lineJoinStyle: NSLineJoinStyle)
  class func defaultLineJoinStyle() -> NSLineJoinStyle
  class func setDefaultLineWidth(lineWidth: CGFloat)
  class func defaultLineWidth() -> CGFloat
  func move(to point: Point)
  func line(to point: Point)
  func curve(to endPoint: Point, controlPoint1: Point, controlPoint2: Point)
  func close()
  func removeAllPoints()
  func relativeMove(to point: Point)
  func relativeLine(to point: Point)
  func relativeCurve(to endPoint: Point, controlPoint1: Point, controlPoint2: Point)
  var lineWidth: CGFloat
  var lineCapStyle: NSLineCapStyle
  var lineJoinStyle: NSLineJoinStyle
  var windingRule: NSWindingRule
  var miterLimit: CGFloat
  var flatness: CGFloat
  func getLineDash(pattern: UnsafeMutablePointer<CGFloat>, count: UnsafeMutablePointer<Int>, phase: UnsafeMutablePointer<CGFloat>)
  func setLineDash(pattern: UnsafePointer<CGFloat>, count: Int, phase: CGFloat)
  func stroke()
  func fill()
  func addClip()
  func setClip()
  @NSCopying var flattening: NSBezierPath { get }
  @NSCopying var reversing: NSBezierPath { get }
  func transform(using transform: AffineTransform)
  var isEmpty: Bool { get }
  var currentPoint: Point { get }
  var controlPointBounds: Rect { get }
  var bounds: Rect { get }
  var elementCount: Int { get }
  func element(at index: Int, associatedPoints points: PointArray) -> NSBezierPathElement
  func element(at index: Int) -> NSBezierPathElement
  func setAssociatedPoints(points: PointArray, at index: Int)
  func append(path: NSBezierPath)
  func append(with rect: Rect)
  func append(with points: PointArray, count: Int)
  func appendWithOval(in rect: Rect)
  func appendWithArc(withCenter center: Point, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  func appendWithArc(withCenter center: Point, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat)
  func appendWithArc(from point1: Point, to point2: Point, radius: CGFloat)
  func append(withGlyph glyph: NSGlyph, in font: NSFont)
  func append(withGlyphs glyphs: UnsafeMutablePointer<NSGlyph>, count: Int, in font: NSFont)
  func append(withPackedGlyphs packedGlyphs: UnsafePointer<Int8>)
  @available(OSX 10.5, *)
  func append(withRoundedRect rect: Rect, xRadius: CGFloat, yRadius: CGFloat)
  func contains(point: Point) -> Bool
  init()
  func copy(zone: Zone = nil) -> AnyObject
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension NSBezierPath {
}
