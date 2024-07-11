// ButtonsWithAction.swift

//  Created by Bobbi R. on 11.07.24.

import UIKit

public class ButtonsWithAction {
    
    public static  func createButtonWithAction(setTitle: String, cornerRadius: CGFloat?, content: UIControl.ContentHorizontalAlignment ) -> UIButton {
        let but = UIButton(type: .system)
        but.setTitle(setTitle, for: .normal)
        but.setTitleColor(.label, for: .normal)
        but.layer.cornerRadius = cornerRadius ?? 0
        but.contentHorizontalAlignment = content
        but.clipsToBounds = true
        but.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        return but
    }
    
    public static  func makeButton(setTitle: String) -> UIButton {
        let but = UIButton(type: .system)
        but.setTitle(setTitle, for: .normal)
        but.setTitleColor(.label, for: .normal)
        but.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        but.configuration = .plain()
        return but
    }
    // MARK: - функция с установкой размеров для изображения.
    public static func createButtonWithSystemImage(systemName: String, setImage: UIImage?) -> UIButton {
        let button = UIButton(type: .system)
        let image = setImage ?? UIImage(systemName: systemName)
        let newSize = CGSize(width: 65, height: 60)
        UIGraphicsBeginImageContext(newSize)
        image?.draw(in: CGRect(origin: .zero, size: newSize))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        button.setImage(newImage, for: .normal)
        button.alpha = 0.5
        button.layer.cornerRadius = 360
        return button
    }
    
//    public static func createSwitchButton(isOn: Bool) -> UISwitch {
//        let switchButton = UISwitch()
//        switchButton.isOn = isOn
//        return switchButton
//    }
    
}
