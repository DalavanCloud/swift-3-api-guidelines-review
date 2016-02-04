
@available(OSX 10.5, *)
class NSPathControl : NSControl {
  @available(OSX 10.10, *)
  var editable: Bool
  @available(OSX 10.10, *)
  var allowedTypes: [String]?
  @available(OSX 10.10, *)
  var placeholderString: String?
  @available(OSX 10.10, *)
  @NSCopying var placeholderAttributedString: NSAttributedString?
  @NSCopying var URL: NSURL?
  var doubleAction: Selector
  var pathStyle: NSPathStyle
  @available(OSX 10.10, *)
  var clickedPathItem: NSPathControlItem? { get }
  @available(OSX 10.10, *)
  var pathItems: [NSPathControlItem]
  @NSCopying var backgroundColor: NSColor?
  weak var delegate: @sil_weak NSPathControlDelegate?
  func setDraggingSourceOperationMask(mask: NSDragOperation, forLocal isLocal: Bool)
  var menu: NSMenu?
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
protocol NSPathControlDelegate : NSObjectProtocol {
  @available(OSX 10.10, *)
  optional func pathControl(pathControl: NSPathControl, shouldDragItem pathItem: NSPathControlItem, withPasteboard pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.5, *)
  optional func pathControl(pathControl: NSPathControl, shouldDragPathComponentCell pathComponentCell: NSPathComponentCell, withPasteboard pasteboard: NSPasteboard) -> Bool
  @available(OSX 10.5, *)
  optional func pathControl(pathControl: NSPathControl, validateDrop info: NSDraggingInfo) -> NSDragOperation
  @available(OSX 10.5, *)
  optional func pathControl(pathControl: NSPathControl, acceptDrop info: NSDraggingInfo) -> Bool
  @available(OSX 10.5, *)
  optional func pathControl(pathControl: NSPathControl, willDisplayOpenPanel openPanel: NSOpenPanel)
  @available(OSX 10.5, *)
  optional func pathControl(pathControl: NSPathControl, willPopUpMenu menu: NSMenu)
}
extension NSPathControl {
  func clickedPathComponentCell() -> NSPathComponentCell?
  func pathComponentCells() -> [NSPathComponentCell]
  func setPathComponentCells(cells: [NSPathComponentCell])
}