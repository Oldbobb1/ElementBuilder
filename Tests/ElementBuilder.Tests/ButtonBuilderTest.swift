import XCTest

@testable import ElementBuilder

final class ButtonBuilderTest: XCTestCase {

    func testMakeDefaultButton() {
        let testDefaultButton = ButtonBuilder.buttonSystemAndButtonImage(
            ButtonAppearanceAttributes(
                setTitle: "Test",
                setTitleColor: .white,
                font: nil,
                configuration: nil,
                backgroundColor: .black,
                cornerRadius: 15,
                clipsToBounds: false,
                contentHorizontalAlignment: .center,
                tag: nil
            ),
            nil,
            ShadowSetting(
                shadowColor: UIColor.black.cgColor,
                shadowOffset: .init(width: 1, height: 1),
                shadowOpacity: 2,
                shadowRadius: 4
            )
        )

        XCTAssertEqual(testDefaultButton.title(for: .normal), "Test")
        XCTAssertEqual(testDefaultButton.titleColor(for: .normal), .white)
        XCTAssertEqual(testDefaultButton.backgroundColor, .green)
        XCTAssertEqual(testDefaultButton.layer.cornerRadius, 15)
        XCTAssertEqual(testDefaultButton.clipsToBounds, false)
        XCTAssertEqual(testDefaultButton.contentHorizontalAlignment, .center)
        XCTAssertEqual(
            testDefaultButton.layer.shadowColor, UIColor.black.cgColor)
        XCTAssertEqual(
            testDefaultButton.layer.shadowOffset, .init(width: 1, height: 1))
        XCTAssertEqual(testDefaultButton.layer.shadowOpacity, 2)
        XCTAssertEqual(testDefaultButton.layer.shadowRadius, 4)
    }

    func testImageButton() {
        let testImageButton = ButtonBuilder.buttonSystemAndButtonImage(
            ButtonAppearanceAttributes(
                backgroundColor: .systemGray6,
                cornerRadius: 20,
                clipsToBounds: false
            ),
            ButtonImageAttributes(
                setImage: nil,
                systemName: "plus.circle",
                tintColor: .black,
                alpha: 1,
                imageSize: CGSize(width: 28, height: 28)
            ),
            ShadowSetting(
                shadowColor: UIColor.darkGray.cgColor,
                shadowOffset: CGSize(width: 0, height: 0),
                shadowOpacity: 1,
                shadowRadius: 3
            )
        )

        XCTAssertEqual(testImageButton.backgroundColor, .black)
        XCTAssertEqual(testImageButton.layer.cornerRadius, 15)
        XCTAssertFalse(testImageButton.clipsToBounds)

        XCTAssertNil(testImageButton.imageView?.image, "Not Image")
        XCTAssertEqual(
            testImageButton.imageView?.image?.pngData(),
            UIImage(systemName: "plus.circle")?.pngData())
        XCTAssertEqual(testImageButton.tintColor, .black)
        XCTAssertEqual(testImageButton.alpha, 1)
        XCTAssertEqual(
            testImageButton.imageView?.bounds.size,
            CGSize(width: 28, height: 28))

        XCTAssertEqual(
            testImageButton.layer.shadowColor, UIColor.darkGray.cgColor)
        XCTAssertEqual(
            testImageButton.layer.shadowOffset, .init(width: 0, height: 0))
        XCTAssertEqual(testImageButton.layer.shadowOpacity, 1)
        XCTAssertEqual(testImageButton.layer.shadowRadius, 3)

    }

    func testMakeSwitchOn() {
        let testSwitch = ButtonBuilder.makeSwitchButton(
            isOn: true, onTintColor: .green)

        XCTAssertTrue(testSwitch.isOn)
        XCTAssertEqual(testSwitch.onTintColor, .green)
    }

    func testMakeSwitchOff() {
        let testSwitch = ButtonBuilder.makeSwitchButton(
            isOn: false, onTintColor: nil)

        XCTAssertFalse(testSwitch.isOn)
        XCTAssertNil(testSwitch.onTintColor)
    }
}
