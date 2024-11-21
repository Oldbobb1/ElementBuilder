import UIKit

// Structure for setting the `UIStackView` configuration.
public struct StackViewConfiguration {
    
    /// Axis for placing elements in `UIStackView` (horizontal or vertical).
    var axis: NSLayoutConstraint.Axis?
    
    // Distribution of elements inside `UIStackView`.
    var distribution: UIStackView.Distribution?
    
    // Background color of the stack.
    var backgroundColor: UIColor?
    
    // Initializer for configuration settings.
    /// - Parameters:
    /// - axis: Axis of placement (`.horizontal` or `.vertical`).
    /// - distribution: Element distribution (`.fillEqually`, `.fill`, etc.).
    /// - backgroundColor: Background color.
    public init (
        axis: NSLayoutConstraint.Axis? = nil,
        distribution: UIStackView.Distribution? = nil,
        backgroundColor: UIColor? = nil
    ) {
        self.axis = axis
        self.distribution = distribution
        self.backgroundColor = backgroundColor
    }
}

