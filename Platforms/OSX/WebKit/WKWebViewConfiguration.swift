
@available(OSX 10.10, *)
class WKWebViewConfiguration : Object, Copying {
  var processPool: WKProcessPool
  var preferences: WKPreferences
  var userContentController: WKUserContentController
  @available(OSX 10.11, *)
  var websiteDataStore: WKWebsiteDataStore
  var suppressesIncrementalRendering: Bool
  @available(OSX 10.11, *)
  var applicationNameForUserAgent: String?
  @available(OSX 10.11, *)
  var allowsAirPlayForMediaPlayback: Bool
  init()
  @available(OSX 10.10, *)
  func copy(zone: Zone = nil) -> AnyObject
}
extension WKWebViewConfiguration {
}
