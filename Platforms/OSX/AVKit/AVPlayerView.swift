
@available(OSX 10.9, *)
class AVPlayerView : NSView {
  var controlsStyle: AVPlayerViewControlsStyle
  @available(OSX 10.10, *)
  var videoGravity: String
  @available(OSX 10.10, *)
  var isReadyForDisplay: Bool { get }
  @available(OSX 10.10, *)
  var videoBounds: Rect { get }
  @available(OSX 10.10, *)
  var contentOverlayView: NSView? { get }
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
@available(OSX 10.9, *)
enum AVPlayerViewControlsStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case inline
  case floating
  case minimal
  static var `default`: AVPlayerViewControlsStyle { get }
}
extension AVPlayerView {
  var showsFrameSteppingButtons: Bool
  var showsSharingServiceButton: Bool
  var actionPopUpButtonMenu: NSMenu?
  var showsFullScreenToggleButton: Bool
}
extension AVPlayerView {
  var canBeginTrimming: Bool { get }
  func beginTrimming(completionHandler handler: ((AVPlayerViewTrimResult) -> Void)? = nil)
}
@available(OSX 10.9, *)
enum AVPlayerViewTrimResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case okButton
  case cancelButton
}
extension AVPlayerView {
  func flashChapterNumber(chapterNumber: Int, chapterTitle: String)
}
