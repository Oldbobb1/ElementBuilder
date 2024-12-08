import UIKit

// Structure for customizing the shadow style.
public struct ShadowAttributes {
    
    var shadowColor: CGColor?   //Shade Color
    var shadowOffset: CGSize?   // Shadow shifting.
    var shadowOpacity: Float?    //Shadow Transparency.
    var shadowRadius: CGFloat?   //Shadow blur radius.
    
    // Initializer for setting the shadow parameters.
    /// - Parameters:
    /// - shadowColor: The color of the shadow.
    /// - shadowOffset: The offset of the shadow.
    /// - shadowOpacity: The transparency of the shadow.
    /// - shadowRadius: The shadow's blurring radius.
    public init(
        shadowColor: CGColor? = nil,
        shadowOffset: CGSize? = nil,
        shadowOpacity: Float? = nil,
        shadowRadius: CGFloat? = nil
    ){
        self.shadowColor = shadowColor
        self.shadowOffset = shadowOffset
        self.shadowOpacity = shadowOpacity
        self.shadowRadius = shadowRadius
    }
}




