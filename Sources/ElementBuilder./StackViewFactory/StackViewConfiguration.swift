import UIKit

// Structure for setting the `UIStackView` configuration.
public struct StackViewConfiguration {
    
    var axis: NSLayoutConstraint.Axis?    // Axis for placing elements in `UIStackView` (horizontal or vertical).
    var distribution: UIStackView.Distribution? // Distribution of elements inside `UIStackView`.
    var backgroundColor: UIColor?  // Background color of the stack.
    
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

