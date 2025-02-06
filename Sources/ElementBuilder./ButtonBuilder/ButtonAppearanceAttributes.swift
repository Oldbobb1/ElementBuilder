import UIKit

//  MARK: - ButtonAppearanceAttributes
//  Structure for configuring appearance properties of a button.

public struct ButtonAppearanceAttributes {
    var setTitle: String?  //  The title text of the button.
    var setTitleColor: UIColor?  //  The color of the button's title text.
    var font: UIFont?  //  The font of the button's title text.
    var configuration: UIButton.Configuration?  //  The configuration of the button.
    var backgroundColor: UIColor?  //  The background color of the button.
    var cornerRadius: CGFloat?  //  The corner radius of the button.
    var clipsToBounds: Bool?  //  A Boolean value that determines whether subviews are confined to the bounds of the button.
    var contentHorizontalAlignment: UIControl.ContentHorizontalAlignment?  //  The horizontal alignment of the button's content.
    var tag: Int?  //  The tag value of the button.

    //  Initializes a new instance of `ButtonAppearanceAttributes`.
    //  Parameters:
    //  - setTitle: The title text of the button. Default value is `nil`.
    //  - setTitleColor: The color of the button's title text. Default value is `nil`.
    //  - font: The font of the button's title text. Default value is `nil`.
    //  - configuration: The configuration of the button. Default value is `nil`.
    //  - backgroundColor: The background color of the button. Default value is `nil`.
    //  - cornerRadius: The corner radius of the button. Default value is `nil`.
    //  - clipsToBounds: A Boolean value that determines whether subviews are confined to the bounds of the button. Default value is `nil`.
    //  - contentHorizontalAlignment: The horizontal alignment of the button's content. Default value is `nil`.
    //  - tag: The tag value of the button. Default value is `nil`.

    public init(
        setTitle: String? = nil,
        setTitleColor: UIColor? = nil,
        font: UIFont? = nil,
        configuration: UIButton.Configuration? = nil,
        backgroundColor: UIColor? = nil,
        cornerRadius: CGFloat? = nil,
        clipsToBounds: Bool? = nil,
        contentHorizontalAlignment: UIControl.ContentHorizontalAlignment? = nil,
        tag: Int? = nil
    ) {
        self.setTitle = setTitle
        self.setTitleColor = setTitleColor
        self.font = font
        self.configuration = configuration
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        self.clipsToBounds = clipsToBounds
        self.contentHorizontalAlignment = contentHorizontalAlignment
        self.tag = tag
    }
}
