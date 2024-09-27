import UIKit


public class StackView {
    
    public  static func stackView(
        axis: NSLayoutConstraint.Axis,
        distribution: UIStackView.Distribution? = nil,
        backgroundColor: UIColor? = nil,
        cornerRadius: CGFloat? = nil,
        spacing: CGFloat,
        layoutMargins: UIEdgeInsets? = nil
    ) -> UIStackView {
            
        let stackView = UIStackView()
        
        stackView.axis = axis
        stackView.distribution = distribution ?? .fillEqually
        stackView.backgroundColor = backgroundColor
        stackView.layer.cornerRadius = cornerRadius ?? 0
        stackView.spacing = spacing
        stackView.layoutMargins = layoutMargins ?? .zero
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.isLayoutMarginsRelativeArrangement = true
       
        
        return stackView
    }
    
}


    

