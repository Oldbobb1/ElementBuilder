import UIKit

//  MARK: - ButtonImageAttributes
//  Structure for configuring image properties of a button.

public struct ButtonImageAttributes {
    var setImage: UIImage?  //  The custom image to be set in the button.
    var systemName: String?  //  The system name of the SF Symbol to be used in the button.
    var tintColor: UIColor?  //  The tint color for the image.
    var alpha: Double?  //  The alpha value for the image.
    var imageSize: CGSize?  //  The size of the image.
    var width: Int?  //  The width of the image.
    var height: Int?  //  The height of the image.

    //  Initializes a new instance of `ButtonImageAttributes`.
    //  Parameters:
    //  - setImage: The custom image to be set in the button. Default value is `nil`.
    //  - systemName: The system name of the SF Symbol to be used in the button. Default value is `nil`.
    //  - tintColor: The tint color for the image. Default value is `nil`.
    //  - alpha: The alpha value for the image. Default value is `nil`.
    //  - imageSize: The size of the image. Default value is `nil`.
    //  - width: The width of the image. Default value is `nil`.
    //  - height: The height of the image. Default value is `nil`.

    public init(
        setImage: UIImage? = nil,
        systemName: String? = nil,
        tintColor: UIColor? = nil,
        alpha: Double? = nil,
        imageSize: CGSize? = nil,
        width: Int? = nil,
        height: Int? = nil
    ) {
        self.setImage = setImage
        self.systemName = systemName
        self.tintColor = tintColor
        self.alpha = alpha
        self.imageSize = imageSize
        self.width = width
        self.height = height
    }
}
