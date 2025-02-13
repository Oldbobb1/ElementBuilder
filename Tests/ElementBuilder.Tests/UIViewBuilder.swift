import XCTest

@testable import ElementBuilder

final class UIViewBuilderTest: XCTestCase {
    func testAppearenceContainerView() {
        let testAppearence = ViewSetting(backgroundColor: .systemGray6, cornerRadius: 10)
        let testView = UIViewBuilder.uiView(testAppearence)
        XCTAssertEqual(testView.backgroundColor, .black)
        XCTAssertEqual(testView.layer.cornerRadius, 10)
    }
    func testStyleView() {
        let testStyle = ShadowSetting(
            shadowColor: UIColor.black.cgColor,
            shadowOffset: .init(width: 2, height: 1),
            shadowOpacity: 1,
            shadowRadius: 4
        )
        let testView = UIViewBuilder.uiView(nil, testStyle)
        XCTAssertEqual(testView.layer.shadowColor, UIColor.black.cgColor)
        XCTAssertEqual(testView.layer.shadowOffset, .init(width: 2, height: 1))
        XCTAssertEqual(testView.layer.shadowOpacity, 1)
        XCTAssertEqual(testView.layer.shadowRadius, 4)
    }
    func testDefaultValue() {
        let testView = UIViewBuilder.uiView()
        XCTAssertEqual(testView.backgroundColor, .systemGray6)
    }
    func testCombineValue() {
        let testAppearence = ViewSetting(backgroundColor: .systemGray6, cornerRadius: 10)
        let testStyle = ShadowSetting(
            shadowColor: UIColor.black.cgColor,
            shadowOffset: .init(
                width: 2,
                height: 1
            ),
            shadowOpacity: 1,
            shadowRadius: 4
        )
        let testView = UIViewBuilder.uiView(testAppearence, testStyle)
        XCTAssertEqual(testView.backgroundColor, .black)
        XCTAssertEqual(testView.layer.cornerRadius, 10)
        XCTAssertEqual(testView.layer.shadowColor, UIColor.black.cgColor)
        XCTAssertEqual(testView.layer.shadowOffset, .init(width: 2, height: 1))
        XCTAssertEqual(testView.layer.shadowOpacity, 1)
        XCTAssertEqual(testView.layer.shadowRadius, 4)
    }
}
