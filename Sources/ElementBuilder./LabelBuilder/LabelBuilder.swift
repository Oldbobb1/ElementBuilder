import UIKit

//  MARK: - LabelBuilder
//  Builder for creating and configuring `UILabel` objects.

public struct LabelBuilder {

    //  Creates and configures a `UILabel` object with the specified settings.
    //  - Parameters:
    //  - viewSetting: An object containing label appearance settings. Default value is `nil`.
    //  - textInputSetting: An object containing text input settings for the label. Default value is `nil`.
    //  - Returns: A configured `UILabel` object.

    public static func label(
        _ textInputSetting: TextInputSetting? = nil,
        _ labelSetting: LabelSetting? = nil
    ) -> UILabel {
        let label = UILabel()
        if let textInputSetting = textInputSetting {
            label.text = textInputSetting.text
            label.textColor = textInputSetting.textColor
            label.textAlignment = textInputSetting.textAlignment ?? .center
            label.font = UIFont.systemFont(
                ofSize: textInputSetting.fontSize ?? 10,
                weight: textInputSetting.weight ?? .bold
            )
            label.numberOfLines = textInputSetting.numberOfLines ?? 0
        }
        if let labelSetting = labelSetting {
            label.backgroundColor = labelSetting.backgroundColor
            label.layer.cornerRadius = labelSetting.cornerRadius ?? 0
            label.clipsToBounds = labelSetting.clipsToBounds ?? false
        }
        return label
    }
}
