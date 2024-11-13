import UIKit

public struct ShadowStyle {
    var color: CGColor?
    var offset: CGSize?
    var opacity: Float?
    var radius: CGFloat?
    
    init(
        color: CGColor? = nil,
        offset: CGSize? = nil,
        opacity: Float? = nil,
        radius: CGFloat? = nil
    ) {
        self.color = color
        self.offset = offset
        self.opacity = opacity
        self.radius = radius
    }
}
