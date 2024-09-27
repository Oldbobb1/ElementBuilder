import UIKit


public class ButtonsWithAction {
    
    public static func makeButton(
        setTitle: String? = nil,
        cornerRadius: CGFloat? = nil,
        content: UIControl.ContentHorizontalAlignment? = nil,
        setTitleColor: UIColor? = nil,
        font: UIFont? = nil,
        configuration: UIButton.Configuration? = nil,
        clipsToBounds: Bool? = nil,
        backgroundColor: UIColor? = nil,
        systemName: String? = nil,
        setImage: UIImage? = nil,
        imageSize: CGSize? = nil,
        alpha: Double? = nil,
        shadowColor: CGColor? = nil,
        shadowOffset: CGSize? = nil,
        shadowOpacity: Float? = nil,
        shadowRadius: CGFloat? = nil,
        imagePadding: CGFloat? = nil,
        tag: Int? = nil,
        tintColor: UIColor? = nil
    ) -> UIButton {
        
        let button = UIButton(type: .system)
        
        button.setTitle(setTitle, for: .normal)
        button.setTitleColor(setTitleColor, for: .normal)
        button.layer.cornerRadius = cornerRadius ?? 0
        button.contentHorizontalAlignment = content ?? .center
        button.clipsToBounds = clipsToBounds ?? true
        button.titleLabel?.font = font
        button.configuration = configuration
        button.backgroundColor = backgroundColor ?? .systemBackground
        button.tag = tag ?? .zero
        button.tintColor = tintColor
        button.layer.shadowColor = shadowColor
        button.layer.shadowOffset = shadowOffset ?? .zero
        button.layer.shadowOpacity = shadowOpacity ?? 0
        button.layer.shadowRadius = shadowRadius ?? 0
        button.translatesAutoresizingMaskIntoConstraints = false
        
        if let systemName = systemName {
            let image = setImage ?? UIImage(systemName: systemName)
            if let image = image {
                let newSize = imageSize ?? CGSize(width: 65, height: 60)
                UIGraphicsBeginImageContext(newSize)
                image.draw(in: CGRect(origin: .zero, size: newSize))
                let newImage = UIGraphicsGetImageFromCurrentImageContext()
                UIGraphicsEndImageContext()
                button.setImage(newImage, for: .normal)
                button.alpha = alpha ?? 0
            }
        } else if let setImage = setImage {
            button.setImage(setImage, for: .normal)
        }
        return button
    }
    
    public static func createSwitchButton(isOn: Bool) -> UISwitch {
        let switchButton = UISwitch()
        switchButton.isOn = isOn
        return switchButton
    }
    
}




//public static func makeButton(
//    // Title properties
//    title: String? = nil,
//    titleColor: UIColor? = nil,
//    font: UIFont? = nil,
//    contentAlignment: UIControl.ContentHorizontalAlignment? = nil,
//
//    // Styling properties
//    cornerRadius: CGFloat? = nil,
//    clipsToBounds: Bool? = nil,
//    backgroundColor: UIColor? = nil,
//    configuration: UIButton.Configuration? = nil,
//    alpha: Double? = nil,
//
//    // Image properties
//    systemImageName: String? = nil,
//    customImage: UIImage? = nil,
//    imageSize: CGSize? = nil,
//    imagePadding: CGFloat? = nil,
//
//    // Shadow properties
//    shadowColor: CGColor? = nil,
//    shadowOffset: CGSize? = nil,
//    shadowOpacity: Float? = nil,
//    shadowRadius: CGFloat? = nil,
//
//    // Other properties
//    tag: Int = 0,
//    tintColor: UIColor? = nil
//) -> UIButton {
//
//    // Initialize button
//    let button = UIButton(type: .system)
//
//    // Set title and appearance
//    button.setTitle(title, for: .normal)
//    button.setTitleColor(titleColor, for: .normal)
//    button.titleLabel?.font = font
//    button.contentHorizontalAlignment = contentAlignment ?? .center
//    button.backgroundColor = backgroundColor ?? .systemBackground
//    button.configuration = configuration
//    button.alpha = alpha ?? 1.0
//
//    // Styling options
//    button.layer.cornerRadius = cornerRadius ?? 0
//    button.clipsToBounds = clipsToBounds ?? true
//    button.tag = tag
//    button.tintColor = tintColor
//    button.translatesAutoresizingMaskIntoConstraints = false
//
//    // Add shadow properties if provided
//    if let shadowColor = shadowColor {
//        button.layer.shadowColor = shadowColor
//        button.layer.shadowOffset = shadowOffset ?? .zero
//        button.layer.shadowOpacity = shadowOpacity ?? 0
//        button.layer.shadowRadius = shadowRadius ?? 0
//    }
//
//    // Set image properties (either system image or custom image)
//    if let systemImageName = systemImageName {
//        let image = customImage ?? UIImage(systemName: systemImageName)
//        if let image = image {
//            let resizedImage = resizeImage(image: image, targetSize: imageSize ?? CGSize(width: 65, height: 60))
//            button.setImage(resizedImage, for: .normal)
//        }
//    } else if let customImage = customImage {
//        button.setImage(customImage, for: .normal)
//    }
//
//    return button
//}
//
//// Helper function to resize the image
//private static func resizeImage(image: UIImage, targetSize: CGSize) -> UIImage {
//    UIGraphicsBeginImageContext(targetSize)
//    image.draw(in: CGRect(origin: .zero, size: targetSize))
//    let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
//    UIGraphicsEndImageContext()
//    return resizedImage ?? image
//}
