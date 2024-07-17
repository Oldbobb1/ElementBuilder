// TextField.swift

//  Created by Bobbi R. on 11.07.24.

import UIKit

public class TextField {
    public static func textField(placeholder: String, radius: CGFloat? = nil, font: UIFont? = nil, backgroundColor: UIColor? = nil, clipsToBounds: Bool? = nil ) -> UITextField {
        let textField = UITextField()
        textField.placeholder = placeholder
        textField.attributedPlaceholder = NSAttributedString(string: placeholder,attributes: [NSAttributedString.Key.foregroundColor: UIColor.label] )
        textField.borderStyle = .roundedRect
        textField.autocorrectionType = .yes
        textField.layer.cornerRadius = radius ?? 0
        textField.backgroundColor = backgroundColor
        textField.font = font
        textField.clipsToBounds = clipsToBounds ?? false
        return textField
    }
}


