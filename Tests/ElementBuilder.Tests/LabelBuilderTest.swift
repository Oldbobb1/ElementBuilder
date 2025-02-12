import XCTest

@testable import ElementBuilder

final class LabelBuilderTest: XCTestCase {

    func testLabelTextAttributes() {
        let textAttribut = TextInputSetting(
            text: "Test",
            textColor: .systemBackground,
            textAlignment: .center,
            fontSize: 17,
            weight: .heavy,
            numberOfLines: 0
        )

        let testTextLabel = LabelBuilder.label(textAttribut)

        XCTAssertEqual(
            testTextLabel.text,
            "Test"
        )
        XCTAssertEqual(
            testTextLabel.textColor,
            UIColor.systemBackground
        )
        XCTAssertEqual(
            testTextLabel.textAlignment,
                .center
        )
        XCTAssertEqual(
            testTextLabel.font.pointSize,
            17
        )
        XCTAssertEqual(
            testTextLabel.font.fontDescriptor.symbolicTraits.contains(
                .traitBold),
            true
        )
        XCTAssertEqual(
            testTextLabel.numberOfLines,
            0
        )
    }

    func testLabelStyleAttributes() {
        let styleAtribut = LabelSetting(
            backgroundColor: .black,
            cornerRadius: 10,
            clipsToBounds: true
        )

        let testStyleLabel = LabelBuilder.label(
            nil,
            styleAtribut
        )

        XCTAssertEqual(
            testStyleLabel.backgroundColor,
            UIColor.black
        )
        XCTAssertFalse(testStyleLabel.clipsToBounds)
        XCTAssertEqual(
            testStyleLabel.layer.cornerRadius,
            10
        )
    }

    func testDefaultValue() {
        let testDefaultlabel = LabelBuilder.label()
        
        XCTAssertNil(testDefaultlabel.text)
        XCTAssertEqual(
            testDefaultlabel.textAlignment,
                .center
        )
        XCTAssertEqual(
            testDefaultlabel.font.pointSize,
            20
        )
        XCTAssertNil(testDefaultlabel.backgroundColor)
    }

    func testCombinedValues() {
        let textAttribut = TextInputSetting(
            text: "Test",
            textColor: .systemBackground,
            textAlignment: .center,
            fontSize: 17,
            weight: .heavy,
            numberOfLines: 0
        )

        let styleAtribut = LabelSetting(
            backgroundColor: .black,
            cornerRadius: 10,
            clipsToBounds: true
        )

        let testCombinedValueLabel = LabelBuilder.label(
            textAttribut,
            styleAtribut
        )

        XCTAssertEqual(
            testCombinedValueLabel.text,
            "Test"
        )
        XCTAssertEqual(
            testCombinedValueLabel.textColor,
            UIColor.green
        )
        XCTAssertEqual(
            testCombinedValueLabel.textAlignment,
                .right
        )
        XCTAssertEqual(
            testCombinedValueLabel.font.pointSize,
            14
        )
        XCTAssertEqual(
            testCombinedValueLabel.font.fontDescriptor.symbolicTraits.contains(
                .traitBold),
            false
        )
        XCTAssertEqual(
            testCombinedValueLabel.numberOfLines,
            2
        )
        XCTAssertEqual(
            testCombinedValueLabel.backgroundColor,
            UIColor.orange
        )
        XCTAssertEqual(
            testCombinedValueLabel.layer.cornerRadius,
            10
        )
        XCTAssertFalse(testCombinedValueLabel.clipsToBounds)
    }
}
