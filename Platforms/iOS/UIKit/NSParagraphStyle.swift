
@available(iOS 7.0, *)
let NSTabColumnTerminatorsAttributeName: String
@available(iOS 7.0, *)
class NSTextTab : NSObject, NSCopying, NSCoding {
  @available(iOS 7.0, *)
  class func columnTerminators(for aLocale: NSLocale?) -> NSCharacterSet
  init(textAlignment alignment: NSTextAlignment, location loc: CGFloat, options options: [String : AnyObject] = [:])
  var alignment: NSTextAlignment { get }
  var location: CGFloat { get }
  var options: [String : AnyObject] { get }
  @available(iOS 7.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 7.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 6.0, *)
enum NSLineBreakMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case byWordWrapping
  case byCharWrapping
  case byClipping
  case byTruncatingHead
  case byTruncatingTail
  case byTruncatingMiddle
}
@available(iOS 6.0, *)
class NSParagraphStyle : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  class func defaultParagraphStyle() -> NSParagraphStyle
  class func defaultWritingDirection(forLanguage languageName: String?) -> NSWritingDirection
  var lineSpacing: CGFloat { get }
  var paragraphSpacing: CGFloat { get }
  var alignment: NSTextAlignment { get }
  var headIndent: CGFloat { get }
  var tailIndent: CGFloat { get }
  var firstLineHeadIndent: CGFloat { get }
  var minimumLineHeight: CGFloat { get }
  var maximumLineHeight: CGFloat { get }
  var lineBreakMode: NSLineBreakMode { get }
  var baseWritingDirection: NSWritingDirection { get }
  var lineHeightMultiple: CGFloat { get }
  var paragraphSpacingBefore: CGFloat { get }
  var hyphenationFactor: Float { get }
  @available(iOS 7.0, *)
  var tabStops: [NSTextTab] { get }
  @available(iOS 7.0, *)
  var defaultTabInterval: CGFloat { get }
  @available(iOS 9.0, *)
  var allowsDefaultTighteningForTruncation: Bool { get }
  @available(iOS 6.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 6.0, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 6.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 6.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 6.0, *)
class NSMutableParagraphStyle : NSParagraphStyle {
  @available(iOS 9.0, *)
  func addTabStop(_ anObject: NSTextTab)
  @available(iOS 9.0, *)
  func removeTabStop(_ anObject: NSTextTab)
  @available(iOS 9.0, *)
  func setParagraphStyle(_ obj: NSParagraphStyle)
}
