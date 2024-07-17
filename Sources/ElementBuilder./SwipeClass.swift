//  SwipeClass.swift

//  Created by Bobbi R. on 11.07.24.

import UIKit

public class SwipeClass {
    
   public typealias SwipeAction = () -> Void
    
    weak var viewController: UIViewController?
    var leftAction: SwipeAction?, rightAction: SwipeAction?
    
  public init(viewController:UIViewController,leftAction: @escaping SwipeAction ,rightAction: @escaping SwipeAction ) {
        self.viewController = viewController
        self.leftAction = leftAction
        self.rightAction = rightAction
        setupSwipe()
    }
    
    public func setupSwipe() {
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipeLeft))
        swipeLeft.direction = .left
        viewController?.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipeRight))
        swipeRight.direction = .right
        viewController?.view.addGestureRecognizer(swipeRight)
    }
    
    @objc public func swipeLeft() {
        leftAction?()
    }
    
    @objc public func swipeRight() {
        rightAction?()
    }
}
