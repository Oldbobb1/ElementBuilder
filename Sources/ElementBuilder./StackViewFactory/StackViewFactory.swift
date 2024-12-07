import UIKit

// Factory for creating and customizing `UIStackView`.
public struct StackViewFactory {
    // Creates and customizes `UIStackView` based on the passed parameters.
    /// - Parameters:
    /// - configuration: Axis, distribution, and background configuration.
    /// - style: Style parameters such as corner rounding, indentation, and spacing between elements.
    /// - Returns: A customized instance of `UIStackView`.
    public  static func makeStackView(
        configuration: StackViewConfiguration? = nil,
        style: StackViewStyle? = nil
    ) -> UIStackView {
        
        let stackView = UIStackView()
        stackView.isLayoutMarginsRelativeArrangement = true
        // Configuration setting.
        if let config = configuration {
            stackView.axis = config.axis ?? .horizontal
            stackView.distribution = config.distribution ?? .fillEqually
            stackView.backgroundColor = config.backgroundColor
        }
        // Customize style.
        if let style = style {
            stackView.layer.cornerRadius = style.cornerRadius ?? 0
            stackView.spacing = style.spacing ?? .zero
            stackView.layoutMargins = style.layoutMargins ?? .zero
        }
        return stackView
    }
}
