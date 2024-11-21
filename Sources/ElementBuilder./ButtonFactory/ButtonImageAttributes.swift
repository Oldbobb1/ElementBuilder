import UIKit

// Structure for customizing the button image.
public struct ButtonImageAttributes {
    
    //The name of the system image.
    var systemName: String?
    
    // Custom Image.
    var setImage: UIImage?
    
    //Image size
    var imageSize: CGSize?
    
    //Image Transparency.
    var alpha: Double?
    
    // The fill color of the image.
    var tintColor: UIColor?
    
    //Image width
    var width: Int?
    
    //Image height
    var height: Int?
    
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
