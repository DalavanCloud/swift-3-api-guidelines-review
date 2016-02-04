
protocol CLLocationManagerDelegate : NSObjectProtocol {
  @available(tvOS 6.0, *)
  optional func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
  @available(tvOS 2.0, *)
  optional func locationManager(manager: CLLocationManager, didFailWithError error: NSError)
  @available(tvOS 4.2, *)
  optional func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus)
}