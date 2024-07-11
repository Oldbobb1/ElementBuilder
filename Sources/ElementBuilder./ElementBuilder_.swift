// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

public class ButtonsWithAction {
    
    public static  func createButtonWithdAction(setTitle: String, cornerRadius: CGFloat?, content: UIControl.ContentHorizontalAlignment ) -> UIButton {
        let but = UIButton(type: .system)
        but.setTitle(setTitle, for: .normal)
        but.setTitleColor(.label, for: .normal)
        but.layer.cornerRadius = cornerRadius ?? 0
        but.contentHorizontalAlignment = content
        but.clipsToBounds = true
        but.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        return but
    }
    
    public static  func addButtonWithAction(setTitle: String) -> UIButton {
        let but = UIButton(type: .system)
        but.setTitle(setTitle, for: .normal)
        but.setTitleColor(.label, for: .normal)
        but.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        but.configuration = .plain()
        return but
    }
    // MARK: - функция с установкой размеров для изображения.
    public static func createButtonWithSystemImage(systemName: String, setImage: UIImage?) -> UIButton {
        let button = UIButton(type: .system)
        let image = setImage ?? UIImage(systemName: systemName)
        let newSize = CGSize(width: 65, height: 60)
        UIGraphicsBeginImageContext(newSize)
        image?.draw(in: CGRect(origin: .zero, size: newSize))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        button.setImage(newImage, for: .normal)
        button.alpha = 0.5
        button.layer.cornerRadius = 360
        return button
    }
    
//    public static func createSwitchButton(isOn: Bool) -> UISwitch {
//        let switchButton = UISwitch()
//        switchButton.isOn = isOn
//        return switchButton
//    }
}


public class Label {
    public  static func label(text: String, fontSize: CGFloat, weight: UIFont.Weight, textColor: UIColor?,textAlignment: NSTextAlignment ) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = textColor
        label.textAlignment = textAlignment
        label.font = UIFont.systemFont(ofSize: fontSize, weight: weight )
        label.numberOfLines = 0
        return label
    }
}

public class TextField {
    public static func textField(placeholder: String ) -> UITextField {
        let textField = UITextField()
        textField.placeholder = placeholder
        textField.attributedPlaceholder = NSAttributedString(string: placeholder,attributes: [NSAttributedString.Key.foregroundColor: UIColor.label] )
        textField.borderStyle = .roundedRect
        textField.autocorrectionType = .yes
        textField.layer.cornerRadius = 10
        textField.font = UIFont.systemFont(ofSize: 15)
        return textField
    }
}

public class StackView {
    public  static func stackView() -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }
}

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

public class Image {
    public  static  func image(_ named: String,cornerRadius: CGFloat, contentMode: UIView.ContentMode ) -> UIImageView {
        let imageView = UIImageView()
        imageView.image = UIImage(named:named)
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = cornerRadius
        imageView.contentMode = contentMode
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }
}
