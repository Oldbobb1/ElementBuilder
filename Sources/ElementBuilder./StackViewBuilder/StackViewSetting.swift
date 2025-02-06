import UIKit

//  MARK: - StackViewSetting
//  Structure for configuring the appearance of a stack view.

public struct StackViewSetting {
    var axis: NSLayoutConstraint.Axis?  //  The axis along which the arranged views are laid out in the stack view.
    var spacing: CGFloat?  //  The spacing between arranged views in the stack view.
    var layoutMargins: UIEdgeInsets?  //  The layout margins for the stack view.
    var distribution: UIStackView.Distribution?  //  The distribution of the arranged views along the stack view’s axis.
    var backgroundColor: UIColor?  //  The background color of the stack view.
    var cornerRadius: CGFloat?  //  The corner radius of the stack view.

    //  Initializes a new instance of `StackViewSetting`.
    //  Parameters:
    //  - axis: The axis along which the arranged views are laid out in the stack view. Default value is `nil`.
    //  - spacing: The spacing between arranged views in the stack view. Default value is `nil`.
    //  - layoutMargins: The layout margins for the stack view. Default value is `nil`.
    //  - distribution: The distribution of the arranged views along the stack view’s axis. Default value is `nil`.
    //  - backgroundColor: The background color of the stack view. Default value is `nil`.
    //  - cornerRadius: The corner radius of the stack view. Default value is `nil`.

    public init(
        axis: NSLayoutConstraint.Axis? = nil,
        spacing: CGFloat? = nil,
        layoutMargins: UIEdgeInsets? = nil,
        distribution: UIStackView.Distribution? = nil,
        backgroundColor: UIColor? = nil,
        cornerRadius: CGFloat? = nil
    ) {
        self.axis = axis
        self.spacing = spacing
        self.layoutMargins = layoutMargins
        self.distribution = distribution
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
    }
}
