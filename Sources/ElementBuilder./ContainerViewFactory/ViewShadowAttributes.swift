import UIKit

public struct ViewShadowAttributes {
    var shadowColor: CGColor?
    var shadowOffset: CGSize?
    var shadowOpacity: Float?
    var shadowRadius: CGFloat?
    
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
