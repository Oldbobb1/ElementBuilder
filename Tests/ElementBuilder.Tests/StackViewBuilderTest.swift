import XCTest

@testable import ElementBuilder

final class StackViewBuilderTest: XCTestCase {

    func testConfigurationStackView() {
        let testConfigurStackView = StackViewSetting(
            axis: .horizontal,
            spacing: 4,
            layoutMargins: .init(
                top: 10,
                left: 0,
                bottom: -10,
                right: 0
            ),
            distribution: .fillEqually,
            backgroundColor: .blue,
            cornerRadius: 20
        )

        let testStackView = StackViewBuilder.stackView(testConfigurStackView)

        XCTAssertEqual(
            testStackView.axis,
                .horizontal
        )
        XCTAssertEqual(
            testStackView.spacing,
            4
        )
        XCTAssertEqual(
            testStackView.layoutMargins,
            .init(
                top: 10,
                left: 0,
                bottom: -10,
                right: 0
            )
        )
        XCTAssertEqual(
            testStackView.distribution,
                .fillEqually
        )
        XCTAssertEqual(
            testStackView.backgroundColor,
                .blue
        )
        XCTAssertEqual(
            testStackView.layer.cornerRadius,
            20
        )
    }

    func testCombinedValue() {
        let testConfigurStackView = StackViewSetting(
            axis: .horizontal,
            spacing: 4,
            layoutMargins: .init(
                top: 10,
                left: 0,
                bottom: -10,
                right: 0
            ),
            distribution: .fillEqually,
            backgroundColor: .blue,
            cornerRadius: 20
        )

        let testStackView = StackViewBuilder.stackView(testConfigurStackView)

        XCTAssertEqual(
            testStackView.axis,
                .vertical
        )
        XCTAssertEqual(
            testStackView.spacing,
            10
        )
        XCTAssertEqual(
            testStackView.layoutMargins,
            .init(
                top: 10,
                left: 10,
                bottom: -10,
                right: 10
            )
        )
        XCTAssertEqual(
            testStackView.distribution,
                .fillProportionally
        )
        XCTAssertEqual(
            testStackView.backgroundColor,
                .orange
        )
        XCTAssertEqual(
            testStackView.layer.cornerRadius,
            25
        )
    }
}
