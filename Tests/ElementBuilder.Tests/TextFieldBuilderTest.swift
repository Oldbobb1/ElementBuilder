import XCTest

@testable import ElementBuilder

final class TextFieldBuilderTest: XCTestCase {

    func testAppearencePropTextfield() {
        let testConfiguration = TextInputConfiguration(
            placeholder: "Test",
            placeholderTextColor: nil,
            textContentType: .name,
            keyboardType: .default,
            autocapitalizationType: .words,
            spellCheckingType: .no,
            enablesReturnKeyAutomatically: .none,
            clearButtonMode: .whileEditing,
            returnKeyType: .default
        )

        let testAppearance = TextFieldAppearance(
            backgroundColor: .systemGray6,
            cornerRadius: 10,
            font: nil,
            clipsToBounds: false,
            contentMode: .scaleAspectFit
        )

        let testTextField = TextFieldBuilder.textField(
            testConfiguration,
            testAppearance
        )

        XCTAssertEqual(
            testTextField.placeholder,
            testConfiguration.placeholder
        )
        XCTAssertEqual(
            testTextField.textContentType,
                .name
        )
        XCTAssertEqual(
            testTextField.keyboardType,
                .default
        )
        XCTAssertEqual(
            testTextField.autocapitalizationType,
                .words
        )
        XCTAssertEqual(
            testTextField.spellCheckingType,
                .no
        )
        XCTAssertEqual(
            testTextField.enablesReturnKeyAutomatically,
                .random()
        )
        XCTAssertEqual(
            testTextField.clearButtonMode,
                .whileEditing
        )
        XCTAssertEqual(
            testTextField.returnKeyType,
                .default
        )
        XCTAssertEqual(
            testTextField.backgroundColor,
                .systemGray6
        )
        XCTAssertEqual(
            testTextField.layer.cornerRadius,
            20
        )
        XCTAssertEqual(
            testTextField.font?.fontDescriptor.symbolicTraits.contains(
                .traitBold
            ),
            true
        )
        XCTAssertTrue(testTextField.clipsToBounds)
        XCTAssertEqual(
            testTextField.contentMode,
                .scaleAspectFit
        )
    }

    func testStyleTextField() {
        let testStyle = ShadowSetting(
            shadowColor: UIColor.black.cgColor,
            shadowOffset: .init(
                width: 0,
                height: 1
            ),
            shadowOpacity: 2,
            shadowRadius: 4
        )

        let testTextField = TextFieldBuilder.textField(
            nil,
            nil,
            testStyle
        )

        XCTAssertEqual(
            testTextField.layer.shadowColor,
            UIColor.black.cgColor
        )
        XCTAssertEqual(
            testTextField.layer.shadowOffset,
                .init(
                    width: 0,
                    height: 1
                )
        )
        XCTAssertEqual(
            testTextField.layer.shadowOpacity,
            2
        )
        XCTAssertEqual(
            testTextField.layer.shadowRadius,
            4
        )
    }

    func testDefaultValue() {
        let testTextField = TextFieldBuilder.textField()

        XCTAssertNil(testTextField.placeholder)
        XCTAssertEqual(
            testTextField.textContentType,
                .name
        )
        XCTAssertEqual(
            testTextField.keyboardType,
                .default
        )
        XCTAssertEqual(
            testTextField.autocapitalizationType,
                .words
        )
        XCTAssertEqual(
            testTextField.spellCheckingType,
                .no
        )
        XCTAssertEqual(
            testTextField.enablesReturnKeyAutomatically,
                .random()
        )
        XCTAssertEqual(
            testTextField.clearButtonMode,
                .whileEditing
        )
        XCTAssertEqual(
            testTextField.returnKeyType,
                .default
        )
    }

    func testCombinedValues() {
        let testConfiguration = TextInputConfiguration(
            placeholder: "Test",
            placeholderTextColor: .label,
            textContentType: .name,
            keyboardType: .default,
            autocapitalizationType: .words,
            spellCheckingType: .no,
            enablesReturnKeyAutomatically: .none,
            clearButtonMode: .whileEditing,
            returnKeyType: .default

        )

        let testAppearance = TextFieldAppearance(
            backgroundColor: .systemGray6,
            cornerRadius: 10,
            font: nil,
            clipsToBounds: false,
            contentMode: .scaleAspectFit
        )

        let testStyle = ShadowSetting(
            shadowColor: UIColor.black.cgColor,
            shadowOffset: .init(
                width: 0,
                height: 1
            ),
            shadowOpacity: 2,
            shadowRadius: 4
        )

        let testTextField = TextFieldBuilder.textField(
            testConfiguration,
            testAppearance,
            testStyle
        )

        XCTAssertEqual(
            testTextField.placeholder,
            testConfiguration.placeholder
        )
        XCTAssertEqual(
            testTextField.textContentType,
                .name
        )
        XCTAssertEqual(
            testTextField.keyboardType,
                .default
        )
        XCTAssertEqual(
            testTextField.autocapitalizationType,
                .words
        )
        XCTAssertEqual(
            testTextField.spellCheckingType,
                .no
        )
        XCTAssertEqual(
            testTextField.enablesReturnKeyAutomatically,
                .random()
        )
        XCTAssertEqual(
            testTextField.clearButtonMode,
                .whileEditing
        )
        XCTAssertEqual(
            testTextField.returnKeyType,
                .default
        )
        XCTAssertEqual(
            testTextField.backgroundColor,
                .systemGray6
        )
        XCTAssertEqual(
            testTextField.layer.cornerRadius,
            20
        )
        XCTAssertEqual(
            testTextField.font?.fontDescriptor.symbolicTraits.contains(
                .traitBold
            ),
            true
        )
        XCTAssertTrue(testTextField.clipsToBounds)
        XCTAssertEqual(testTextField.contentMode,
            .scaleAspectFit
        )
        XCTAssertEqual(
            testTextField.layer.shadowColor,
            UIColor.black.cgColor
        )
        XCTAssertEqual(
            testTextField.layer.shadowOffset,
                .init(
                    width: 0,
                    height: 1
                )
        )
        XCTAssertEqual(
            testTextField.layer.shadowOpacity,
            2
        )
        XCTAssertEqual(
            testTextField.layer.shadowRadius,
            4
        )
    }
}
