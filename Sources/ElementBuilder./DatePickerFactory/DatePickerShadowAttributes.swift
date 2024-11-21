import UIKit

// Structure for customizing DatePicker shadows.
public struct DatePickerShadowAttributes {
    
    // Specifies whether to crop the content outside the `UIDatePicker` borders.
    var clipsToBounds: Bool?
    
    //Shade Color
    var shadowColor: CGColor?
    
    // Shadow shifting.
    var shadowOffset: CGSize?
    
    //Shadow Transparency.
    var shadowOpacity: Float?
    
    //Shadow blur radius.
    var shadowRadius: CGFloat?
    
    // Initializer for setting the parameters of the shadow `UIDatePicker`.
    /// - Parameters:
    /// - clipsToBounds: Specifies whether to crop the content along the borders.
    /// - shadowColor: The color of the shadow.
    /// - shadowOffset: The offset of the shadow.
    /// - shadowOpacity: The transparency of the shadow.
    /// - shadowRadius: The shadow's blurring radius.
    public init(
        clipsToBounds: Bool? = nil,
        shadowColor: CGColor? = nil,
        shadowOffset: CGSize? = nil,
        shadowOpacity: Float? = nil,
        shadowRadius: CGFloat? = nil
    ){
        self.clipsToBounds = clipsToBounds
        self.shadowColor = shadowColor
        self.shadowOffset = shadowOffset
        self.shadowOpacity  = shadowOpacity
        self.shadowRadius = shadowRadius
    }
}
