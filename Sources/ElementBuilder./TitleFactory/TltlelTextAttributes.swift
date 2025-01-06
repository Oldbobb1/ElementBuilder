import UIKit

// Structure for customizing the `UILabel` text.
public struct TitleTextAttributes {
    
    var text: String?    // Label text.
    var fontSize: CGFloat?   // Font size.
    var weight: UIFont.Weight?   // Font weight (e.g. `.bold`, `.regular`).
    var textColor: UIColor?   // Label text color.
    var textAlignment: NSTextAlignment?  // Text alignment.
    var numberOfLines: Int?   // Number of lines in the label.
    
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









