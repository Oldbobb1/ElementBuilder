import UIKit

public struct StackViewStyle {
    var cornerRadius: CGFloat?
    var spacing: CGFloat?
    var layoutMargins: UIEdgeInsets?
    
    public init (
        cornerRadius: CGFloat? = nil,
        spacing: CGFloat? = nil,
        layoutMargins: UIEdgeInsets? = nil
    ) {
        self.cornerRadius = cornerRadius
        self.spacing = spacing
        self.layoutMargins = layoutMargins
    }
}
