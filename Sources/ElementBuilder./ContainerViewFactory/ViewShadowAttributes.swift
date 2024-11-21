import UIKit

// Structure for customizing UIView shadows.
public struct ViewShadowAttributes {
    
    //Shade Color
    var shadowColor: CGColor?
    
    // Shadow shifting.
    var shadowOffset: CGSize?
    
    //Shadow Transparency.
    var shadowOpacity: Float?
    
    //Shadow blur radius.
    var shadowRadius: CGFloat?
    
    // Initializer of the structure for setting the UIView shadows.
    /// - Parameters:
    ///   - shadowColor: Shade Color
    ///   - shadowOffset: Shadow shifting.
    ///   - shadowOpacity:Shadow Transparency.
    ///   - shadowRadius: Shadow blur radius.
    public init (
        shadowColor: CGColor? = nil,
        shadowOffset: CGSize? = nil,
        shadowOpacity: Float? = nil,
        shadowRadius: CGFloat? = nil
    ){
        self.shadowColor = shadowColor
        self.shadowOffset =  shadowOffset
        self.shadowOpacity = shadowOpacity
        self.shadowRadius = shadowRadius
    }
}
