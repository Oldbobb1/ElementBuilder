import UIKit

// Structure for customizing the shadow style UITextField.
public struct ShadowStyleTextField {
    
    // Shadow color.
    var color: CGColor?
    
    // Shadow offset relative to the original position.
    var offset: CGSize?
    
    // Shadow transparency (value from 0 to 1).
    var opacity: Float?
    
    // Radius of shadow blurring.
    var radius: CGFloat?
    
    // Initializer for setting the shadow parameters.
    /// - Parameters:
    /// - color: Color of the shadow.
    /// - offset: The offset of the shadow.
    /// - opacity: Shadow opacity.
    /// - radius: Radius of shadow blurring.
    public init(
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
