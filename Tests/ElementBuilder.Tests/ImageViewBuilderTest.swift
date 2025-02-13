import XCTest

@testable import ElementBuilder

final class ImageViewBuilderTest: XCTestCase {
    func testMakeDefaultImage() {
        let testImage = ImageViewBuilder.imageAndSystemImage()
        XCTAssertEqual(testImage.image, UIImage(named: "nameImage"))
        XCTAssertEqual(testImage.layer.cornerRadius, 0)
        XCTAssertFalse(testImage.clipsToBounds)
        XCTAssertEqual(testImage.contentMode, .scaleToFill)
    }
    func testMakeCustomImage() {
        let testImage = ImageViewBuilder.imageAndSystemImage(
            ImageViewSetting(
                named: "nameImage",
                cornerRadius: 15,
                clipsToBounds: true,
                contentMode: .scaleAspectFill
            )
        )
        XCTAssertEqual(testImage.image, UIImage(named: "nameImage"))
        XCTAssertEqual(testImage.layer.cornerRadius, 15)
        XCTAssertTrue(testImage.clipsToBounds)
        XCTAssertEqual(testImage.contentMode, .scaleToFill)
    }
    func testSystemImage() {
        let testSystemImage = ImageViewBuilder.imageAndSystemImage(ImageViewSetting(systemName: "gear"))
        XCTAssertEqual(testSystemImage.image, UIImage(systemName: "gear"))
        XCTAssertEqual(testSystemImage.tintColor, .black)
        XCTAssertEqual(testSystemImage.contentMode, .scaleToFill)
    }
    func testCustomSystemImage() {
        let testSystemImage = ImageViewBuilder.imageAndSystemImage(
            ImageViewSetting(
                systemName: "gear",
                tintColor: .blue,
                contentMode: .center
            )
        )
        XCTAssertEqual(testSystemImage.image, UIImage(systemName: "gear"))
        XCTAssertEqual(testSystemImage.tintColor, .blue)
        XCTAssertEqual(testSystemImage.contentMode, .center)
    }
}
