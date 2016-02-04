
@available(tvOS 7.0, *)
enum CBPeripheralManagerAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
@available(tvOS 6.0, *)
enum CBPeripheralManagerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Resetting
  case Unsupported
  case Unauthorized
  case PoweredOff
  case PoweredOn
}
@available(tvOS 6.0, *)
enum CBPeripheralManagerConnectionLatency : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Low
  case Medium
  case High
}
@available(tvOS 6.0, *)
class CBPeripheralManager : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged CBPeripheralManagerDelegate?
  var state: CBPeripheralManagerState { get }
  var isAdvertising: Bool { get }
  @available(tvOS 7.0, *)
  class func authorizationStatus() -> CBPeripheralManagerAuthorizationStatus
  func startAdvertising(advertisementData: [String : AnyObject]?)
  func stopAdvertising()
  func setDesiredConnectionLatency(latency: CBPeripheralManagerConnectionLatency, forCentral central: CBCentral)
  func addService(service: CBMutableService)
  func removeService(service: CBMutableService)
  func removeAllServices()
  func respondToRequest(request: CBATTRequest, withResult result: CBATTError)
  func updateValue(value: NSData, forCharacteristic characteristic: CBMutableCharacteristic, onSubscribedCentrals centrals: [CBCentral]?) -> Bool
  convenience init()
}
protocol CBPeripheralManagerDelegate : NSObjectProtocol {
  @available(tvOS 6.0, *)
  func peripheralManagerDidUpdateState(peripheral: CBPeripheralManager)
  @available(tvOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, willRestoreState dict: [String : AnyObject])
  @available(tvOS 6.0, *)
  optional func peripheralManagerDidStartAdvertising(peripheral: CBPeripheralManager, error: NSError?)
  @available(tvOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, didAddService service: CBService, error: NSError?)
  @available(tvOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, central: CBCentral, didSubscribeToCharacteristic characteristic: CBCharacteristic)
  @available(tvOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, central: CBCentral, didUnsubscribeFromCharacteristic characteristic: CBCharacteristic)
  @available(tvOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, didReceiveReadRequest request: CBATTRequest)
  @available(tvOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, didReceiveWriteRequests requests: [CBATTRequest])
  @available(tvOS 6.0, *)
  optional func peripheralManagerIsReadyToUpdateSubscribers(peripheral: CBPeripheralManager)
}