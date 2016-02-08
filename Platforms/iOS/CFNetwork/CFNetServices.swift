
class CFNetService {
}
class CFNetServiceMonitor {
}
class CFNetServiceBrowser {
}
@available(iOS 2.0, *)
let kCFStreamErrorDomainMach: Int32
@available(iOS 2.0, *)
let kCFStreamErrorDomainNetServices: Int32
enum CFNetServicesError : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case unknown
  case collision
  case notFound
  case inProgress
  case badArgument
  case cancel
  case invalid
  case timeout
}
enum CFNetServiceMonitorType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case TXT
}
struct CFNetServiceRegisterFlags : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var noAutoRename: CFNetServiceRegisterFlags { get }
}
struct CFNetServiceBrowserFlags : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var moreComing: CFNetServiceBrowserFlags { get }
  static var isDomain: CFNetServiceBrowserFlags { get }
  static var isDefault: CFNetServiceBrowserFlags { get }
  static var remove: CFNetServiceBrowserFlags { get }
}
struct CFNetServiceClientContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFAllocatorRetainCallBack?
  var release: CFAllocatorReleaseCallBack?
  var copyDescription: CFAllocatorCopyDescriptionCallBack?
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: CFAllocatorRetainCallBack?, release: CFAllocatorReleaseCallBack?, copyDescription: CFAllocatorCopyDescriptionCallBack?)
}
typealias CFNetServiceClientCallBack = @convention(c) (CFNetService, UnsafeMutablePointer<CFStreamError>, UnsafeMutablePointer<Void>) -> Void
typealias CFNetServiceMonitorClientCallBack = @convention(c) (CFNetServiceMonitor, CFNetService, CFNetServiceMonitorType, CFData, UnsafeMutablePointer<CFStreamError>, UnsafeMutablePointer<Void>) -> Void
typealias CFNetServiceBrowserClientCallBack = @convention(c) (CFNetServiceBrowser, CFOptionFlags, CFTypeRef, UnsafeMutablePointer<CFStreamError>, UnsafeMutablePointer<Void>) -> Void
@available(iOS 2.0, *)
func CFNetServiceGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func CFNetServiceMonitorGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func CFNetServiceBrowserGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func CFNetServiceCreate(alloc: CFAllocator?, _ domain: CFString, _ serviceType: CFString, _ name: CFString, _ port: Int32) -> Unmanaged<CFNetService>
@available(iOS 2.0, *)
func CFNetServiceCreateCopy(alloc: CFAllocator?, _ service: CFNetService) -> Unmanaged<CFNetService>
@available(iOS 2.0, *)
func CFNetServiceGetDomain(theService: CFNetService) -> Unmanaged<CFString>
@available(iOS 2.0, *)
func CFNetServiceGetType(theService: CFNetService) -> Unmanaged<CFString>
@available(iOS 2.0, *)
func CFNetServiceGetName(theService: CFNetService) -> Unmanaged<CFString>
@available(iOS 2.0, *)
func CFNetServiceRegisterWithOptions(theService: CFNetService, _ options: CFOptionFlags, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(iOS 2.0, *)
func CFNetServiceResolveWithTimeout(theService: CFNetService, _ timeout: CFTimeInterval, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(iOS 2.0, *)
func CFNetServiceCancel(theService: CFNetService)
@available(iOS 2.0, *)
func CFNetServiceGetTargetHost(theService: CFNetService) -> Unmanaged<CFString>?
@available(iOS 2.0, *)
func CFNetServiceGetPortNumber(theService: CFNetService) -> Int32
@available(iOS 2.0, *)
func CFNetServiceGetAddressing(theService: CFNetService) -> Unmanaged<CFArray>?
@available(iOS 2.0, *)
func CFNetServiceGetTXTData(theService: CFNetService) -> Unmanaged<CFData>?
@available(iOS 2.0, *)
func CFNetServiceSetTXTData(theService: CFNetService, _ txtRecord: CFData) -> Bool
@available(iOS 2.0, *)
func CFNetServiceCreateDictionaryWithTXTData(alloc: CFAllocator?, _ txtRecord: CFData) -> Unmanaged<CFDictionary>?
@available(iOS 2.0, *)
func CFNetServiceCreateTXTDataWithDictionary(alloc: CFAllocator?, _ keyValuePairs: CFDictionary) -> Unmanaged<CFData>?
@available(iOS 2.0, *)
func CFNetServiceSetClient(theService: CFNetService, _ clientCB: CFNetServiceClientCallBack?, _ clientContext: UnsafeMutablePointer<CFNetServiceClientContext>) -> Bool
@available(iOS 2.0, *)
func CFNetServiceScheduleWithRunLoop(theService: CFNetService, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(iOS 2.0, *)
func CFNetServiceUnscheduleFromRunLoop(theService: CFNetService, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(iOS 2.0, *)
func CFNetServiceMonitorCreate(alloc: CFAllocator?, _ theService: CFNetService, _ clientCB: CFNetServiceMonitorClientCallBack, _ clientContext: UnsafeMutablePointer<CFNetServiceClientContext>) -> Unmanaged<CFNetServiceMonitor>
@available(iOS 2.0, *)
func CFNetServiceMonitorInvalidate(monitor: CFNetServiceMonitor)
@available(iOS 2.0, *)
func CFNetServiceMonitorStart(monitor: CFNetServiceMonitor, _ recordType: CFNetServiceMonitorType, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(iOS 2.0, *)
func CFNetServiceMonitorStop(monitor: CFNetServiceMonitor, _ error: UnsafeMutablePointer<CFStreamError>)
@available(iOS 2.0, *)
func CFNetServiceMonitorScheduleWithRunLoop(monitor: CFNetServiceMonitor, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(iOS 2.0, *)
func CFNetServiceMonitorUnscheduleFromRunLoop(monitor: CFNetServiceMonitor, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(iOS 2.0, *)
func CFNetServiceBrowserCreate(alloc: CFAllocator?, _ clientCB: CFNetServiceBrowserClientCallBack, _ clientContext: UnsafeMutablePointer<CFNetServiceClientContext>) -> Unmanaged<CFNetServiceBrowser>
@available(iOS 2.0, *)
func CFNetServiceBrowserInvalidate(browser: CFNetServiceBrowser)
@available(iOS 2.0, *)
func CFNetServiceBrowserSearchForDomains(browser: CFNetServiceBrowser, _ registrationDomains: Bool, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(iOS 2.0, *)
func CFNetServiceBrowserSearchForServices(browser: CFNetServiceBrowser, _ domain: CFString, _ serviceType: CFString, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(iOS 2.0, *)
func CFNetServiceBrowserStopSearch(browser: CFNetServiceBrowser, _ error: UnsafeMutablePointer<CFStreamError>)
@available(iOS 2.0, *)
func CFNetServiceBrowserScheduleWithRunLoop(browser: CFNetServiceBrowser, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(iOS 2.0, *)
func CFNetServiceBrowserUnscheduleFromRunLoop(browser: CFNetServiceBrowser, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
