import UIKit

//  MARK: - ViewSetting
//  Structure for configuring visual properties of a view.

public struct ViewSetting {
    var backgroundColor: UIColor?  //  The background color of the view.
    var cornerRadius: CGFloat?  //   The corner radius of the view.

    //  Initializes a new instance of `ViewSetting`.
    //  Parameters:
    //  - backgroundColor: The background color of the view. Default value is `nil`.
    //  - cornerRadius: The corner radius of the view. Default value is `nil`.

    public init(
        backgroundColor: UIColor? = nil,
        cornerRadius: CGFloat? = nil
    ) {
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
    }
}
