import XCTest

@testable import ElementBuilder

final class ContainerViewFactoryTest: XCTestCase {
    
    func testAppearenceContainerView() {
        let testAppearence = ViewAppearanceAttributes(
            backgroundColor: .systemGray6,
            cornerRadius: 10
        )
        
        let testView = ContainerViewFactory.makeContainerView(appearanceAttributes: testAppearence)
        
        XCTAssertEqual(testView.backgroundColor, .black)
        XCTAssertEqual(testView.layer.cornerRadius, 10)
    }
    
    func testStyleView() {
        let testStyle = ShadowAttributes(
            shadowColor: UIColor.black.cgColor,
            shadowOffset: .init(width: 2, height: 1),
            shadowOpacity: 1,
            shadowRadius: 4
        )
        
        let testView = ContainerViewFactory.makeContainerView(shadowAttributes: testStyle)
        
        XCTAssertEqual(testView.layer.shadowColor, UIColor.black.cgColor)
        XCTAssertEqual(testView.layer.shadowOffset, .init(width: 2, height: 1))
        XCTAssertEqual(testView.layer.shadowOpacity, 1)
        XCTAssertEqual(testView.layer.shadowRadius, 4)
    }
    
    func testDefaultValue() {
        let testView = ContainerViewFactory.makeContainerView()
        
        XCTAssertEqual(testView.backgroundColor, .systemGray6)
    }
    
    func testCombineValue() {
        let testAppearence = ViewAppearanceAttributes(
            backgroundColor: .systemGray6,
            cornerRadius: 10
        )
        
        let testStyle = ShadowAttributes(
            shadowColor: UIColor.black.cgColor,
            shadowOffset: .init(width: 2, height: 1),
            shadowOpacity: 1,
            shadowRadius: 4
        )
        
        let testView = ContainerViewFactory.makeContainerView(
            appearanceAttributes: testAppearence,
            shadowAttributes: testStyle
        )
        
        XCTAssertEqual(testView.backgroundColor, .black)
        XCTAssertEqual(testView.layer.cornerRadius, 10)
        
        XCTAssertEqual(testView.layer.shadowColor, UIColor.black.cgColor)
        XCTAssertEqual(testView.layer.shadowOffset, .init(width: 2, height: 1))
        XCTAssertEqual(testView.layer.shadowOpacity, 1)
        XCTAssertEqual(testView.layer.shadowRadius, 4)
    }
}
