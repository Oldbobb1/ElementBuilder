import UIKit

// Structure for customizing the appearance of the UIView.
public struct ViewAppearanceAttributes {
    
    //backgroundColor
    var backgroundColor: UIColor?
    
    //Corner rounding radius.
    var cornerRadius: CGFloat?
    
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
