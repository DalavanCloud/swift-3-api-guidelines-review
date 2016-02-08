
@available(iOS 9.0, *)
enum UIDynamicItemCollisionBoundsType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case rectangle
  case ellipse
  case path
}
protocol UIDynamicItem : ObjectProtocol {
  var center: CGPoint { get set }
  var bounds: CGRect { get }
  var transform: CGAffineTransform { get set }
  @available(iOS 9.0, *)
  optional var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }
  @available(iOS 9.0, *)
  optional var collisionBoundingPath: UIBezierPath { get }
}
@available(iOS 9.0, *)
class UIDynamicItemGroup : Object, UIDynamicItem {
  init(items: [UIDynamicItem])
  var items: [UIDynamicItem] { get }
  init()
  @available(iOS 9.0, *)
  var center: CGPoint
  @available(iOS 9.0, *)
  var bounds: CGRect { get }
  @available(iOS 9.0, *)
  var transform: CGAffineTransform
  @available(iOS 9.0, *)
  var collisionBoundsType: UIDynamicItemCollisionBoundsType { get }
  @available(iOS 9.0, *)
  var collisionBoundingPath: UIBezierPath { get }
}
@available(iOS 7.0, *)
class UIDynamicBehavior : Object {
  func addChildBehavior(behavior: UIDynamicBehavior)
  func removeChildBehavior(behavior: UIDynamicBehavior)
  var childBehaviors: [UIDynamicBehavior] { get }
  var action: (() -> Void)?
  func willMoveTo(dynamicAnimator: UIDynamicAnimator?)
  var dynamicAnimator: UIDynamicAnimator? { get }
  init()
}
