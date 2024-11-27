import UIKit

// Factory for creating buttons and switches.
public struct ButtonFactory {
    
    // Creates a button with the given attributes.
        /// - Parameters:
        /// - appearanceAttributes: Attributes of the button's appearance.
        /// - shadowAttributes: Attributes of the button's shadow.
        /// - imageAttributes: Attributes of the button image.
        /// - Returns: A customized instance of `UIButton`.
    public static func makeButton(
        appearanceAttributes: ButtonAppearanceAttributes? = nil,
        shadowAttributes: ShadowAttributes? = nil,
        imageAttributes: ButtonImageAttributes? = nil
    ) -> UIButton {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        // Applying appearance attributes.
        if let appearance = appearanceAttributes {
            button.setTitle(appearance.setTitle, for: .normal)
            button.setTitleColor(appearance.setTitleColor, for: .normal)
            button.layer.cornerRadius = appearance.cornerRadius ?? 0
            button.contentHorizontalAlignment = appearance.contentHorizontalAlignment ?? .center
            button.clipsToBounds = appearance.clipsToBounds ?? true
            button.titleLabel?.font = appearance.font
            button.configuration = appearance.configuration
            button.backgroundColor = appearance.backgroundColor ?? .systemBackground
            button.tag = appearance.tag ?? .zero
        }
        // Applying shadow attributes.
        if let shadow = shadowAttributes {
            button.layer.shadowColor = shadow.shadowColor
            button.layer.shadowOffset = shadow.shadowOffset ?? .zero
            button.layer.shadowOpacity = shadow.shadowOpacity ?? 0
            button.layer.shadowRadius = shadow.shadowRadius ?? 0
        }
        // Applying image attributes.
        if let imageAttr = imageAttributes {
            button.tintColor = imageAttr.tintColor
            if let systemName = imageAttr.systemName {
                let image = imageAttr.setImage ?? UIImage(systemName: systemName)
                if let image = image {
                    let newSize = imageAttr.imageSize ?? CGSize(width: imageAttr.width ?? 65, height: imageAttr.height ?? 60)
                    UIGraphicsBeginImageContext(newSize)
                    image.draw(in: CGRect(origin: .zero, size: newSize))
                    let newImage = UIGraphicsGetImageFromCurrentImageContext()
                    UIGraphicsEndImageContext()
                    button.setImage(newImage, for: .normal)
                    button.alpha = imageAttr.alpha ?? 1.0
                }
            } else if let setImage = imageAttr.setImage {
                button.setImage(setImage, for: .normal)
                button.alpha = imageAttr.alpha ?? 1.0
            }
        }
        return button
    }
    
    // Creates a switch (`UISwitch`) with the specified parameters.
     /// - Parameters:
     /// - isOn: The state of the switch (on or off).
     /// - onTintColor: The color of the active state.
     /// - Returns: The customized instance of `UISwitch`.
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
