import UIKit

// Structure for customizing the appearance of the DatePicker.
public struct DatePickerAppearanceAttributes {
    
    var datePickerMode: UIDatePicker.Mode?   // `UIDatePicker` display mode.
    var preferredDatePickerStyle: UIDatePickerStyle?  // Preferred `UIDatePicker` display style.
    var cornerRadius: CGFloat?   // Corner rounding radius for `UIDatePicker`
    var masksToBounds: Bool?   // Specifies whether the contents of `UIDatePicker` should be trimmed along its borders.
    var backgroundColor: UIColor?      //backgroundColor
    var clipsToBounds: Bool?   // Specifies whether to crop the content outside the `UIDatePicker` borders.
    
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
        self.backgroundColor = backgroundColor
        self.clipsToBounds = clipsToBounds
    }
}
