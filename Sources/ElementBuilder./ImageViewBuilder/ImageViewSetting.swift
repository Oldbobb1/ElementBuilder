import UIKit

//  MARK: - ImageViewSetting
//  Structure for configuring the appearance and properties of an image view.

public struct ImageViewSetting {
    var named: String?  //  The name of the image to be used from the asset catalog.
    var systemName: String?  //  The name of the system image to be used.
    var tintColor: UIColor?  //  The color used to tint the system image.
    var cornerRadius: CGFloat?  //  The corner radius of the image view.
    var clipsToBounds: Bool?  //  A Boolean value that determines whether subviews are confined to the bounds of the view.
    var contentMode: UIView.ContentMode?  //  The way the image view's content is adjusted to fit the view’s bounds.

    //  A Boolean value that indicates whether the settings are valid.
    //  The settings are valid if either `named` or `systemName` is set, but not both.
    var isValid: Bool {
        return (named != nil && systemName == nil)
            || (named == nil && systemName != nil)
    }

    //  Initializes a new instance of `ImageViewSetting`.
    //  Parameters:
    //  - named: The name of the image to be used from the asset catalog. Default value is `nil`.
    //  - systemName: The name of the system image to be used. Default value is `nil`.
    //  - tintColor: The color used to tint the system image. Default value is `nil`.
    //  - cornerRadius: The corner radius of the image view. Default value is `nil`.
    //  - clipsToBounds: A Boolean value that determines whether subviews are confined to the bounds of the view. Default value is `nil`.
    //  - contentMode: The way the image view's content is adjusted to fit the view’s bounds. Default value is `nil`.

    public init(
        named: String? = nil,
        systemName: String? = nil,
        tintColor: UIColor? = nil,
        cornerRadius: CGFloat? = nil,
        clipsToBounds: Bool? = nil,
        contentMode: UIView.ContentMode? = nil
    ) {
        self.named = named
        self.systemName = systemName
        self.tintColor = tintColor
        self.cornerRadius = cornerRadius
        self.clipsToBounds = clipsToBounds
        self.contentMode = contentMode
    }
}
