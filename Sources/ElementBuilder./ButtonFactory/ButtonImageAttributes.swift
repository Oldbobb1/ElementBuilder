import UIKit

public struct ButtonImageAttributes {
    var systemName: String?
    var setImage: UIImage?
    var imageSize: CGSize?
    var alpha: Double?
    var tintColor: UIColor?
    var width: Int?
    var height: Int?
    
    init(
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
