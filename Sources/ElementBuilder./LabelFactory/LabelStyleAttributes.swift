import UIKit

// Structure for customizing the style of the UILabel.
public struct LabelStyleAttributes {
    
    var backgroundColor: UIColor?  // Label background color.
    var clipsToBounds: Bool?  // Specifies whether to crop the content outside the label layer boundaries.
    var cornerRadius: CGFloat?   // Rounding radius of the label corners.
    
    // Initializer for setting the label style.
    /// - Parameters:
    /// - backgroundColor: BackgroundColor.
    /// - clipsToBounds: Flag for content clipping.
    /// - cornerRadius: Rounding radius.
    public init(
        backgroundColor: UIColor? = nil,
        clipsToBounds: Bool? = nil,
        cornerRadius: CGFloat? = nil
    ) {
        self.backgroundColor = backgroundColor
        self.clipsToBounds = clipsToBounds
        self.cornerRadius = cornerRadius
    }
}



