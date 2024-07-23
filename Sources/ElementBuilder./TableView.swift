import UIKit


public class TableView {
    public  static func tableView(frame: CGRect? = nil, style: UITableView.Style? = nil, backgroundColor: UIColor? = nil,clipsToBounds: Bool? = nil ) -> UITableView {
        let tableView = UITableView(frame: frame ?? .zero, style: style ?? .grouped)
        tableView.backgroundColor = backgroundColor
        tableView.showsVerticalScrollIndicator = false
        tableView.clipsToBounds = clipsToBounds ?? false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }
}
