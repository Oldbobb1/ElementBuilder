// ButtonsWithAction.swift

//  Created by Bobbi R. on 11.07.24.

import UIKit

public class ButtonsWithAction {

public static func makeButton(setTitle: String? = nil, cornerRadius: CGFloat? = nil, content: UIControl.ContentHorizontalAlignment? = nil, setTitleColor: UIColor? = nil, font: UIFont? = nil, configuration: UIButton.Configuration? = nil, clipsToBounds: Bool? = nil, backgroundColor: UIColor? = nil, systemName: String? = nil,setImage: UIImage? = nil, imageSize: CGSize? = nil,alpha: Double? = nil) -> UIButton {
    let button = UIButton(type: .system)
    button.setTitle(setTitle, for: .normal)
    button.setTitleColor(setTitleColor, for: .normal)
    button.layer.cornerRadius = cornerRadius ?? 0
    button.contentHorizontalAlignment = content ?? .center
    button.clipsToBounds = clipsToBounds ?? true
    button.titleLabel?.font = font
    button.configuration = configuration
    button.backgroundColor = backgroundColor ?? .systemBackground
    
    if let systemName = systemName {
        let image = setImage ?? UIImage(systemName: systemName)
        if let image = image {
//            let newSize = CGSize(width: 65, height: 60)
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
    
//    public static func createSwitchButton(isOn: Bool) -> UISwitch {
//        let switchButton = UISwitch()
//        switchButton.isOn = isOn
//        return switchButton
//    }
}
