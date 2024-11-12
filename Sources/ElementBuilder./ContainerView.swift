import UIKit


public class ContainerView {
    
    public static func containerView(
        backgroundColor: UIColor? = nil,
        cornerRadius: CGFloat? = nil,
        shadowColor: CGColor? = nil,
        shadowOffset: CGSize? = nil,
        shadowOpacity: Float? = nil,
        shadowRadius: CGFloat? = nil
    ) -> UIView {
        
        let View = UIView()
        View.backgroundColor = backgroundColor
        View.layer.cornerRadius = cornerRadius ?? 10
        View.translatesAutoresizingMaskIntoConstraints = false
        View.layer.shadowColor = shadowColor
        View.layer.shadowOffset = shadowOffset ?? .zero
        View.layer.shadowOpacity = 1
        View.layer.shadowRadius = 3
        return View
    }
}
