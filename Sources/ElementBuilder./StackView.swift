// StackView.swift

//  Created by Bobbi R. on 11.07.24.

import UIKit

public class StackView {
    public  static func stackView(axis: NSLayoutConstraint.Axis, distribution: UIStackView.Distribution? = nil) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: [])
        stackView.axis = axis
        stackView.distribution = distribution ?? .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }
}
