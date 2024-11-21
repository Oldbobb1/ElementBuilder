import UIKit

// Structure for customizing the `UILabel` text.
public struct LabelTextAttributes {
    
    // Label text.
    var text: String?
    
    // Font size.
    var fontSize: CGFloat?
    
    // Font weight (e.g. `.bold`, `.regular`).
    var weight: UIFont.Weight?
    
    // Label text color.
    var textColor: UIColor?
    
    // Text alignment.
    var textAlignment: NSTextAlignment?
    
    // Number of lines in the label.
    var numberOfLines: Int?
    
    // Initializer for setting the label text.
    /// - Parameters:
    /// - text: Label Text.
    /// - fontSize: Font size.
    /// - weight: Font weight.
    /// - textColor: Text color.
    /// - textAlignment: Text alignment.
    /// - numberOfLines: Number of lines.
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
