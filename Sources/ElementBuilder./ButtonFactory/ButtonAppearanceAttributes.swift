import UIKit

// Structure for customizing the appearance of the button.
public struct ButtonAppearanceAttributes {
    
    // button text
    var setTitle: String?
    
    //Corner rounding radius.
    var cornerRadius: CGFloat?
    
    // Horizontal alignment of the content.
    var contentHorizontalAlignment: UIControl.ContentHorizontalAlignment?
    
    // text color
    var setTitleColor: UIColor?
    
    //text font
    var font: UIFont?
    
    //button configuration
    var configuration: UIButton.Configuration?
    
    //flag to trim the content beyond the boundaries.
    var clipsToBounds: Bool?
    
    //backgroundColor
    var backgroundColor: UIColor?
    
    // button tag.
    var tag: Int?
    
    // Structure initializer to customize the appearance of the button.
    /// - Parameters:
    ///   - setTitle: button text.
    ///   - cornerRadius: Corner rounding radius.
    ///   - contentHorizontalAlignment: Horizontal alignment of the content.
    ///   - setTitleColor: text color
    ///   - font: text font
    ///   - configuration: button configuration
    ///   - clipsToBounds: flag to trim the content beyond the boundaries.
    ///   - backgroundColor:backgroundColor
    ///   - tag:  button tag.
    public init(
        setTitle: String? = nil,
        cornerRadius: CGFloat? = nil,
        contentHorizontalAlignment: UIControl.ContentHorizontalAlignment? = nil,
        setTitleColor: UIColor? = nil,
        font: UIFont? = nil,
        configuration: UIButton.Configuration? = nil,
        clipsToBounds: Bool? = nil,
        backgroundColor: UIColor? = nil,
        tag: Int? = nil
    ) {
        self.setTitle = setTitle
        self.cornerRadius = cornerRadius
        self.contentHorizontalAlignment = contentHorizontalAlignment
        self.setTitleColor = setTitleColor
        self.font = font
        self.configuration = configuration
        self.clipsToBounds = clipsToBounds
        self.backgroundColor = backgroundColor
        self.tag = tag
    }
}
