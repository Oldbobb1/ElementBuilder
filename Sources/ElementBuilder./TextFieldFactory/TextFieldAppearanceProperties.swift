import UIKit

// Structure for customizing the appearance of the `UITextField` text field.
public struct TextFieldAppearanceProperties {

    var placeholder: String?   // Tooltip text (placeholder).
    var cornerRadius: CGFloat?  // Corner Rounding Radius.
    var font: UIFont?   // Text font.
    var backgroundColor: UIColor?  // Text field background color.
    var clipsToBounds: Bool?   // A property that specifies whether the sublayers of the text box are clipped outside its borders.
    var contentMode: UIView.ContentMode?   // Content display mode.
    
    // Initializer for specifying appearance parameters.
    /// - Parameters:
    /// - placeholder: Tooltip Text.
    /// - cornerRadius: Corner rounding radius.
    /// - font: Text font.
    /// - backgroundColor: Background color.
    /// - clipsToBounds: Content trimming.
    /// - contentMode: Content display mode.
    public init(
        placeholder: String? = nil,
        cornerRadius: CGFloat? = nil,
        font: UIFont? = nil,
        backgroundColor: UIColor? = nil,
        clipsToBounds: Bool? = nil,
        contentMode: UIView.ContentMode? = nil
    ) {
        self.placeholder = placeholder
        self.cornerRadius = cornerRadius
        self.font = font
        self.backgroundColor = backgroundColor
        self.clipsToBounds = clipsToBounds
        self.contentMode = contentMode
    }
}



