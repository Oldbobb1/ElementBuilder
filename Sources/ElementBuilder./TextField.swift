import UIKit


public class TextField {
    
    public static func textField(
        placeholder: String,
        cornerRadius: CGFloat? = nil,
        font: UIFont? = nil,
        backgroundColor: UIColor? = nil,
        clipsToBounds: Bool? = nil,
        contentMode: UIView.ContentMode? = nil,
        shadowColor: CGColor? = nil,
        shadowOffset: CGSize? = nil,
        shadowOpacity: Float? = nil,
        shadowRadius: CGFloat? = nil
    ) -> UITextField {
        
        let textField = UITextField()
        textField.placeholder = placeholder
        textField.attributedPlaceholder = NSAttributedString(string: placeholder,attributes: [NSAttributedString.Key.foregroundColor: UIColor.label] )
        textField.borderStyle = .roundedRect
        textField.autocorrectionType = .yes
        textField.layer.cornerRadius = cornerRadius ?? 0
        textField.backgroundColor = backgroundColor
        textField.font = font
        textField.clipsToBounds = clipsToBounds ?? false
        textField.contentMode = contentMode ?? .scaleAspectFill
        textField.layer.shadowColor = shadowColor
        textField.layer.shadowOffset = shadowOffset ?? .zero
        textField.layer.shadowOpacity = shadowOpacity ?? 0
        textField.layer.shadowRadius =  shadowRadius ?? 0
        return textField
    }
}
