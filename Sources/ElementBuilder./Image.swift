//  Image.swift

//  Created by Bobbi R. on 11.07.24.

import UIKit

public class Image {
    public  static  func image(_ named: String,cornerRadius: CGFloat, contentMode: UIView.ContentMode ) -> UIImageView {
        let imageView = UIImageView()
        imageView.image = UIImage(named:named)
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = cornerRadius
        imageView.contentMode = contentMode
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }
}
