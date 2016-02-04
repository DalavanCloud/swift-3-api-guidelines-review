
@available(OSX 10.10, *)
class NCWidgetListViewController : NSViewController {
  @IBOutlet weak var delegate: @sil_weak NCWidgetListViewDelegate!
  var contents: [AnyObject]!
  var minimumVisibleRowCount: Int
  var hasDividerLines: Bool
  var editing: Bool
  var showsAddButtonWhenEditing: Bool
  func viewControllerAtRow(row: Int, makeIfNecessary makeIfNecesary: Bool) -> NSViewController!
  func rowForViewController(viewController: NSViewController!) -> Int
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
protocol NCWidgetListViewDelegate : NSObjectProtocol {
  @available(OSX 10.10, *)
  func widgetList(list: NCWidgetListViewController!, viewControllerForRow row: Int) -> NSViewController!
  @available(OSX 10.10, *)
  optional func widgetListPerformAddAction(list: NCWidgetListViewController!)
  @available(OSX 10.10, *)
  optional func widgetList(list: NCWidgetListViewController!, shouldReorderRow row: Int) -> Bool
  @available(OSX 10.10, *)
  optional func widgetList(list: NCWidgetListViewController!, didReorderRow row: Int, toRow newIndex: Int)
  @available(OSX 10.10, *)
  optional func widgetList(list: NCWidgetListViewController!, shouldRemoveRow row: Int) -> Bool
  @available(OSX 10.10, *)
  optional func widgetList(list: NCWidgetListViewController!, didRemoveRow row: Int)
}