import UIKit


public class Label {
    
    public  static func label(
        text: String? = nil,
        fontSize: CGFloat,
        weight: UIFont.Weight,
        textColor: UIColor? = nil,
        textAlignment: NSTextAlignment? = nil,
        numberOfLines: Int? = nil,
        backgroundColor: UIColor? = nil,
        clipsToBounds: Bool? = nil,
        cornerRadius: CGFloat? = nil
    ) -> UILabel {
        
        let label = UILabel()
        
        label.text = text
        label.textColor = textColor
        label.textAlignment = textAlignment ?? .natural
        label.font = UIFont.systemFont(ofSize: fontSize, weight: weight )
        label.numberOfLines = numberOfLines ?? 0
        label.backgroundColor = backgroundColor
        label.clipsToBounds = clipsToBounds ?? false
        label.layer.cornerRadius = cornerRadius ?? 0
        
        return label
    }
    
}

