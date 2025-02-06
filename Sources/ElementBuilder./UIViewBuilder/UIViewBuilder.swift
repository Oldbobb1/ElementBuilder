import UIKit

//  MARK: - UIViewBuilder
//  Builder for creating and configuring `UIView` objects.

public struct UIViewBuilder {

    //  Creates and configures a `UIView` object with the specified settings.
    //  Parameters:
    //  - viewSetting: An object containing view settings. Default value is `nil`.
    //  - shadowSetting: An object containing shadow settings. Default value is `nil`.
    //  - Returns: A configured `UIView` object.

    public static func uiView(
        _ viewSetting: ViewSetting? = nil,
        _ shadowSetting: ShadowSetting? = nil
    ) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        if let viewSetting = viewSetting {
            view.backgroundColor = viewSetting.backgroundColor
            view.layer.cornerRadius = viewSetting.cornerRadius ?? 0
        }
        if let shadowSetting = shadowSetting {
            view.layer.shadowColor = shadowSetting.shadowColor
            view.layer.shadowOffset = shadowSetting.shadowOffset ?? .zero
            view.layer.shadowOpacity = shadowSetting.shadowOpacity ?? 0
            view.layer.shadowRadius = shadowSetting.shadowRadius ?? 0
        }
        return view
    }
}
