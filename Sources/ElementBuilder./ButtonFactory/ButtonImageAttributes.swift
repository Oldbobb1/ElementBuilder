import UIKit

// Structure for customizing the button image.
public struct ButtonImageAttributes {
    
    var systemName: String?      //The name of the system image.
    var setImage: UIImage?     // Custom Image.
    var imageSize: CGSize?      //Image size
    var alpha: Double?      //Image Transparency.
    var tintColor: UIColor?   // The fill color of the image.
    var width: Int?   //Image width
    var height: Int?       //Image height
    
    // Initializer of the structure to configure the button image.
    /// - Parameters:
    ///   - systemName: The name of the system image.
    ///   - setImage: Custom Image.
    ///   - imageSize: Image size.
    ///   - alpha: Image Transparency.
    ///   - tintColor: The fill color of the image.
    ///   - width: Image width.
    ///   - height:Image height.
    public init(
        systemName: String? = nil,
        setImage: UIImage? = nil,
        imageSize: CGSize? = nil,
        alpha: Double? = nil,
        tintColor: UIColor? = nil,
        width: Int? = nil,
        height: Int? = nil
    ) {
        self.systemName = systemName
        self.setImage = setImage
        self.imageSize = imageSize
        self.alpha = alpha
        self.tintColor = tintColor
        self.width = width
        self.height = height
    }
}
