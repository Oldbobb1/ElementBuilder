import UIKit

//  MARK: - TextFieldAppearance
//  Structure for configuring visual properties of a text field.

public struct TextFieldAppearance {
    var backgroundColor: UIColor?  //  The background color of the text field.
    var cornerRadius: CGFloat?  //  The corner radius of the text field.
    var font: UIFont?  //  The font of the text field's text.
    var clipsToBounds: Bool?  //  A Boolean value that determines whether subviews are confined to the bounds of the view.
    var contentMode: UIView.ContentMode?  //  The way the text field's content is adjusted to fit the view’s bounds.

    //  Initializes a new instance of `TextFieldAppearance`.
    //  Parameters:
    //  - cornerRadius: The corner radius of the text field. Default value is `nil`.
    //  - backgroundColor: The background color of the text field. Default value is `nil`.
    //  - font: The font of the text field's text. Default value is `nil`.
    //  - clipsToBounds: A Boolean value that determines whether subviews are confined to the bounds of the view. Default value is `nil`.
    //  - contentMode: The way the text field's content is adjusted to fit the view’s bounds. Default value is `nil`.

    public init(
        backgroundColor: UIColor? = nil,
        cornerRadius: CGFloat? = nil,
        font: UIFont? = nil,
        clipsToBounds: Bool? = nil,
        contentMode: UIView.ContentMode? = nil
    ) {
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        self.font = font
        self.clipsToBounds = clipsToBounds
        self.contentMode = contentMode
    }
}
