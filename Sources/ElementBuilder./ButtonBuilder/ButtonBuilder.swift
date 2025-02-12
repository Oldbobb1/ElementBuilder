import UIKit

//  MARK: - ButtonBuilder
//  Builder for creating and configuring `UIButton` objects.

public struct ButtonBuilder {

    //  Creates and configures a `UIButton` object with the specified settings.
    //  Parameters:
    //  - appearanceAttributes: An object containing appearance attributes for the button. Default value is `nil`.
    //  - shadowAttributes: An object containing shadow settings for the button. Default value is `nil`.
    //  - imageAttributes: An object containing image attributes for the button. Default value is `nil`.
    //  - Returns: A configured `UIButton` object.

    public static func buttonSystemAndButtonImage(
        _ buttonAppearanceAttributes: ButtonAppearanceAttributes? = nil,
        _ buttonImageAttributes: ButtonImageAttributes? = nil,
        _ shadowAttributes: ShadowSetting? = nil
    ) -> UIButton {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        // Applying appearance attributes.
        if let buttonAppearanceAttributes = buttonAppearanceAttributes {
            button.setTitle(
                buttonAppearanceAttributes.setTitle,
                for: .normal
            )
            button.setTitleColor(
                buttonAppearanceAttributes.setTitleColor,
                for: .normal
            )
            button.titleLabel?.font = buttonAppearanceAttributes.font
            button.configuration = buttonAppearanceAttributes.configuration
            button.backgroundColor =
                buttonAppearanceAttributes.backgroundColor ?? .systemBackground
            button.layer.cornerRadius =
                buttonAppearanceAttributes.cornerRadius ?? 0
            button.clipsToBounds =
                buttonAppearanceAttributes.clipsToBounds ?? true
            button.contentHorizontalAlignment =
                buttonAppearanceAttributes.contentHorizontalAlignment ?? .center
            button.tag = buttonAppearanceAttributes.tag ?? .zero
        }
        // Applying image attributes.
        if let buttonImageAttributes = buttonImageAttributes {
            button.tintColor = buttonImageAttributes.tintColor
            if let systemName = buttonImageAttributes.systemName {
                let image =
                    buttonImageAttributes.setImage
                    ?? UIImage(systemName: systemName)
                if let image = image {
                    let newSize =
                        buttonImageAttributes.imageSize
                        ?? CGSize(
                            width: buttonImageAttributes.width ?? 65,
                            height: buttonImageAttributes.height ?? 60
                        )
                    UIGraphicsBeginImageContext(newSize)
                    image.draw(
                        in: CGRect(
                            origin: .zero,
                            size: newSize
                        )
                    )
                    let newImage = UIGraphicsGetImageFromCurrentImageContext()
                    UIGraphicsEndImageContext()
                    button.setImage(
                        newImage,
                        for: .normal
                    )
                    button.alpha = buttonImageAttributes.alpha ?? 1.0
                }
            } else if let setImage = buttonImageAttributes.setImage {
                button.setImage(
                    setImage,
                    for: .normal
                )
                button.alpha = buttonImageAttributes.alpha ?? 1.0
            }
        }
        // Applying shadow attributes.
        if let shadow = shadowAttributes {
            button.layer.shadowColor = shadow.shadowColor
            button.layer.shadowOffset = shadow.shadowOffset ?? .zero
            button.layer.shadowOpacity = shadow.shadowOpacity ?? 0
            button.layer.shadowRadius = shadow.shadowRadius ?? 0
        }
        return button
    }

    //  Creates and configures a `UISwitch` object with the specified settings.
    //  Parameters:
    //  - isOn: A Boolean value that determines the initial state of the switch.
    //  - onTintColor: The color used to tint the appearance of the switch when it is turned on. Default value is `nil`.
    //  - Returns: A configured `UISwitch` object.

    public static func makeSwitchButton(
        isOn: Bool,
        onTintColor: UIColor? = nil
    ) -> UISwitch {
        let switchButton = UISwitch()
        switchButton.isOn = isOn
        switchButton.onTintColor = onTintColor
        return switchButton
    }
}











