// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

public class Label {
    public  static func label(text: String, fontSize: CGFloat, weight: UIFont.Weight, textColor: UIColor?,textAlignment: NSTextAlignment ) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = textColor
        label.textAlignment = textAlignment
        label.font = UIFont.systemFont(ofSize: fontSize, weight: weight )
        label.numberOfLines = 0
        return label
    }
}
