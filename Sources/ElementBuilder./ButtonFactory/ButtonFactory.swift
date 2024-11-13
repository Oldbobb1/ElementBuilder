import UIKit

public struct ButtonFactory {
    
    public static func makeButton(
        appearanceAttributes: ButtonAppearanceAttributes? = nil,
        shadowAttributes: ButtonShadowAttributes? = nil,
        imageAttributes: ButtonImageAttributes? = nil
    ) -> UIButton {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        if let appearance = appearanceAttributes {
            button.setTitle(appearance.setTitle, for: .normal)
            button.setTitleColor(appearance.setTitleColor, for: .normal)
            button.layer.cornerRadius = appearance.cornerRadius ?? 0
            button.contentHorizontalAlignment = appearance.contentHorizontalAlignment ?? .center
            button.clipsToBounds = appearance.clipsToBounds ?? true
            button.titleLabel?.font = appearance.font
            button.configuration = appearance.configuration
            button.backgroundColor = appearance.backgroundColor ?? .systemBackground
            button.tag = appearance.tag ?? .zero
        }
        
        if let shadow = shadowAttributes {
            button.layer.shadowColor = shadow.shadowColor
            button.layer.shadowOffset = shadow.shadowOffset ?? .zero
            button.layer.shadowOpacity = shadow.shadowOpacity ?? 0
            button.layer.shadowRadius = shadow.shadowRadius ?? 0
        }
        
        if let imageAttr = imageAttributes {
            button.tintColor = imageAttr.tintColor
            if let systemName = imageAttr.systemName {
                let image = imageAttr.setImage ?? UIImage(systemName: systemName)
                if let image = image {
                    let newSize = imageAttr.imageSize ?? CGSize(width: imageAttr.width ?? 65, height: imageAttr.height ?? 60)
                    UIGraphicsBeginImageContext(newSize)
                    image.draw(in: CGRect(origin: .zero, size: newSize))
                    let newImage = UIGraphicsGetImageFromCurrentImageContext()
                    UIGraphicsEndImageContext()
                    button.setImage(newImage, for: .normal)
                    button.alpha = imageAttr.alpha ?? 1.0
                }
            } else if let setImage = imageAttr.setImage {
                button.setImage(setImage, for: .normal)
                button.alpha = imageAttr.alpha ?? 1.0
            }
        }
        return button
    }
    
    public static func makeSwitchButton(
        isOn: Bool,
        onTintColor: UIColor? = nil
    ) -> UISwitch {
        let switchButton = UISwitch()
        switchButton.isOn = isOn
        switchButton.onTintColor = onTintColor
        return switchButton
    }
}


//public static func makeButton(
//   setTitle: String? = nil,
//   cornerRadius: CGFloat? = nil,
//   content: UIControl.ContentHorizontalAlignment? = nil,
//   setTitleColor: UIColor? = nil,
//   font: UIFont? = nil,
//   configuration: UIButton.Configuration? = nil,
//   clipsToBounds: Bool? = nil,
//   backgroundColor: UIColor? = nil,
//   systemName: String? = nil,
//   setImage: UIImage? = nil,
//   imageSize: CGSize? = nil,
//   alpha: Double? = nil,
//   shadowColor: CGColor? = nil,
//   shadowOffset: CGSize? = nil,
//   shadowOpacity: Float? = nil,
//   shadowRadius: CGFloat? = nil,
//   imagePadding: CGFloat? = nil,
//   tag: Int? = nil,
//   tintColor: UIColor? = nil
//) -> UIButton {
//   let button = UIButton(type: .system)
//   button.setTitle(setTitle, for: .normal)
//   button.setTitleColor(setTitleColor, for: .normal)
//   button.layer.cornerRadius = cornerRadius ?? 0
//   button.contentHorizontalAlignment = content ?? .center
//   button.clipsToBounds = clipsToBounds ?? true
//   button.titleLabel?.font = font
//   button.configuration = configuration
//   button.backgroundColor = backgroundColor ?? .systemBackground
//   button.tag = tag ?? .zero
//   button.tintColor = tintColor
//   button.layer.shadowColor = shadowColor
//   button.layer.shadowOffset = shadowOffset ?? .zero
//   button.layer.shadowOpacity = shadowOpacity ?? 0
//   button.layer.shadowRadius = shadowRadius ?? 0
//   button.translatesAutoresizingMaskIntoConstraints = false
//   
//   if let systemName = systemName {
//      let image = setImage ?? UIImage(systemName: systemName)
//      if let image = image {
//         let newSize = imageSize ?? CGSize(width: 65, height: 60)
//         UIGraphicsBeginImageContext(newSize)
//         image.draw(in: CGRect(origin: .zero, size: newSize))
//         let newImage = UIGraphicsGetImageFromCurrentImageContext()
//         UIGraphicsEndImageContext()
//         button.setImage(newImage, for: .normal)
//         button.alpha = alpha ?? 0
//      }
//   } else if let setImage = setImage {
//      button.setImage(setImage, for: .normal)
//   }
//   return button
//}











  

