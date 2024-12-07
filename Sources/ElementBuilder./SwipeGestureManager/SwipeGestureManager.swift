import UIKit

// A class to control swipe gestures in an application.
public class SwipeGestureManager {
    
    // The type of action performed when you swipe.
    public typealias SwipeAction = () -> Void
    
    // Weak reference to the controller to which the gestures are attached.
    weak var viewController: UIViewController?
    
    // Action performed when swiping left.
    private var leftAction: SwipeAction
    
    // Action performed when swiping right.
    private var rightAction: SwipeAction
    
    // Initializer for configuring swipe gestures.
        /// - Parameters:
        /// - viewController: The controller to which the gestures are added.
        /// - leftAction: The action performed when you swipe left.
        /// - rightAction: The action performed by swiping to the right.
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
    
    // Method for customizing swipe gestures.
    // Causes adding gestures for left and right swipes.
    func configureSwipeGestures() {
        addSwipeGesture(direction: .left, action: #selector(handleSwipeLeft))
        addSwipeGesture(direction: .right, action: #selector(handleSwipeRight))
    }
    
    // Method to add a swipe gesture in a given direction.
       /// - Parameters:
       /// - direction: The direction of the swipe (left or right).
       /// - action: Method to be called when a swipe is performed.
    func addSwipeGesture(direction: UISwipeGestureRecognizer.Direction, action: Selector) {
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: action)
        swipeGesture.direction = direction
        viewController?.view.addGestureRecognizer(swipeGesture)
    }
    
    // Left swipe handler. Calls the action specified for a left swipe.
    @objc func handleSwipeLeft() {
        leftAction()
    }
    
    // Right swipe handler. Calls the action specified for a right swipe.
    @objc func handleSwipeRight() {
        rightAction()
    }
}







