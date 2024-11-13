import UIKit

public struct DatePickerAppearanceAttributes {
    var datePickerMode: UIDatePicker.Mode?
    var preferredDatePickerStyle: UIDatePickerStyle?
    var cornerRadius: CGFloat?
    var masksToBounds: Bool?
    var backgroundColor: UIColor?
    
    public init(
        datePickerMode: UIDatePicker.Mode? = nil,
        preferredDatePickerStyle: UIDatePickerStyle? = nil,
        cornerRadius: CGFloat? = nil,
        masksToBounds: Bool? = nil,
        backgroundColor: UIColor? = nil
    ){
        self.datePickerMode = datePickerMode
        self.preferredDatePickerStyle = preferredDatePickerStyle
        self.cornerRadius = cornerRadius
        self.masksToBounds = masksToBounds
        self.backgroundColor =  backgroundColor
    }
}
