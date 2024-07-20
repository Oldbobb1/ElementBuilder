import UIKit

public class StackView {
    public  static func stackView(axis: NSLayoutConstraint.Axis, distribution: UIStackView.Distribution? = nil, backgroundColor: UIColor? = nil, cornerRadius: CGFloat? = nil ) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: [])
        stackView.axis = axis
        stackView.distribution = distribution ?? .fillEqually
        stackView.backgroundColor = backgroundColor
        stackView.layer.cornerRadius = cornerRadius ?? 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }
}
