
class NSDateFormatter : NSFormatter {
  @available(OSX 10.10, *)
  var formattingContext: NSFormattingContext
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, range rangep: UnsafeMutablePointer<NSRange>) throws
  func stringFromDate(date: NSDate) -> String
  func dateFromString(string: String) -> NSDate?
  @available(OSX 10.6, *)
  class func localizedStringFromDate(date: NSDate, dateStyle dstyle: NSDateFormatterStyle, timeStyle tstyle: NSDateFormatterStyle) -> String
  @available(OSX 10.6, *)
  class func dateFormatFromTemplate(tmplate: String, options opts: Int, locale: NSLocale?) -> String?
  class func defaultFormatterBehavior() -> NSDateFormatterBehavior
  class func setDefaultFormatterBehavior(behavior: NSDateFormatterBehavior)
  @available(OSX 10.10, *)
  func setLocalizedDateFormatFromTemplate(dateFormatTemplate: String)
  var dateFormat: String!
  var dateStyle: NSDateFormatterStyle
  var timeStyle: NSDateFormatterStyle
  @NSCopying var locale: NSLocale!
  var generatesCalendarDates: Bool
  var formatterBehavior: NSDateFormatterBehavior
  @NSCopying var timeZone: NSTimeZone!
  @NSCopying var calendar: NSCalendar!
  var lenient: Bool
  @NSCopying var twoDigitStartDate: NSDate?
  @NSCopying var defaultDate: NSDate?
  var eraSymbols: [String]!
  var monthSymbols: [String]!
  var shortMonthSymbols: [String]!
  var weekdaySymbols: [String]!
  var shortWeekdaySymbols: [String]!
  var AMSymbol: String!
  var PMSymbol: String!
  @available(OSX 10.5, *)
  var longEraSymbols: [String]!
  @available(OSX 10.5, *)
  var veryShortMonthSymbols: [String]!
  @available(OSX 10.5, *)
  var standaloneMonthSymbols: [String]!
  @available(OSX 10.5, *)
  var shortStandaloneMonthSymbols: [String]!
  @available(OSX 10.5, *)
  var veryShortStandaloneMonthSymbols: [String]!
  @available(OSX 10.5, *)
  var veryShortWeekdaySymbols: [String]!
  @available(OSX 10.5, *)
  var standaloneWeekdaySymbols: [String]!
  @available(OSX 10.5, *)
  var shortStandaloneWeekdaySymbols: [String]!
  @available(OSX 10.5, *)
  var veryShortStandaloneWeekdaySymbols: [String]!
  @available(OSX 10.5, *)
  var quarterSymbols: [String]!
  @available(OSX 10.5, *)
  var shortQuarterSymbols: [String]!
  @available(OSX 10.5, *)
  var standaloneQuarterSymbols: [String]!
  @available(OSX 10.5, *)
  var shortStandaloneQuarterSymbols: [String]!
  @available(OSX 10.5, *)
  @NSCopying var gregorianStartDate: NSDate?
  @available(OSX 10.6, *)
  var doesRelativeDateFormatting: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
enum NSDateFormatterStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoStyle
  case ShortStyle
  case MediumStyle
  case LongStyle
  case FullStyle
}
enum NSDateFormatterBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BehaviorDefault
  case Behavior10_0
  case Behavior10_4
}
extension NSDateFormatter {
}