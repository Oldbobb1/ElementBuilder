import UIKit

public struct ViewAppearanceAttributes {
    var backgroundColor: UIColor?
    var cornerRadius: CGFloat?
    
    public init (
        backgroundColor: UIColor? = nil,
        cornerRadius: CGFloat? = nil
    ) {
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
    }
}
