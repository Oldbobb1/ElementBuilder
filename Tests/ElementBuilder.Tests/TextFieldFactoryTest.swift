import XCTest
@testable import ElementBuilder


final class TextFieldFactoryTest: XCTestCase {
    
    func testAppearencePropTextfield(){
        let testAppearene = TextFieldAppearanceProperties(
            placeholder: "Test",
            cornerRadius: 20,
            font: .boldSystemFont(ofSize: 15),
            backgroundColor: .systemGray6,
            clipsToBounds: true,
            contentMode: .scaleAspectFit
        )
        
        let testTextField = TextFieldFactory.makeTextField(appearanceProperties: testAppearene)
        
        XCTAssertEqual(testTextField.placeholder, testAppearene.placeholder)
        XCTAssertEqual(testTextField.layer.cornerRadius, 20)
        XCTAssertEqual(testTextField.font?.fontDescriptor.symbolicTraits.contains(.traitBold),true)
        XCTAssertTrue(testTextField.clipsToBounds)
        XCTAssertEqual(testTextField.contentMode, .scaleAspectFit)
    
    }
        
    func testStyleTextField() {
        let testStyle = ShadowAttributes(
            shadowColor: UIColor.black.cgColor,
            shadowOffset: .init(width: 0, height: 1),
            shadowOpacity: 2,
            shadowRadius: 4
        )
        
        let testTextField = TextFieldFactory.makeTextField(shadowAttributes: testStyle)
        
        XCTAssertEqual(testTextField.layer.shadowColor, UIColor.black.cgColor)
        XCTAssertEqual(testTextField.layer.shadowOffset,.init(width: 0, height: 1))
        XCTAssertEqual(testTextField.layer.shadowOpacity, 2)
        XCTAssertEqual(testTextField.layer.shadowRadius, 4)
    }

    func testDefaultValue() {
        let testTextField = TextFieldFactory.makeTextField()
        
        XCTAssertNil(testTextField.placeholder)
        XCTAssertEqual(testTextField.layer.cornerRadius, 0)
        XCTAssertEqual(testTextField.font?.pointSize,16)
        XCTAssertFalse(testTextField.clipsToBounds)
    }
        
    func testCombinedValues() {
        let testAppearene = TextFieldAppearanceProperties(
            placeholder: "Test",
            cornerRadius: 20,
            font: .boldSystemFont(ofSize: 15),
            backgroundColor: .systemGray6,
            clipsToBounds: true,
            contentMode: .scaleAspectFit
        )
        
        let testStyle = ShadowAttributes(
            shadowColor: UIColor.black.cgColor,
            shadowOffset: .init(width: 0, height: 1),
            shadowOpacity: 2,
            shadowRadius: 4
        )
        
        let testTextField = TextFieldFactory.makeTextField(
            appearanceProperties: testAppearene,
            shadowAttributes: testStyle
        )
        
        XCTAssertEqual(testTextField.placeholder, testAppearene.placeholder)
        XCTAssertEqual(testTextField.layer.cornerRadius, 20)
        XCTAssertEqual(testTextField.font?.fontDescriptor.symbolicTraits.contains(.traitBold),true)
        XCTAssertTrue(testTextField.clipsToBounds)
        XCTAssertEqual(testTextField.contentMode, .scaleAspectFit)
        
        XCTAssertEqual(testTextField.layer.shadowColor, UIColor.black.cgColor)
        XCTAssertEqual(testTextField.layer.shadowOffset,.init(width: 0, height: 1))
        XCTAssertEqual(testTextField.layer.shadowOpacity, 2)
        XCTAssertEqual(testTextField.layer.shadowRadius, 4)
    }
}








