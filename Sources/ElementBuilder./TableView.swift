//  TableView.swift

//  Created by Bobbi R. on 11.07.24.

import UIKit

public class TableView {
    public  static func tableView(frame: CGRect?, style: UITableView.Style?, backgroundColor: UIColor? ) -> UITableView {
        let tableView = UITableView(frame: frame ?? .null, style: style ?? .plain )
        tableView.backgroundColor = backgroundColor
        tableView.showsVerticalScrollIndicator = false
        tableView.clipsToBounds = true
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }
}
