
class CTRunDelegate {
}
@available(*, deprecated, renamed="CTRunDelegate")
typealias CTRunDelegateRef = CTRunDelegate
@available(tvOS 3.2, *)
func CTRunDelegateGetTypeID() -> CFTypeID
typealias CTRunDelegateDeallocateCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
typealias CTRunDelegateGetAscentCallback = @convention(c) (UnsafeMutablePointer<Void>) -> CGFloat
typealias CTRunDelegateGetDescentCallback = @convention(c) (UnsafeMutablePointer<Void>) -> CGFloat
typealias CTRunDelegateGetWidthCallback = @convention(c) (UnsafeMutablePointer<Void>) -> CGFloat
struct CTRunDelegateCallbacks {
  var version: CFIndex
  var dealloc: CTRunDelegateDeallocateCallback
  var getAscent: CTRunDelegateGetAscentCallback
  var getDescent: CTRunDelegateGetDescentCallback
  var getWidth: CTRunDelegateGetWidthCallback
}
var kCTRunDelegateVersion1: Int { get }
var kCTRunDelegateCurrentVersion: Int { get }
@available(tvOS 3.2, *)
func CTRunDelegateCreate(callbacks: UnsafePointer<CTRunDelegateCallbacks>, _ refCon: UnsafeMutablePointer<Void>) -> CTRunDelegate?
@available(tvOS 3.2, *)
func CTRunDelegateGetRefCon(runDelegate: CTRunDelegate) -> UnsafeMutablePointer<Void>