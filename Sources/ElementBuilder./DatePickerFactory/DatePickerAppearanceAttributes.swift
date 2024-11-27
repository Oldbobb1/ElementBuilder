import UIKit

// Structure for customizing the appearance of the DatePicker.
public struct DatePickerAppearanceAttributes {
    
    // `UIDatePicker` display mode.
       /// - Possible values:
       /// - `time`: Time only.
       /// - `date`: Date only.
       /// - `dateAndTime`: Date and time.
       /// - `countDownTimer`: Countdown timer.
    var datePickerMode: UIDatePicker.Mode?
    
    // Preferred `UIDatePicker` display style.
        /// - Possible values:
        /// - `wheels`: Wheel style.
        /// - `compact`: Compact style.
        /// - `inline`: Built-in style.
    var preferredDatePickerStyle: UIDatePickerStyle?
    
    /// Corner rounding radius for `UIDatePicker`
    var cornerRadius: CGFloat?
    
    // Specifies whether the contents of `UIDatePicker` should be trimmed along its borders.
    var masksToBounds: Bool?
    
    //backgroundColor
    var backgroundColor: UIColor?
    
    // Specifies whether to crop the content outside the `UIDatePicker` borders.
    var clipsToBounds: Bool?
    
    // Initializer for specifying the appearance of `UIDatePicker`.
       /// - Parameters:
       /// - datePickerMode: The display mode of the `UIDatePicker`.
       /// - preferredDatePickerStyle: The preferred display style.
       /// - cornerRadius: Corner rounding radius.
       /// - masksToBounds: Specifies whether to crop the content to borders.
       /// - backgroundColor: Background color.
       /// - clipsToBounds: Specifies whether to crop the content along the borders.
    public init(
        datePickerMode: UIDatePicker.Mode? = nil,
        preferredDatePickerStyle: UIDatePickerStyle? = nil,
        cornerRadius: CGFloat? = nil,
        masksToBounds: Bool? = nil,
        backgroundColor: UIColor? = nil,
        clipsToBounds: Bool? = nil
    ){
        self.datePickerMode = datePickerMode
        self.preferredDatePickerStyle = preferredDatePickerStyle
        self.cornerRadius = cornerRadius
        self.masksToBounds = masksToBounds
        self.backgroundColor =  backgroundColor
        self.clipsToBounds = clipsToBounds
    }
}
