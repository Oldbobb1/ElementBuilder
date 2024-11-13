import UIKit

public struct TextFieldFactory {
    
    public static func makeTextField(
        appearanceProperties: TextFieldAppearanceProperties? = nil,
        shadowStyle: ShadowStyle? = nil
    ) -> UITextField {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.autocorrectionType = .yes
        
        if let appearance = appearanceProperties {
            textField.placeholder = appearance.placeholder
            textField.attributedPlaceholder = NSAttributedString(
                string: appearance.placeholder ?? "text",
                attributes: [NSAttributedString.Key.foregroundColor: UIColor.label]
            )
            textField.layer.cornerRadius = appearance.cornerRadius ?? 0
            textField.backgroundColor = appearance.backgroundColor
            textField.font = appearance.font
            textField.clipsToBounds = appearance.clipsToBounds ?? false
            textField.contentMode = appearance.contentMode ?? .scaleAspectFit
            textField.clipsToBounds = appearance.clipsToBounds ?? false
        }
        
        if let shadow = shadowStyle {
            textField.layer.shadowColor = shadow.color
            textField.layer.shadowOffset = shadow.offset ?? .zero
            textField.layer.shadowOpacity = shadow.opacity ?? 0
            textField.layer.shadowRadius = shadow.radius ?? 0
        }
        return textField
    }
}
