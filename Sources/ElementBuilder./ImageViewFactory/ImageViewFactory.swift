import UIKit

// A factory for creating customizable `UIImageView`.
public struct ImageViewFactory {
    
    // Creates a customizable `UIImageView` with an image from application resources.
      /// - Parameters:
      /// - named: Name of the image available in the resources.
      /// - cornerRadius: The radius of corner rounding. The default is `nil`, which means no rounding.
      /// - contentMode: The content display mode. The default is `.scaleAspectFit`.
      /// - clipsToBounds: Determines whether the image content is cropped outside the borders. The default is `true`.
      /// - Returns: The customized instance of `UIImageView`.
    public  static  func makeImage(
        _ named: String,
        cornerRadius: CGFloat? = nil,
        contentMode: UIView.ContentMode? = nil,
        clipsToBounds: Bool? = nil
    ) -> UIImageView {
        let imageView = UIImageView()
        imageView.image = UIImage(named:named)
        imageView.clipsToBounds = clipsToBounds ?? true
        imageView.layer.cornerRadius = cornerRadius ?? 0
        imageView.contentMode = contentMode ?? .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }
    
    // Creates a customizable `UIImageView` with the system image.
       /// - Parameters:
       /// - systemName: The name of the system image (SF Symbols).
       /// - tintColor: The color to be applied to the system image. The default is `nil`, which means to use the default color.
       /// - contentMode: The mode in which the content will be displayed. The default is `.scaleAspectFit`.
       /// - Returns: The customized instance of `UIImageView`.
    public  static func makeSystemImageViews(
        systemName:String,
        tintColor: UIColor? = nil,
        contentMode: UIView.ContentMode? = nil
    ) -> UIImageView {
        let image = UIImageView()
        image.image = UIImage(systemName: systemName)
        image.tintColor = tintColor
        image.contentMode = contentMode ?? .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }
}
