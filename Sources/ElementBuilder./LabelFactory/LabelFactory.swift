import UIKit

//Factory for creating and customizing "UILabel"
public struct LabelFactory {
    /// Creates and customizes `UILabel`.
    /// - Parameters:
    /// - textAttributes: Label text attributes.
    /// - styleAttributes: Attributes the label's style.
    /// - Returns: A customized instance of `UILabel`.
    public  static func makeLabel(
        textAttributes: LabelTextAttributes? = nil,
        styleAttributes: LabelStyleAttributes? = nil
    ) -> UILabel {
        
        let label = UILabel()
        // Text customization.
        if let textAttributes = textAttributes {
            label.text = textAttributes.text
            label.textColor = textAttributes.textColor
            label.textAlignment = textAttributes.textAlignment ?? .center
            label.font = UIFont.systemFont(ofSize: textAttributes.fontSize ?? 15, weight: textAttributes.weight ?? .bold )
            label.numberOfLines = textAttributes.numberOfLines ?? .zero
        }
        // Style setting.
        if let styleAttributes = styleAttributes {
            label.backgroundColor = styleAttributes.backgroundColor
            label.clipsToBounds = styleAttributes.clipsToBounds ?? false
            label.layer.cornerRadius = styleAttributes.cornerRadius ?? 0
        }
        return label
    }
}



