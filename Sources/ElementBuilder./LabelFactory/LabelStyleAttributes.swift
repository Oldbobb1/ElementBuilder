import UIKit

// Structure for customizing the style of the UILabel.
public struct LabelStyleAttributes {
    
    // Label background color.
    var backgroundColor: UIColor?
    
    // Specifies whether to crop the content outside the label layer boundaries.
    var clipsToBounds: Bool?
    
    // Rounding radius of the label corners.
    var cornerRadius: CGFloat?
    
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
        self.cornerRadius =  cornerRadius
    }
}



