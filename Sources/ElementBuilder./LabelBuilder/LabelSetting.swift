import UIKit

//  MARK: - LabelSetting
//  Structure for configuring the appearance of a label.

public struct LabelSetting {
    var backgroundColor: UIColor?  //  The background color of the label.
    var cornerRadius: CGFloat?  //  The corner radius of the label.
    var clipsToBounds: Bool?  //  A Boolean value that determines whether subviews are confined to the bounds of the view.

    //  Initializes a new instance of `LabelSetting`.
    //  Parameters:
    //  - backgroundColor: The background color of the label. Default value is `nil`.
    //  - cornerRadius: The corner radius of the label. Default value is `nil`.
    //  - clipsToBounds: A Boolean value that determines whether subviews are confined to the bounds of the view. Default value is `nil`.

    public init(
        backgroundColor: UIColor? = nil,
        cornerRadius: CGFloat? = nil,
        clipsToBounds: Bool? = nil
    ) {
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        self.clipsToBounds = clipsToBounds
    }
}
