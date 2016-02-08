
struct SecPadding : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var none: SecPadding { get }
  static var PKCS1: SecPadding { get }
  static var OAEP: SecPadding { get }
  static var sigRaw: SecPadding { get }
  static var PKCS1MD2: SecPadding { get }
  static var PKCS1MD5: SecPadding { get }
  static var PKCS1SHA1: SecPadding { get }
  static var PKCS1SHA224: SecPadding { get }
  static var PKCS1SHA256: SecPadding { get }
  static var PKCS1SHA384: SecPadding { get }
  static var PKCS1SHA512: SecPadding { get }
}
@available(watchOS 2.0, *)
func SecKeyGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
let kSecPrivateKeyAttrs: CFString
@available(watchOS 2.0, *)
let kSecPublicKeyAttrs: CFString
@available(watchOS 2.0, *)
func SecKeyGeneratePair(parameters: CFDictionary, _ publicKey: UnsafeMutablePointer<SecKey?>, _ privateKey: UnsafeMutablePointer<SecKey?>) -> OSStatus
@available(watchOS 2.0, *)
func SecKeyRawSign(key: SecKey, _ padding: SecPadding, _ dataToSign: UnsafePointer<UInt8>, _ dataToSignLen: Int, _ sig: UnsafeMutablePointer<UInt8>, _ sigLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(watchOS 2.0, *)
func SecKeyRawVerify(key: SecKey, _ padding: SecPadding, _ signedData: UnsafePointer<UInt8>, _ signedDataLen: Int, _ sig: UnsafePointer<UInt8>, _ sigLen: Int) -> OSStatus
@available(watchOS 2.0, *)
func SecKeyEncrypt(key: SecKey, _ padding: SecPadding, _ plainText: UnsafePointer<UInt8>, _ plainTextLen: Int, _ cipherText: UnsafeMutablePointer<UInt8>, _ cipherTextLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(watchOS 2.0, *)
func SecKeyDecrypt(key: SecKey, _ padding: SecPadding, _ cipherText: UnsafePointer<UInt8>, _ cipherTextLen: Int, _ plainText: UnsafeMutablePointer<UInt8>, _ plainTextLen: UnsafeMutablePointer<Int>) -> OSStatus
@available(watchOS 2.0, *)
func SecKeyGetBlockSize(key: SecKey) -> Int
