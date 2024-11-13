import UIKit

public struct LabelTextAttributes {
    var text: String?
    var fontSize: CGFloat?
    var weight: UIFont.Weight?
    var textColor: UIColor?
    var textAlignment: NSTextAlignment?
    var numberOfLines: Int?
    
    public init (
        text: String? = nil,
        fontSize: CGFloat? = nil,
        weight: UIFont.Weight? = nil,
        textColor: UIColor? = nil,
        textAlignment: NSTextAlignment? = nil,
        numberOfLines: Int? = nil
    ) {
        self.text = text
        self.fontSize = fontSize
        self.weight = weight
        self.textColor = textColor
        self.textAlignment = textAlignment
        self.numberOfLines = numberOfLines
    }
}
