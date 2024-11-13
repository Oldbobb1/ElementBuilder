import UIKit

public struct LabelFactory {
    
    public  static func makeLabel(
        textAttributes: LabelTextAttributes? = nil,
        styleAttributes: LabelStyleAttributes? = nil
    ) -> UILabel {
        let label = UILabel()
        
        if let textAttributes = textAttributes {
            label.text = textAttributes.text
            label.textColor = textAttributes.textColor
            label.textAlignment = textAttributes.textAlignment ?? .center
            label.font = UIFont.systemFont(ofSize: textAttributes.fontSize ?? 15, weight: textAttributes.weight ?? .bold )
            label.numberOfLines = textAttributes.numberOfLines ?? .zero
        }
        
        if let styleAttributes = styleAttributes {
            label.backgroundColor = styleAttributes.backgroundColor
            label.clipsToBounds = styleAttributes.clipsToBounds ?? false
            label.layer.cornerRadius = styleAttributes.cornerRadius ?? 0
        }
        return label
    }
}
