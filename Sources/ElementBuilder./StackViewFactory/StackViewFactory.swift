import UIKit

public struct StackViewFactory {
    
    public  static func makeStackView(
        configuration: StackViewConfiguration? = nil,
        style: StackViewStyle? = nil
    ) -> UIStackView {
        let stackView = UIStackView()
        stackView.isLayoutMarginsRelativeArrangement = true
        
        if let config = configuration {
            stackView.axis = config.axis ?? .horizontal
            stackView.distribution = config.distribution ?? .fillEqually
            stackView.backgroundColor = config.backgroundColor
        }
        
        if let style = style {
            stackView.layer.cornerRadius = style.cornerRadius ?? 0
            stackView.spacing = style.spacing ?? .zero
            stackView.layoutMargins = style.layoutMargins ?? .zero
        }
        return stackView
    }
}



    

