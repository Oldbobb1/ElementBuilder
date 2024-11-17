import UIKit

public class SwipeGestureManager {
    
    public typealias SwipeAction = () -> Void
    
    weak var viewController: UIViewController?
    private var leftAction: SwipeAction
    private var rightAction: SwipeAction
    
    public init(
        viewController: UIViewController,
        leftAction: @escaping SwipeAction,
        rightAction: @escaping SwipeAction
    ) {
        self.viewController = viewController
        self.leftAction = leftAction
        self.rightAction = rightAction
        
        configureSwipeGestures()
    }
    
    func configureSwipeGestures() {
        addSwipeGesture(direction: .left, action: #selector(handleSwipeLeft))
        addSwipeGesture(direction: .right, action: #selector(handleSwipeRight))
    }
    
    func addSwipeGesture(direction: UISwipeGestureRecognizer.Direction, action: Selector) {
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: action)
        swipeGesture.direction = direction
        viewController?.view.addGestureRecognizer(swipeGesture)
    }
    
    @objc func handleSwipeLeft() {
        leftAction()
    }
    
    @objc func handleSwipeRight() {
        rightAction()
    }
}

