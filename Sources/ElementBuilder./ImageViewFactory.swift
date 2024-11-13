import UIKit

public struct ImageViewFactory { 
    
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


