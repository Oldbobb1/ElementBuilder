import XCTest

@testable import ElementBuilder

final class LabelFactoryTest: XCTestCase {
                
    func testLabelTextAttributes() {
        let textAttribut =  LabelTextAttributes(
            text: "Test",
            fontSize: 17,
            weight: .heavy,
            textColor: .systemBackground,
            textAlignment: .center,
            numberOfLines: 0
        )
        
        let testTextLabel = LabelFactory.makeLabel(textAttributes: textAttribut)
        
        XCTAssertEqual(testTextLabel.text,"Test")
        XCTAssertEqual(testTextLabel.font.pointSize, 17)
        XCTAssertEqual(testTextLabel.font.fontDescriptor.symbolicTraits.contains(.traitBold), true)
        XCTAssertEqual(testTextLabel.textColor, UIColor.systemBackground)
        XCTAssertEqual(testTextLabel.textAlignment, .center)
        XCTAssertEqual(testTextLabel.numberOfLines, 0)
    }
        
    func testLabelStyleAttributes() {
        let styleAtribut = LabelStyleAttributes(
            backgroundColor: .black,
            clipsToBounds: true,
            cornerRadius: 10
        )
        
        let testStyleLabel = LabelFactory.makeLabel(styleAttributes: styleAtribut)
        
        XCTAssertEqual(testStyleLabel.backgroundColor, UIColor.black)
        XCTAssertFalse(testStyleLabel.clipsToBounds)
        XCTAssertEqual(testStyleLabel.layer.cornerRadius, 10)
    }
    
    func  testDefaultValue() {
        let testDefaultlabel = LabelFactory.makeLabel()
        
        XCTAssertNil(testDefaultlabel.text)
        XCTAssertNil(testDefaultlabel.backgroundColor)
        XCTAssertEqual(testDefaultlabel.textAlignment, .center)
        XCTAssertEqual(testDefaultlabel.font.pointSize, 20)
    }
    
    func testCombinedValues() {
        let textAttribut =  LabelTextAttributes(
            text: "Test",
            fontSize: 14,
            weight: .heavy,
            textColor: .green,
            textAlignment: .right,
            numberOfLines: 2
        )
        
        let styleAtribut = LabelStyleAttributes(
            backgroundColor: .orange,
            clipsToBounds: true,
            cornerRadius: 10
        )
        
        let testCombinedValueLabel = LabelFactory.makeLabel(
            textAttributes: textAttribut,
            styleAttributes: styleAtribut
        )
        
        XCTAssertEqual(testCombinedValueLabel.text,"Test")
        XCTAssertEqual(testCombinedValueLabel.font.pointSize, 14)
        XCTAssertEqual(testCombinedValueLabel.font.fontDescriptor.symbolicTraits.contains(.traitBold), false)
        XCTAssertEqual(testCombinedValueLabel.textColor, UIColor.green)
        XCTAssertEqual(testCombinedValueLabel.textAlignment, .right)
        XCTAssertEqual(testCombinedValueLabel.numberOfLines, 2)
        XCTAssertEqual(testCombinedValueLabel.backgroundColor, UIColor.orange)
        XCTAssertFalse(testCombinedValueLabel.clipsToBounds)
        XCTAssertEqual(testCombinedValueLabel.layer.cornerRadius, 10)
    }
}
   
