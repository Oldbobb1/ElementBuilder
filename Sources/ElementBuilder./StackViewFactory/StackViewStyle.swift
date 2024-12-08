import UIKit

// Structure for customizing the `UIStackView` style.
public struct StackViewStyle {
    
    var cornerRadius: CGFloat?   // Corner rounding radius.
    var spacing: CGFloat?  // Distance between elements in the stack.
    var layoutMargins: UIEdgeInsets?  // Internal layout margins for the stack.
    
    // Initializer for setting the stack style.
    /// - Parameters:
    /// - cornerRadius: Corner Rounding Radius.
    /// - spacing: Distance between elements.
    /// - layoutMargins: Internal indents.
    public init (
        cornerRadius: CGFloat? = nil,
        spacing: CGFloat? = nil,
        layoutMargins: UIEdgeInsets? = nil
    ) {
        self.cornerRadius = cornerRadius
        self.spacing = spacing
        self.layoutMargins = layoutMargins
    }
}
