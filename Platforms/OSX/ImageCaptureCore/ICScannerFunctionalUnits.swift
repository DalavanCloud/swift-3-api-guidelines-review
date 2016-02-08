
enum ICScannerFunctionalUnitType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case flatbed
  case positiveTransparency
  case negativeTransparency
  case documentFeeder
}
enum ICScannerMeasurementUnit : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case inches
  case centimeters
  case picas
  case points
  case twips
  case pixels
}
enum ICScannerBitDepth : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case depth1Bit
  case depth8Bits
  case depth16Bits
}
enum ICScannerColorDataFormatType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case chunky
  case planar
}
enum ICScannerPixelDataType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BW
  case gray
  case RGB
  case palette
  case CMY
  case CMYK
  case YUV
  case YUVK
  case CIEXYZ
}
enum ICScannerDocumentType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case typeDefault
  case typeA4
  case typeB5
  case typeUSLetter
  case typeUSLegal
  case typeA5
  case typeISOB4
  case typeISOB6
  case typeUSLedger
  case typeUSExecutive
  case typeA3
  case typeISOB3
  case typeA6
  case typeC4
  case typeC5
  case typeC6
  case type4A0
  case type2A0
  case typeA0
  case typeA1
  case typeA2
  case typeA7
  case typeA8
  case typeA9
  case type10
  case typeISOB0
  case typeISOB1
  case typeISOB2
  case typeISOB5
  case typeISOB7
  case typeISOB8
  case typeISOB9
  case typeISOB10
  case typeJISB0
  case typeJISB1
  case typeJISB2
  case typeJISB3
  case typeJISB4
  case typeJISB6
  case typeJISB7
  case typeJISB8
  case typeJISB9
  case typeJISB10
  case typeC0
  case typeC1
  case typeC2
  case typeC3
  case typeC7
  case typeC8
  case typeC9
  case typeC10
  case typeUSStatement
  case typeBusinessCard
  case typeE
  case type3R
  case type4R
  case type5R
  case type6R
  case type8R
  case typeS8R
  case type10R
  case typeS10R
  case type11R
  case type12R
  case typeS12R
  case type110
  case typeAPSH
  case typeAPSC
  case typeAPSP
  case type135
  case typeMF
  case typeLF
}
enum ICScannerFunctionalUnitState : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case ready
  case scanInProgress
  case overviewScanInProgress
}
enum ICScannerFeatureType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case enumeration
  case range
  case boolean
  case template
}
class ICScannerFeature : Object {
  var type: ICScannerFeatureType { get }
  var internalName: String? { get }
  var humanReadableName: String? { get }
  var tooltip: String? { get }
  init()
}
class ICScannerFeatureEnumeration : ICScannerFeature {
  unowned(unsafe) var currentValue: @sil_unmanaged AnyObject
  var defaultValue: AnyObject { get }
  var values: [Number] { get }
  var menuItemLabels: [String] { get }
  var menuItemLabelsTooltips: [String] { get }
  init()
}
class ICScannerFeatureRange : ICScannerFeature {
  var currentValue: CGFloat
  var defaultValue: CGFloat { get }
  var minValue: CGFloat { get }
  var maxValue: CGFloat { get }
  var stepSize: CGFloat { get }
  init()
}
class ICScannerFeatureBoolean : ICScannerFeature {
  var value: Bool
  init()
}
class ICScannerFeatureTemplate : ICScannerFeature {
  var targets: [MutableArray] { get }
  init()
}
class ICScannerFunctionalUnit : Object {
  var type: ICScannerFunctionalUnitType { get }
  var pixelDataType: ICScannerPixelDataType
  var supportedBitDepths: IndexSet { get }
  var bitDepth: ICScannerBitDepth
  var supportedMeasurementUnits: IndexSet { get }
  var measurementUnit: ICScannerMeasurementUnit
  var supportedResolutions: IndexSet { get }
  var preferredResolutions: IndexSet { get }
  var resolution: Int
  var nativeXResolution: Int { get }
  var nativeYResolution: Int { get }
  var supportedScaleFactors: IndexSet { get }
  var preferredScaleFactors: IndexSet { get }
  var scaleFactor: Int
  var templates: [ICScannerFeatureTemplate] { get }
  var vendorFeatures: [ICScannerFeature]? { get }
  var physicalSize: Size { get }
  var scanArea: Rect
  var scanAreaOrientation: ICEXIFOrientationType
  var acceptsThresholdForBlackAndWhiteScanning: Bool { get }
  var usesThresholdForBlackAndWhiteScanning: Bool
  var defaultThresholdForBlackAndWhiteScanning: UInt8 { get }
  var thresholdForBlackAndWhiteScanning: UInt8
  var state: ICScannerFunctionalUnitState { get }
  var scanInProgress: Bool { get }
  var scanProgressPercentDone: CGFloat { get }
  var canPerformOverviewScan: Bool { get }
  var overviewScanInProgress: Bool { get }
  var overviewImage: CGImage? { get }
  var overviewResolution: Int
  init()
}
class ICScannerFunctionalUnitFlatbed : ICScannerFunctionalUnit {
  var supportedDocumentTypes: IndexSet { get }
  var documentType: ICScannerDocumentType
  var documentSize: Size { get }
  init()
}
class ICScannerFunctionalUnitPositiveTransparency : ICScannerFunctionalUnit {
  var supportedDocumentTypes: IndexSet { get }
  var documentType: ICScannerDocumentType
  var documentSize: Size { get }
  init()
}
class ICScannerFunctionalUnitNegativeTransparency : ICScannerFunctionalUnit {
  var supportedDocumentTypes: IndexSet { get }
  var documentType: ICScannerDocumentType
  var documentSize: Size { get }
  init()
}
class ICScannerFunctionalUnitDocumentFeeder : ICScannerFunctionalUnit {
  var supportedDocumentTypes: IndexSet { get }
  var documentType: ICScannerDocumentType
  var documentSize: Size { get }
  var supportsDuplexScanning: Bool { get }
  var duplexScanningEnabled: Bool
  var documentLoaded: Bool { get }
  var oddPageOrientation: ICEXIFOrientationType
  var evenPageOrientation: ICEXIFOrientationType
  var reverseFeederPageOrder: Bool { get }
  init()
}
