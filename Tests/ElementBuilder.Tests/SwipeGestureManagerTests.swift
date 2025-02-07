import XCTest

@testable import ElementBuilder

class SwipeGestureManagerTests: XCTestCase {

    var viewController: UIViewController!
    var swipeGestureManager: SwipeGestureManager!
    var leftSwipeActionCalled = false
    var rightSwipeActionCalled = false

    override func setUp() {
        super.setUp()
        viewController = UIViewController()
        leftSwipeActionCalled = false
        rightSwipeActionCalled = false
        swipeGestureManager = SwipeGestureManager(
            viewController: viewController,
            leftAction: { self.leftSwipeActionCalled = true },
            rightAction: { self.rightSwipeActionCalled = true }
        )
    }

    override func tearDown() {
        swipeGestureManager = nil
        viewController = nil
        super.tearDown()
    }

    func testSwipeLeft() {
        let swipeLeft = UISwipeGestureRecognizer(
            target: swipeGestureManager,
            action: #selector(swipeGestureManager.handleSwipeLeft))
        swipeLeft.direction = .left
        viewController.view.addGestureRecognizer(swipeLeft)

        swipeLeft.state = .ended
        swipeGestureManager.handleSwipeLeft()

        XCTAssertTrue(
            leftSwipeActionCalled, "Left swipe action should be called")
    }

    func testSwipeRight() {
        let swipeRight = UISwipeGestureRecognizer(
            target: swipeGestureManager,
            action: #selector(swipeGestureManager.handleSwipeRight))
        swipeRight.direction = .right
        viewController.view.addGestureRecognizer(swipeRight)

        swipeRight.state = .ended
        swipeGestureManager.handleSwipeRight()

        XCTAssertTrue(
            rightSwipeActionCalled, "Right swipe action should be called")
    }
}
