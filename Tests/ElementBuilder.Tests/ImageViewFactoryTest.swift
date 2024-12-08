import XCTest

@testable import ElementBuilder

final class ImageViewFactoryTest: XCTestCase {
 
    func testMakeDefaultImage() {
        let testImage = ImageViewFactory.makeImage("nameImage")
        
        XCTAssertEqual(testImage.image,UIImage(named: "nameImage"))
        XCTAssertEqual(testImage.layer.cornerRadius, 0)
        XCTAssertEqual(testImage.contentMode, .scaleToFill)
        XCTAssertFalse(testImage.clipsToBounds)
    }
    
    func testMakeCustomImage() {
        let testImage = ImageViewFactory.makeImage(
            "nameImage",
            cornerRadius: 15,
            contentMode: .scaleAspectFill,
            clipsToBounds: true
        )
        
        XCTAssertEqual(testImage.image,UIImage(named: "nameImage"))
        XCTAssertEqual(testImage.layer.cornerRadius, 15)
        XCTAssertEqual(testImage.contentMode, .scaleAspectFill)
        XCTAssertTrue(testImage.clipsToBounds)
    }
    
    func testSystemImage() {
        let testSystemImage = ImageViewFactory.makeSystemImageViews(systemName: "gear")
        
        XCTAssertEqual(testSystemImage.image,UIImage(systemName: "gear"))
        XCTAssertEqual(testSystemImage.tintColor, .black)
        XCTAssertEqual(testSystemImage.contentMode, .scaleToFill)
    }
    
    func testCustomSystemImage() {
        let testSystemImage = ImageViewFactory.makeSystemImageViews(
            systemName: "gear",
            tintColor: .blue,
            contentMode: .center
        )
        
        XCTAssertEqual(testSystemImage.image,UIImage(systemName: "gear"))
        XCTAssertEqual(testSystemImage.tintColor, .blue)
        XCTAssertEqual(testSystemImage.contentMode, .center)
    }
}

