
class CAEmitterLayer : CALayer {
  var emitterCells: [CAEmitterCell]?
  var birthRate: Float
  var lifetime: Float
  var emitterPosition: CGPoint
  var emitterZPosition: CGFloat
  var emitterSize: CGSize
  var emitterDepth: CGFloat
  var emitterShape: String
  var emitterMode: String
  var renderMode: String
  var preservesDepth: Bool
  var velocity: Float
  var scale: Float
  var spin: Float
  var seed: UInt32
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 5.0, *)
let kCAEmitterLayerPoint: String
@available(tvOS 5.0, *)
let kCAEmitterLayerLine: String
@available(tvOS 5.0, *)
let kCAEmitterLayerRectangle: String
@available(tvOS 5.0, *)
let kCAEmitterLayerCuboid: String
@available(tvOS 5.0, *)
let kCAEmitterLayerCircle: String
@available(tvOS 5.0, *)
let kCAEmitterLayerSphere: String
@available(tvOS 5.0, *)
let kCAEmitterLayerPoints: String
@available(tvOS 5.0, *)
let kCAEmitterLayerOutline: String
@available(tvOS 5.0, *)
let kCAEmitterLayerSurface: String
@available(tvOS 5.0, *)
let kCAEmitterLayerVolume: String
@available(tvOS 5.0, *)
let kCAEmitterLayerUnordered: String
@available(tvOS 5.0, *)
let kCAEmitterLayerOldestFirst: String
@available(tvOS 5.0, *)
let kCAEmitterLayerOldestLast: String
@available(tvOS 5.0, *)
let kCAEmitterLayerBackToFront: String
@available(tvOS 5.0, *)
let kCAEmitterLayerAdditive: String