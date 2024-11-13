import UIKit

public struct TextFieldAppearanceProperties {
    var  placeholder: String?
    var  cornerRadius: CGFloat?
    var  font: UIFont?
    var  backgroundColor: UIColor?
    var  clipsToBounds: Bool?
    var contentMode: UIView.ContentMode?
    
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
