
class CGMutablePath {
}
class CGPath {
}
enum CGLineJoin : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case miter
  case round
  case bevel
}
enum CGLineCap : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case butt
  case round
  case square
}
@available(tvOS 2.0, *)
func CGPathGetTypeID() -> CFTypeID
@available(tvOS 2.0, *)
func CGPathCreateMutable() -> CGMutablePath
@available(tvOS 2.0, *)
func CGPathCreateCopy(path: CGPath?) -> CGPath?
@available(tvOS 5.0, *)
func CGPathCreateCopyByTransformingPath(path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath?
@available(tvOS 2.0, *)
func CGPathCreateMutableCopy(path: CGPath?) -> CGMutablePath?
@available(tvOS 5.0, *)
func CGPathCreateMutableCopyByTransformingPath(path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>) -> CGMutablePath?
@available(tvOS 4.0, *)
func CGPathCreateWithRect(rect: CGRect, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath
@available(tvOS 5.0, *)
func CGPathCreateWithEllipseInRect(rect: CGRect, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath
@available(tvOS 7.0, *)
func CGPathCreateWithRoundedRect(rect: CGRect, _ cornerWidth: CGFloat, _ cornerHeight: CGFloat, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath
@available(tvOS 7.0, *)
func CGPathAddRoundedRect(path: CGMutablePath?, _ transform: UnsafePointer<CGAffineTransform>, _ rect: CGRect, _ cornerWidth: CGFloat, _ cornerHeight: CGFloat)
@available(tvOS 5.0, *)
func CGPathCreateCopyByDashingPath(path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>, _ phase: CGFloat, _ lengths: UnsafePointer<CGFloat>, _ count: Int) -> CGPath?
@available(tvOS 5.0, *)
func CGPathCreateCopyByStrokingPath(path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>, _ lineWidth: CGFloat, _ lineCap: CGLineCap, _ lineJoin: CGLineJoin, _ miterLimit: CGFloat) -> CGPath?
@available(tvOS 2.0, *)
func CGPathEqualToPath(path1: CGPath?, _ path2: CGPath?) -> Bool
@available(tvOS 2.0, *)
func CGPathMoveToPoint(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat)
@available(tvOS 2.0, *)
func CGPathAddLineToPoint(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat)
@available(tvOS 2.0, *)
func CGPathAddQuadCurveToPoint(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ cpx: CGFloat, _ cpy: CGFloat, _ x: CGFloat, _ y: CGFloat)
@available(tvOS 2.0, *)
func CGPathAddCurveToPoint(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ cp1x: CGFloat, _ cp1y: CGFloat, _ cp2x: CGFloat, _ cp2y: CGFloat, _ x: CGFloat, _ y: CGFloat)
@available(tvOS 2.0, *)
func CGPathCloseSubpath(path: CGMutablePath?)
@available(tvOS 2.0, *)
func CGPathAddRect(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ rect: CGRect)
@available(tvOS 2.0, *)
func CGPathAddRects(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ rects: UnsafePointer<CGRect>, _ count: Int)
@available(tvOS 2.0, *)
func CGPathAddLines(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ points: UnsafePointer<CGPoint>, _ count: Int)
@available(tvOS 2.0, *)
func CGPathAddEllipseInRect(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ rect: CGRect)
@available(tvOS 5.0, *)
func CGPathAddRelativeArc(path: CGMutablePath?, _ matrix: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat, _ radius: CGFloat, _ startAngle: CGFloat, _ delta: CGFloat)
@available(tvOS 2.0, *)
func CGPathAddArc(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat, _ radius: CGFloat, _ startAngle: CGFloat, _ endAngle: CGFloat, _ clockwise: Bool)
@available(tvOS 2.0, *)
func CGPathAddArcToPoint(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x1: CGFloat, _ y1: CGFloat, _ x2: CGFloat, _ y2: CGFloat, _ radius: CGFloat)
@available(tvOS 2.0, *)
func CGPathAddPath(path1: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ path2: CGPath?)
@available(tvOS 2.0, *)
func CGPathIsEmpty(path: CGPath?) -> Bool
@available(tvOS 2.0, *)
func CGPathIsRect(path: CGPath?, _ rect: UnsafeMutablePointer<CGRect>) -> Bool
@available(tvOS 2.0, *)
func CGPathGetCurrentPoint(path: CGPath?) -> CGPoint
@available(tvOS 2.0, *)
func CGPathGetBoundingBox(path: CGPath?) -> CGRect
@available(tvOS 4.0, *)
func CGPathGetPathBoundingBox(path: CGPath?) -> CGRect
@available(tvOS 2.0, *)
func CGPathContainsPoint(path: CGPath?, _ m: UnsafePointer<CGAffineTransform>, _ point: CGPoint, _ eoFill: Bool) -> Bool
enum CGPathElementType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case moveToPoint
  case addLineToPoint
  case addQuadCurveToPoint
  case addCurveToPoint
  case closeSubpath
}
struct CGPathElement {
  var type: CGPathElementType
  var points: UnsafeMutablePointer<CGPoint>
}
typealias CGPathApplierFunction = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<CGPathElement>) -> Void
@available(tvOS 2.0, *)
func CGPathApply(path: CGPath?, _ info: UnsafeMutablePointer<Void>, _ function: CGPathApplierFunction?)
