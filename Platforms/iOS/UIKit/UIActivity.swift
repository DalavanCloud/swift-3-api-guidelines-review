
@available(iOS 6.0, *)
let UIActivityTypePostToFacebook: String
@available(iOS 6.0, *)
let UIActivityTypePostToTwitter: String
@available(iOS 6.0, *)
let UIActivityTypePostToWeibo: String
@available(iOS 6.0, *)
let UIActivityTypeMessage: String
@available(iOS 6.0, *)
let UIActivityTypeMail: String
@available(iOS 6.0, *)
let UIActivityTypePrint: String
@available(iOS 6.0, *)
let UIActivityTypeCopyToPasteboard: String
@available(iOS 6.0, *)
let UIActivityTypeAssignToContact: String
@available(iOS 6.0, *)
let UIActivityTypeSaveToCameraRoll: String
@available(iOS 7.0, *)
let UIActivityTypeAddToReadingList: String
@available(iOS 7.0, *)
let UIActivityTypePostToFlickr: String
@available(iOS 7.0, *)
let UIActivityTypePostToVimeo: String
@available(iOS 7.0, *)
let UIActivityTypePostToTencentWeibo: String
@available(iOS 7.0, *)
let UIActivityTypeAirDrop: String
@available(iOS 9.0, *)
let UIActivityTypeOpenInIBooks: String
@available(iOS 7.0, *)
enum UIActivityCategory : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case action
  case share
}
@available(iOS 6.0, *)
class UIActivity : Object {
  @available(iOS 7.0, *)
  class func activityCategory() -> UIActivityCategory
  func activityType() -> String?
  func activityTitle() -> String?
  func activityImage() -> UIImage?
  func canPerformWith(activityItems activityItems: [AnyObject]) -> Bool
  func prepare(activityItems activityItems: [AnyObject])
  func activityViewController() -> UIViewController?
  func perform()
  func activityDidFinish(completed: Bool)
  init()
}
