import UIKit

//  MARK: - StackViewBuilder
//  Builder for creating and configuring `UIStackView` objects.

public struct StackViewBuilder {

    //  Creates and configures a `UIStackView` object with the specified settings.
    //  - Parameter viewSetting: An object containing stack view settings. Default value is `nil`.
    //  - Returns: A configured `UIStackView` object.

    public static func stackView(
        _ stackViewSetting: StackViewSetting? = nil
    ) -> UIStackView {
        let stackView = UIStackView()
        if let stackViewSetting = stackViewSetting {
            stackView.axis = stackViewSetting.axis ?? .horizontal
            stackView.spacing = stackViewSetting.spacing ?? 0
            stackView.layoutMargins = stackViewSetting.layoutMargins ?? .zero
            stackView.distribution =
                stackViewSetting.distribution ?? .fillEqually
            stackView.backgroundColor = stackViewSetting.backgroundColor
            stackView.layer.cornerRadius = stackViewSetting.cornerRadius ?? 0
        }
        return stackView
    }
}



