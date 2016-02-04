
enum MDLMaterialSemantic : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BaseColor
  case Subsurface
  case Metallic
  case Specular
  case SpecularExponent
  case SpecularTint
  case Roughness
  case Anisotropic
  case AnisotropicRotation
  case Sheen
  case SheenTint
  case Clearcoat
  case ClearcoatGloss
  case Emission
  case Bump
  case Opacity
  case InterfaceIndexOfRefraction
  case MaterialIndexOfRefraction
  case ObjectSpaceNormal
  case TangentSpaceNormal
  case Displacement
  case DisplacementScale
  case AmbientOcclusion
  case AmbientOcclusionScale
  case None
  case UserDefined
}
enum MDLMaterialPropertyType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case String
  case URL
  case Texture
  case Color
  case Float
  case Float2
  case Float3
  case Float4
  case Matrix44
}
enum MDLMaterialTextureWrapMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Clamp
  case Repeat
  case Mirror
}
enum MDLMaterialTextureFilterMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Nearest
  case Linear
}
enum MDLMaterialMipMapFilterMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Nearest
  case Linear
}
@available(tvOS 9.0, *)
class MDLTextureFilter : NSObject {
  var sWrapMode: MDLMaterialTextureWrapMode
  var tWrapMode: MDLMaterialTextureWrapMode
  var rWrapMode: MDLMaterialTextureWrapMode
  var minFilter: MDLMaterialTextureFilterMode
  var magFilter: MDLMaterialTextureFilterMode
  var mipFilter: MDLMaterialMipMapFilterMode
  init()
}
@available(tvOS 9.0, *)
class MDLTextureSampler : NSObject {
  var texture: MDLTexture?
  var hardwareFilter: MDLTextureFilter?
  var transform: MDLTransform?
  init()
}
@available(tvOS 9.0, *)
class MDLMaterialProperty : NSObject, MDLNamed {
  init(name: String, semantic: MDLMaterialSemantic)
  convenience init(name: String, semantic: MDLMaterialSemantic, float value: Float)
  convenience init(name: String, semantic: MDLMaterialSemantic, float2 value: vector_float2)
  convenience init(name: String, semantic: MDLMaterialSemantic, float3 value: vector_float3)
  convenience init(name: String, semantic: MDLMaterialSemantic, float4 value: vector_float4)
  convenience init(name: String, semantic: MDLMaterialSemantic, matrix4x4 value: matrix_float4x4)
  convenience init(name: String, semantic: MDLMaterialSemantic, URL: NSURL?)
  convenience init(name: String, semantic: MDLMaterialSemantic, string: String?)
  convenience init(name: String, semantic: MDLMaterialSemantic, textureSampler: MDLTextureSampler?)
  convenience init(name: String, semantic: MDLMaterialSemantic, color: CGColor)
  func setProperties(property: MDLMaterialProperty)
  var semantic: MDLMaterialSemantic
  var type: MDLMaterialPropertyType { get }
  var name: String
  var stringValue: String?
  @NSCopying var URLValue: NSURL?
  var textureSamplerValue: MDLTextureSampler?
  var color: CGColor?
  var floatValue: Float
  var float2Value: vector_float2
  var float3Value: vector_float3
  var float4Value: vector_float4
  var matrix4x4: matrix_float4x4
}
@available(tvOS 9.0, *)
class MDLScatteringFunction : NSObject, MDLNamed {
  var name: String
  var baseColor: MDLMaterialProperty { get }
  var emission: MDLMaterialProperty { get }
  var specular: MDLMaterialProperty { get }
  var materialIndexOfRefraction: MDLMaterialProperty { get }
  var interfaceIndexOfRefraction: MDLMaterialProperty { get }
  var normal: MDLMaterialProperty { get }
  var ambientOcclusion: MDLMaterialProperty { get }
  var ambientOcclusionScale: MDLMaterialProperty { get }
  init()
}
@available(tvOS 9.0, *)
class MDLPhysicallyPlausibleScatteringFunction : MDLScatteringFunction {
  var version: Int { get }
  var subsurface: MDLMaterialProperty { get }
  var metallic: MDLMaterialProperty { get }
  var specularAmount: MDLMaterialProperty { get }
  var specularTint: MDLMaterialProperty { get }
  var roughness: MDLMaterialProperty { get }
  var anisotropic: MDLMaterialProperty { get }
  var anisotropicRotation: MDLMaterialProperty { get }
  var sheen: MDLMaterialProperty { get }
  var sheenTint: MDLMaterialProperty { get }
  var clearcoat: MDLMaterialProperty { get }
  var clearcoatGloss: MDLMaterialProperty { get }
  init()
}
@available(tvOS 9.0, *)
class MDLMaterial : NSObject, MDLNamed, NSFastEnumeration {
  init(name: String, scatteringFunction: MDLScatteringFunction)
  func setProperty(property: MDLMaterialProperty)
  func removeProperty(property: MDLMaterialProperty)
  func propertyNamed(name: String) -> MDLMaterialProperty?
  func propertyWithSemantic(semantic: MDLMaterialSemantic) -> MDLMaterialProperty?
  func removeAllProperties()
  var scatteringFunction: MDLScatteringFunction { get }
  var name: String
  var baseMaterial: MDLMaterial?
  subscript (idx: Int) -> MDLMaterialProperty? { get }
  subscript (name: String) -> MDLMaterialProperty? { get }
  var count: Int { get }
  init()
  @available(tvOS 9.0, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}