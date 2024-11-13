import UIKit

public struct LabelStyleAttributes {
    var backgroundColor: UIColor?
    var clipsToBounds: Bool?
    var cornerRadius: CGFloat?
    
    init(
        backgroundColor: UIColor? = nil,
        clipsToBounds: Bool? = nil,
        cornerRadius: CGFloat? = nil
    ) {
        self.backgroundColor = backgroundColor
        self.clipsToBounds = clipsToBounds
        self.cornerRadius =  cornerRadius
    }
}
