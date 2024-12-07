import UIKit

// Structure for customizing the appearance of the `UITextField` text field.
public struct TextFieldAppearanceProperties {
    
    // Tooltip text (placeholder).
    var  placeholder: String?
    
    // Corner Rounding Radius.
    var  cornerRadius: CGFloat?
    
    // Text font.
    var  font: UIFont?
    
    // Text field background color.
    var  backgroundColor: UIColor?
    
    // A property that specifies whether the sublayers of the text box are clipped outside its borders.
    var  clipsToBounds: Bool?
    
    // Content display mode.
    var contentMode: UIView.ContentMode?
    
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



