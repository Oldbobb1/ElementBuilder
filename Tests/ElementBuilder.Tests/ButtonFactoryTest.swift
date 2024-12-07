import XCTest
@testable import ElementBuilder

final class ButtonFactoryTest: XCTestCase {
    
    func testMakeDefaultButton() {
        let testDefaultButton = ButtonFactory.makeButton(
            appearanceAttributes:ButtonAppearanceAttributes(
                setTitle: "Test",
                cornerRadius: 15,
                contentHorizontalAlignment: .center,
                setTitleColor: .white,
                backgroundColor: .black
            ),
            shadowAttributes: ShadowAttributes(
                shadowColor: UIColor.black.cgColor,
                shadowOffset: .init(width: 1, height: 1),
                shadowOpacity: 2,
                shadowRadius: 4
            )
        )
        
        XCTAssertEqual(testDefaultButton.title(for: .normal), "Test")
        XCTAssertEqual(testDefaultButton.layer.cornerRadius, 15)
        XCTAssertEqual(testDefaultButton.contentHorizontalAlignment, .center)
        XCTAssertEqual(testDefaultButton.titleColor(for: .normal), .white)
        XCTAssertEqual(testDefaultButton.backgroundColor, .black)
  
        XCTAssertEqual(testDefaultButton.layer.shadowColor, UIColor.black.cgColor)
        XCTAssertEqual(testDefaultButton.layer.shadowOffset, .init(width: 1, height: 1))
        XCTAssertEqual(testDefaultButton.layer.shadowOpacity,2)
        XCTAssertEqual(testDefaultButton.layer.shadowRadius,4)
    }

    func testImageButton() {
        let testImageButton = ButtonFactory.makeButton(
            appearanceAttributes: ButtonAppearanceAttributes(
                cornerRadius: 20,
                clipsToBounds: false,
                backgroundColor: .systemGray6
            ),
            shadowAttributes: ShadowAttributes(
                shadowColor: UIColor.darkGray.cgColor,
                shadowOffset: CGSize(width: 0, height: 0),
                shadowOpacity: 1,
                shadowRadius: 3
            ),
            imageAttributes: ButtonImageAttributes(
                systemName: "plus.circle",
                setImage: nil,
                imageSize: CGSize(width: 28, height: 28),
                alpha: 1,
                tintColor: .black
            )
        )
        
        XCTAssertEqual(testImageButton.layer.cornerRadius, 15)
        XCTAssertFalse(testImageButton.clipsToBounds)
        XCTAssertEqual(testImageButton.backgroundColor, .black)

        XCTAssertEqual(testImageButton.layer.shadowColor, UIColor.darkGray.cgColor)
        XCTAssertEqual(testImageButton.layer.shadowOffset, .init(width: 0, height: 0))
        XCTAssertEqual(testImageButton.layer.shadowOpacity, 1)
        XCTAssertEqual(testImageButton.layer.shadowRadius, 3)
        
        XCTAssertEqual(testImageButton.imageView?.image?.pngData(), UIImage(systemName: "plus.circle")?.pngData())
        XCTAssertNil(testImageButton.imageView?.image, "Not Image")
        XCTAssertEqual(testImageButton.imageView?.bounds.size, CGSize(width: 28, height: 28))
        XCTAssertEqual(testImageButton.alpha, 1)
        XCTAssertEqual(testImageButton.tintColor, .black)
    }
    
    func testMakeSwitchOn() {
        let testSwitch = ButtonFactory.makeSwitchButton(isOn: true, onTintColor: .green)
        
        XCTAssertTrue(testSwitch.isOn)
        XCTAssertEqual(testSwitch.onTintColor, .green)
    }
    
    func testMakeSwitchOff() {
        let testSwitch = ButtonFactory.makeSwitchButton(isOn: false, onTintColor: nil)
        
        XCTAssertFalse(testSwitch.isOn)
        XCTAssertNil(testSwitch.onTintColor)
    }
}
