import UIKit

public struct DatePickerShadowAttributes {
    var clipsToBounds: Bool?
    var shadowColor: CGColor?
    var shadowOffset: CGSize?
    var shadowOpacity: Float?
    var shadowRadius: CGFloat?
    
    init(
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
