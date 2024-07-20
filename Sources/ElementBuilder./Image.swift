import UIKit

public class Image {
    public  static  func image(_ named: String,cornerRadius: CGFloat, contentMode: UIView.ContentMode, clipsToBounds: Bool? = nil ) -> UIImageView {
        let imageView = UIImageView()
        imageView.image = UIImage(named:named)
        imageView.clipsToBounds = clipsToBounds ?? true
        imageView.layer.cornerRadius = cornerRadius
        imageView.contentMode = contentMode
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }
}
