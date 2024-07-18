//  Label.swift

//  Created by Bobbi R. on 11.07.24.

import UIKit

public class Label {
    public  static func label(text: String, fontSize: CGFloat, weight: UIFont.Weight, textColor: UIColor?,textAlignment: NSTextAlignment, numberOfLines: Int? = nil,backgroundColor: UIColor? = nil ,clipsToBounds: Bool? = nil,cornerRadius: CGFloat? = nil ) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = textColor
        label.textAlignment = textAlignment
        label.font = UIFont.systemFont(ofSize: fontSize, weight: weight )
        label.numberOfLines = numberOfLines ?? 0
        label.backgroundColor = backgroundColor
        label.clipsToBounds = clipsToBounds ?? false
        label.layer.cornerRadius = cornerRadius ?? 0
        return label
    }
}

