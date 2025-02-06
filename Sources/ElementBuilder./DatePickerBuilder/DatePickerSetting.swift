import UIKit

//  MARK: - DatePickerSetting
//  Structure for configuring the appearance of a date picker.

public struct DatePickerSetting {
    var datePickerMode: UIDatePicker.Mode?  //  The mode of the date picker.
    var preferredDatePickerStyle: UIDatePickerStyle?  //  The preferred style for the date picker.
    var backgroundColor: UIColor?  //  The background color of the date picker.
    var cornerRadius: CGFloat?  //  The corner radius of the date picker.
    var clipsToBounds: Bool?  //  A Boolean value that determines whether subviews are confined to the bounds of the view.
    var masksToBounds: Bool?  //  A Boolean value that determines whether subviews are confined to the bounds of the view.

    //  Initializes a new instance of `DatePickerSetting`.
    //  Parameters:
    //  - datePickerMode: The mode of the date picker. Default value is `nil`.
    //  - preferredDatePickerStyle: The preferred style for the date picker. Default value is `nil`.
    //  - backgroundColor: The background color of the date picker. Default value is `nil`.
    //  - cornerRadius: The corner radius of the date picker. Default value is `nil`.
    //  - clipsToBounds: A Boolean value that determines whether subviews are confined to the bounds of the view. Default value is `nil`.
    //  - masksToBounds: A Boolean value that determines whether subviews are confined to the bounds of the view. Default value is `nil`.

    public init(
        datePickerMode: UIDatePicker.Mode? = nil,
        preferredDatePickerStyle: UIDatePickerStyle? = nil,
        backgroundColor: UIColor? = nil,
        cornerRadius: CGFloat? = nil,
        clipsToBounds: Bool? = nil,
        masksToBounds: Bool? = nil
    ) {
        self.datePickerMode = datePickerMode
        self.preferredDatePickerStyle = preferredDatePickerStyle
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        self.clipsToBounds = clipsToBounds
        self.masksToBounds = masksToBounds
    }
}
