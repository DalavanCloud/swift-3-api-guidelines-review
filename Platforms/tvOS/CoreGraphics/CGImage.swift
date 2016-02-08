
class CGImage {
}
enum CGImageAlphaInfo : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case none
  case premultipliedLast
  case premultipliedFirst
  case last
  case first
  case noneSkipLast
  case noneSkipFirst
  case only
}
@available(tvOS 2.0, *)
struct CGBitmapInfo : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var alphaInfoMask: CGBitmapInfo { get }
  static var floatComponents: CGBitmapInfo { get }
  static var byteOrderMask: CGBitmapInfo { get }
  static var byteOrderDefault: CGBitmapInfo { get }
  static var byteOrder16Little: CGBitmapInfo { get }
  static var byteOrder32Little: CGBitmapInfo { get }
  static var byteOrder16Big: CGBitmapInfo { get }
  static var byteOrder32Big: CGBitmapInfo { get }
}
@available(tvOS 2.0, *)
func CGImageGetTypeID() -> CFTypeID
@available(tvOS 2.0, *)
func CGImageCreate(width: Int, _ height: Int, _ bitsPerComponent: Int, _ bitsPerPixel: Int, _ bytesPerRow: Int, _ space: CGColorSpace?, _ bitmapInfo: CGBitmapInfo, _ provider: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool, _ intent: CGColorRenderingIntent) -> CGImage?
@available(tvOS 2.0, *)
func CGImageMaskCreate(width: Int, _ height: Int, _ bitsPerComponent: Int, _ bitsPerPixel: Int, _ bytesPerRow: Int, _ provider: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool) -> CGImage?
@available(tvOS 2.0, *)
func CGImageCreateCopy(image: CGImage?) -> CGImage?
@available(tvOS 2.0, *)
func CGImageCreateWithJPEGDataProvider(source: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool, _ intent: CGColorRenderingIntent) -> CGImage?
@available(tvOS 2.0, *)
func CGImageCreateWithPNGDataProvider(source: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool, _ intent: CGColorRenderingIntent) -> CGImage?
@available(tvOS 2.0, *)
func CGImageCreateWithImageInRect(image: CGImage?, _ rect: CGRect) -> CGImage?
@available(tvOS 2.0, *)
func CGImageCreateWithMask(image: CGImage?, _ mask: CGImage?) -> CGImage?
@available(tvOS 2.0, *)
func CGImageCreateWithMaskingColors(image: CGImage?, _ components: UnsafePointer<CGFloat>) -> CGImage?
@available(tvOS 2.0, *)
func CGImageCreateCopyWithColorSpace(image: CGImage?, _ space: CGColorSpace?) -> CGImage?
@available(tvOS 2.0, *)
func CGImageIsMask(image: CGImage?) -> Bool
@available(tvOS 2.0, *)
func CGImageGetWidth(image: CGImage?) -> Int
@available(tvOS 2.0, *)
func CGImageGetHeight(image: CGImage?) -> Int
@available(tvOS 2.0, *)
func CGImageGetBitsPerComponent(image: CGImage?) -> Int
@available(tvOS 2.0, *)
func CGImageGetBitsPerPixel(image: CGImage?) -> Int
@available(tvOS 2.0, *)
func CGImageGetBytesPerRow(image: CGImage?) -> Int
@available(tvOS 2.0, *)
func CGImageGetColorSpace(image: CGImage?) -> CGColorSpace?
@available(tvOS 2.0, *)
func CGImageGetAlphaInfo(image: CGImage?) -> CGImageAlphaInfo
@available(tvOS 2.0, *)
func CGImageGetDataProvider(image: CGImage?) -> CGDataProvider?
@available(tvOS 2.0, *)
func CGImageGetDecode(image: CGImage?) -> UnsafePointer<CGFloat>
@available(tvOS 2.0, *)
func CGImageGetShouldInterpolate(image: CGImage?) -> Bool
@available(tvOS 2.0, *)
func CGImageGetRenderingIntent(image: CGImage?) -> CGColorRenderingIntent
@available(tvOS 2.0, *)
func CGImageGetBitmapInfo(image: CGImage?) -> CGBitmapInfo
@available(tvOS 9.0, *)
func CGImageGetUTType(image: CGImage?) -> CFString?
