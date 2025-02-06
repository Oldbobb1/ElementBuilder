import UIKit

//  MARK: - ImageViewBuilder
//  Builder for creating and configuring `UIImageView` objects.

public struct ImageViewBuilder {

    //  Creates and configures a `UIImageView` object with the specified settings.
    //  - Parameter viewSetting: An object containing image view settings. Default value is `nil`.
    //  - Returns: A configured `UIImageView` object.

    public static func imageAndSystemImage(
        _ imageViewSetting: ImageViewSetting? = nil
    ) -> UIImageView {
        let image = UIImageView()
        if let named = imageViewSetting?.named {
            image.image = UIImage(named: named)
        } else if let systemName = imageViewSetting?.systemName {
            image.image = UIImage(systemName: systemName)
            image.tintColor = imageViewSetting?.tintColor
        }
        image.layer.cornerRadius = imageViewSetting?.cornerRadius ?? 0
        image.clipsToBounds = imageViewSetting?.clipsToBounds ?? true
        image.contentMode = imageViewSetting?.contentMode ?? .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }
}
