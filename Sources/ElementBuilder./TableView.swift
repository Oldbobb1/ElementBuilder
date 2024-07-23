import UIKit


public class TableView {
    public  static func tableView( backgroundColor: UIColor? = nil,clipsToBounds: Bool? = nil ) -> UITableView {
        let tableView = UITableView()
        tableView.backgroundColor = backgroundColor
        tableView.showsVerticalScrollIndicator = false
        tableView.clipsToBounds = clipsToBounds ?? false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }
}
