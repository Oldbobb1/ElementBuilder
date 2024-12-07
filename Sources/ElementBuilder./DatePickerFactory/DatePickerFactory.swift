import UIKit

//Factory for creating conteiner "DatePicker"
public struct DatePickerFactory {
    // Creates and customizes the `DatePicker`.
       /// - Parameters:
       /// - appearanceAttributes: Attributes of the DatePicker appearance.
       /// - shadowAttributes: Attributes of the DatePicker shadow.
       /// - Returns: The customized instance of `DatePicker`.
    public static func makeDatePicker(
        appearanceAttributes: DatePickerAppearanceAttributes? = nil,
        shadowAttributes: ShadowAttributes? = nil
    ) -> UIDatePicker {
        
        let datePicker = UIDatePicker()
        // Applying appearance attributes.
        if let appearance = appearanceAttributes {
            datePicker.datePickerMode = appearance.datePickerMode ?? .time
            datePicker.preferredDatePickerStyle = appearance.preferredDatePickerStyle ?? .wheels
            datePicker.layer.cornerRadius = appearance.cornerRadius ?? 0
            datePicker.layer.masksToBounds = appearance.masksToBounds ?? false
            datePicker.backgroundColor = appearance.backgroundColor
            datePicker.clipsToBounds = appearance.clipsToBounds ?? false
        }
        // Applying shadow attributes.
        if let shadow = shadowAttributes {
            datePicker.layer.shadowColor = shadow.shadowColor
            datePicker.layer.shadowOffset =  shadow.shadowOffset ?? .zero
            datePicker.layer.shadowOpacity = shadow.shadowOpacity ?? 0
            datePicker.layer.shadowRadius = shadow.shadowRadius ?? 0
        }
        return datePicker
    }
}
