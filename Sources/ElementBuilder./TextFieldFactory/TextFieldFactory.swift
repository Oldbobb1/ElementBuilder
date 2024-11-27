import UIKit

// Factory for creating and customizing `UITextField`.
public struct TextFieldFactory {
    
    // Creates and customizes the `UITextField` text field.
    /// - Parameters:
    /// - appearanceProperties: Parameters for the appearance of the text field.
    /// - shadowStyle: Parameters for customizing the shadows of the text field.
    /// - Returns: A customized instance of `UITextField`.
    public static func makeTextField(
        appearanceProperties: TextFieldAppearanceProperties? = nil,
        shadowAttributes: ShadowAttributes? = nil
    ) -> UITextField {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.autocorrectionType = .yes
        
        // Customize the appearance.
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
        
        // Customizing shadows.
        if let shadow = shadowAttributes {
            textField.layer.shadowColor = shadow.shadowColor
            textField.layer.shadowOffset = shadow.shadowOffset ?? .zero
            textField.layer.shadowOpacity = shadow.shadowOpacity ?? 0
            textField.layer.shadowRadius = shadow.shadowRadius ?? 0
        }
        return textField
    }
}
