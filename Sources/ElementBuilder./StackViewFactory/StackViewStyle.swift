import UIKit

// Structure for customizing the `UIStackView` style.
public struct StackViewStyle {
    
    // Corner rounding radius.
    var cornerRadius: CGFloat?
    
    // Distance between elements in the stack.
    var spacing: CGFloat?
    
    // Internal layout margins for the stack.
    var layoutMargins: UIEdgeInsets?
    
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
