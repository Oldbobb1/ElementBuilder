import UIKit

public struct ContainerViewFactory {
    
    public static func makeContainerView(
        appearanceAttributes: ViewAppearanceAttributes? = nil,
        shadowAttributes: ViewShadowAttributes? = nil
    ) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        if let appearance = appearanceAttributes {
            view.backgroundColor = appearance.backgroundColor
            view.layer.cornerRadius = appearance.cornerRadius ?? 0
        }
        
        if let shadow = shadowAttributes {
            view.layer.shadowColor = shadow.shadowColor
            view.layer.shadowOffset = shadow.shadowOffset ?? .zero
            view.layer.shadowOpacity = shadow.shadowOpacity ?? 0
            view.layer.shadowRadius = shadow.shadowRadius ?? 0
        }
        return view
    }
}
