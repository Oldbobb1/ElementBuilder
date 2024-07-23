import UIKit


public class TableView {
    public  static func tableView(frame: CGRect?, style: UITableView.Style?, backgroundColor: UIColor? = nil,clipsToBounds: Bool? = nil ) -> UITableView {
        let tableView = UITableView(frame: frame ?? .none, style: style ?? .none)
        tableView.backgroundColor = backgroundColor 
        tableView.showsVerticalScrollIndicator = false
        tableView.clipsToBounds = clipsToBounds ?? false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }
}
