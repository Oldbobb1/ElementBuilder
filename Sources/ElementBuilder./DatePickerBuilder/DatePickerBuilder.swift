import UIKit

//MARK: - DatePickerBuilder
//  Builder for creating and configuring `UIDatePicker` objects.

public struct DatePickerBuilder {

    //  Creates and configures a `UIDatePicker` object with the specified settings.
    //  Parameters:
    //  - viewSetting: An object containing date picker settings. Default value is `nil`.
    //  - shadowSetting: An object containing shadow settings. Default value is `nil`.
    //  - Returns: A configured `UIDatePicker` object.

    public static func datePicker(
        _ datePickerSetting: DatePickerSetting? = nil,
        _ shadowSetting: ShadowSetting? = nil
    ) -> UIDatePicker {
        let datePicker = UIDatePicker()
        if let datePickerSetting = datePickerSetting {
            datePicker.datePickerMode =
                datePickerSetting.datePickerMode ?? .time
            datePicker.preferredDatePickerStyle =
                datePickerSetting.preferredDatePickerStyle ?? .wheels
            datePicker.backgroundColor = datePickerSetting.backgroundColor
            datePicker.layer.cornerRadius = datePickerSetting.cornerRadius ?? 0
            datePicker.clipsToBounds = datePickerSetting.clipsToBounds ?? false
            datePicker.layer.masksToBounds =
                datePickerSetting.masksToBounds ?? false
        }
        if let shadowSetting = shadowSetting {
            datePicker.layer.shadowColor = shadowSetting.shadowColor
            datePicker.layer.shadowOffset = shadowSetting.shadowOffset ?? .zero
            datePicker.layer.shadowOpacity = shadowSetting.shadowOpacity ?? 0
            datePicker.layer.shadowRadius = shadowSetting.shadowRadius ?? 0
        }
        return datePicker
    }
}
