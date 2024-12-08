import XCTest

@testable import ElementBuilder

final class StackViewFactoryTest: XCTestCase {
    
    func testConfigurationStackView() {
        let testConfigurStackView = StackViewConfiguration(
            axis: .horizontal,
            distribution: .fillEqually,
            backgroundColor: .blue
        )
        
        let testStackView = StackViewFactory.makeStackView(configuration: testConfigurStackView)
        
        XCTAssertEqual(testStackView.axis, .horizontal)
        XCTAssertEqual(testStackView.distribution, .fillEqually)
        XCTAssertEqual(testStackView.backgroundColor, .blue)
    }
    
    func testStyleStackView() {
        let testStyle = StackViewStyle(
            cornerRadius: 20,
            spacing: 4,
            layoutMargins: .init(top: 10, left: 0, bottom: -10, right: 0)
        )
        
        let testStackView = StackViewFactory.makeStackView( style: testStyle)
    
        XCTAssertEqual(testStackView.layer.cornerRadius, 20)
        XCTAssertEqual(testStackView.spacing, 4)
        XCTAssertEqual(testStackView.layoutMargins, .init(top: 10, left: 0, bottom: -10, right: 0))
    }
    
    func testCombinedValue() {
        let testConfigurStackView = StackViewConfiguration(
            axis: .vertical,
            distribution: .fillProportionally,
            backgroundColor: .orange
        )
        
        let testStyle = StackViewStyle(
            cornerRadius: 25,
            spacing: 10,
            layoutMargins: .init(top: 10, left: 10, bottom: -10, right: 10)
        )
        
        let testStackView = StackViewFactory.makeStackView(
            configuration: testConfigurStackView,
            style: testStyle
        )
        
        XCTAssertEqual(testStackView.axis, .vertical)
        XCTAssertEqual(testStackView.distribution, .fillProportionally)
        XCTAssertEqual(testStackView.backgroundColor, .orange)
        
        XCTAssertEqual(testStackView.layer.cornerRadius, 25)
        XCTAssertEqual(testStackView.spacing, 10)
        XCTAssertEqual(testStackView.layoutMargins, .init(top: 10, left: 10, bottom: -10, right: 10))
    }
}
