import UIkit

public class DatePicker {
    public static func datePicker(datePickerMode: UIDatePicker.Mode? = nil, preferredDatePickerStyle: UIDatePickerStyle? = nil, cornerRadius: CGFloat? = nil, masksToBounds: Bool? = nil, backgroundColor: UIColor? = nil, clipsToBounds: Bool? = nil, shadowColor: CGColor? = nil, shadowOffset: CGSize? = nil, shadowOpacity: Float? = nil, shadowRadius: CGFloat? = nil) -> UIDatePicker {
        
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = datePickerMode ?? .time
        datePicker.preferredDatePickerStyle = preferredDatePickerStyle ?? .wheels
        datePicker.layer.cornerRadius = cornerRadius ?? 0
        datePicker.layer.masksToBounds = masksToBounds ?? false
        datePicker.backgroundColor = backgroundColor ?? .systemBackground
        datePicker.clipsToBounds = clipsToBounds ?? false
        datePicker.layer.shadowColor = shadowColor
        datePicker.layer.shadowOffset = CGSize(width: 0, height: 0)
        datePicker.layer.shadowOpacity = shadowOpacity ?? 0
        datePicker.layer.shadowRadius = shadowRadius ?? 0
        return datePicker
    }
}
