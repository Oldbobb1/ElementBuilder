import UIKit

//  MARK: - TextFieldBuilder
//  Builder for creating and configuring `UITextField` objects.

public struct TextFieldBuilder {

    //  Creates and configures a `UITextField` object with the specified settings.
    //  Parameters:
    //  - viewSettings: An object containing view appearance settings. Default value is `nil`.
    //  - textInputSettings: An object containing text input settings. Default value is `nil`.
    //  - shadowSetting: An object containing shadow settings. Default value is `nil`.
    //  - Returns: A configured `UITextField` object.

    public static func textField(
        _ textInputConfiguration: TextInputConfiguration? = nil,
        _ textFieldAppearance: TextFieldAppearance? = nil,
        _ shadowSetting: ShadowSetting? = nil
    ) -> UITextField {
        let textField = UITextField()
        if let textInputConfiguration = textInputConfiguration {
            textField.placeholder = textInputConfiguration.placeholder
            textField.attributedPlaceholder = NSAttributedString(
                string: textField.placeholder ?? "enter text",
                attributes: [
                    NSAttributedString.Key.foregroundColor:
                        textInputConfiguration
                        .placeholderTextColor ?? .label
                ])
            textField.textContentType =
                textInputConfiguration.textContentType ?? .name
            textField.keyboardType =
                textInputConfiguration.keyboardType ?? .default
            textField.autocapitalizationType =
                textInputConfiguration.autocapitalizationType ?? .none
            textField.spellCheckingType =
                textInputConfiguration.spellCheckingType ?? .no
            textField.enablesReturnKeyAutomatically =
                textInputConfiguration.enablesReturnKeyAutomatically ?? true
            textField.clearButtonMode =
                textInputConfiguration.clearButtonMode ?? .whileEditing
            textField.returnKeyType =
                textInputConfiguration.returnKeyType ?? .default
        }
        if let textFieldAppearance = textFieldAppearance {
            textField.backgroundColor = textFieldAppearance.backgroundColor
            textField.layer.cornerRadius = textFieldAppearance.cornerRadius ?? 0
            textField.font = textFieldAppearance.font
            textField.clipsToBounds = textFieldAppearance.clipsToBounds ?? false
            textField.contentMode =
                textFieldAppearance.contentMode ?? .scaleAspectFit
        }
        if let shadowSetting = shadowSetting {
            textField.layer.shadowColor = shadowSetting.shadowColor
            textField.layer.shadowOffset = shadowSetting.shadowOffset ?? .zero
            textField.layer.shadowOpacity = shadowSetting.shadowOpacity ?? 0
            textField.layer.shadowRadius = shadowSetting.shadowRadius ?? 0
        }
        return textField
    }
}


