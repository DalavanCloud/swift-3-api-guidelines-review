
@available(tvOS 9.0, *)
class MDLObject : Object, MDLNamed {
  func setComponent(component: MDLComponent, for protocol: Protocol)
  func componentConforming(to protocol: Protocol) -> MDLComponent?
  weak var parent: @sil_weak MDLObject?
  var transform: MDLTransformComponent?
  var children: MDLObjectContainerComponent
  func addChild(child: MDLObject)
  func boundingBox(atTime time: TimeInterval) -> MDLAxisAlignedBoundingBox
  init()
  @available(tvOS 9.0, *)
  var name: String
}
@available(tvOS 9.0, *)
class MDLObjectContainer : Object, MDLObjectContainerComponent {
  init()
  @available(tvOS 9.0, *)
  func add(object: MDLObject)
  @available(tvOS 9.0, *)
  func remove(object: MDLObject)
  @available(tvOS 9.0, *)
  var objects: [MDLObject] { get }
  @available(tvOS 9.0, *)
  func countByEnumerating(with state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
