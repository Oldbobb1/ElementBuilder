import UIKit

public struct ButtonAppearanceAttributes {
    var setTitle: String?
    var cornerRadius: CGFloat?
    var contentHorizontalAlignment: UIControl.ContentHorizontalAlignment?
    var setTitleColor: UIColor?
    var font: UIFont?
    var configuration: UIButton.Configuration?
    var clipsToBounds: Bool?
    var backgroundColor: UIColor?
    var tag: Int?
    
    init(
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
