import UIKit

// Structure for customizing the appearance of the UIView.
public struct ViewAppearanceAttributes {
    
    var backgroundColor: UIColor?    //backgroundColor
    var cornerRadius: CGFloat?    //Corner rounding radius.
    
    // Structure initializer to customize the appearance of the UIView.
    /// - Parameters:
    ///   - cornerRadius: Corner rounding radius.
    ///   - backgroundColor:backgroundColor
    public init (
        backgroundColor: UIColor? = nil,
        cornerRadius: CGFloat? = nil
    ) {
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
    }
}
