import UIKit

public struct StackViewConfiguration {
    var axis: NSLayoutConstraint.Axis?
    var distribution: UIStackView.Distribution?
    var backgroundColor: UIColor?
    
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
