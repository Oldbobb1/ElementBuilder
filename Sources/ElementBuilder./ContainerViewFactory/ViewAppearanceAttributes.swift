import UIKit

public struct ViewAppearanceAttributes {
    var backgroundColor: UIColor?
    var cornerRadius: CGFloat?
    
    init (
        backgroundColor: UIColor? = nil,
        cornerRadius: CGFloat? = nil
    ) {
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
    }
}
