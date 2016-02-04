
let kEAGLDrawablePropertyRetainedBacking: String
let kEAGLDrawablePropertyColorFormat: String
let kEAGLColorFormatRGBA8: String
let kEAGLColorFormatRGB565: String
@available(tvOS 7.0, *)
let kEAGLColorFormatSRGBA8: String
protocol EAGLDrawable {
  @available(tvOS 2.0, *)
  var drawableProperties: [NSObject : AnyObject]! { get set }
}
extension EAGLContext {
  func renderbufferStorage(target: Int, fromDrawable drawable: EAGLDrawable!) -> Bool
  func presentRenderbuffer(target: Int) -> Bool
}