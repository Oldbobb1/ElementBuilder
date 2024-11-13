import UIKit

public struct DatePickerFactory {
    
    public static func makeDatePicker(
        appearanceAttributes: DatePickerAppearanceAttributes? = nil,
        shadowAttributes: DatePickerShadowAttributes? = nil
    ) -> UIDatePicker {
        let datePicker = UIDatePicker()
        
        if let appearance = appearanceAttributes {
            datePicker.datePickerMode = appearance.datePickerMode ?? .time
            datePicker.preferredDatePickerStyle = appearance.preferredDatePickerStyle ?? .wheels
            datePicker.layer.cornerRadius = appearance.cornerRadius ?? 0
            datePicker.layer.masksToBounds = appearance.masksToBounds ?? false
            datePicker.backgroundColor = appearance.backgroundColor
        }
        
        if let shadow = shadowAttributes {
            datePicker.clipsToBounds = shadow.clipsToBounds ?? false
            datePicker.layer.shadowColor = shadow.shadowColor
            datePicker.layer.shadowOffset =  shadow.shadowOffset ?? .zero
            datePicker.layer.shadowOpacity = shadow.shadowOpacity ?? 0
            datePicker.layer.shadowRadius = shadow.shadowRadius ?? 0
        }
        return datePicker
    }
}
