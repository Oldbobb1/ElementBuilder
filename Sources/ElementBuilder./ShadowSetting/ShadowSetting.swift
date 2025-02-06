import UIKit

//  MARK: - ShadowSetting
//  Structure for configuring shadow properties of a view.

public struct ShadowSetting {
    var shadowColor: CGColor?  //  The color of the shadow.
    var shadowOffset: CGSize?  //  The offset of the shadow.
    var shadowOpacity: Float?  //  The opacity of the shadow.
    var shadowRadius: CGFloat?  //  The radius of the shadow.

    //  Initializes a new instance of `ShadowSetting`.
    //  - Parameters:
    //  - shadowColor: The color of the shadow. Default value is `nil`.
    //  - shadowOffset: The offset of the shadow. Default value is `nil`.
    //  - shadowOpacity: The opacity of the shadow. Default value is `nil`.
    //  - shadowRadius: The radius of the shadow. Default value is `nil`.

    public init(
        shadowColor: CGColor? = nil,
        shadowOffset: CGSize? = nil,
        shadowOpacity: Float? = nil,
        shadowRadius: CGFloat? = nil
    ) {
        self.shadowColor = shadowColor
        self.shadowOffset = shadowOffset
        self.shadowOpacity = shadowOpacity
        self.shadowRadius = shadowRadius
    }
}
