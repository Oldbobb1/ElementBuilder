import UIKit

//Factory for creating conteiner "UIView"
public struct ContainerViewFactory {
    
    // Creates and customizes the `UIView`.
       /// - Parameters:
       /// - appearanceAttributes: Attributes of the UIView appearance.
       /// - shadowAttributes: Attributes of the UIView shadow.
       /// - Returns: The customized instance of `UIView`.
    public static func makeContainerView(
        appearanceAttributes: ViewAppearanceAttributes? = nil,
        shadowAttributes: ShadowAttributes? = nil
    ) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
       
        // Applying appearance attributes.
        if let appearance = appearanceAttributes {
            view.backgroundColor = appearance.backgroundColor
            view.layer.cornerRadius = appearance.cornerRadius ?? 0
        }
        
        // Applying shadow attributes.
        if let shadow = shadowAttributes {
            view.layer.shadowColor = shadow.shadowColor
            view.layer.shadowOffset = shadow.shadowOffset ?? .zero
            view.layer.shadowOpacity = shadow.shadowOpacity ?? 0
            view.layer.shadowRadius = shadow.shadowRadius ?? 0
        }
        return view
    }
}
