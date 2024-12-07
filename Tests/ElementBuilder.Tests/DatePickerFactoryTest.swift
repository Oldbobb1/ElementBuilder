import XCTest
@testable import ElementBuilder


final class DatePickerFactoryTest: XCTestCase {
    
    func testAppearenceDatePicker() {
        let testAppearence = DatePickerAppearanceAttributes(
            datePickerMode: .dateAndTime,
            preferredDatePickerStyle: .wheels,
            cornerRadius: 15,
            masksToBounds: true,
            backgroundColor: .black,
            clipsToBounds: false
        )
        
        let testDatePicker = DatePickerFactory.makeDatePicker(appearanceAttributes: testAppearence)
        
        XCTAssertEqual(testDatePicker.datePickerMode, .dateAndTime)
        XCTAssertEqual(testDatePicker.preferredDatePickerStyle, .wheels)
        XCTAssertEqual(testDatePicker.layer.cornerRadius, 15)
        XCTAssertTrue(testDatePicker.layer.masksToBounds)
        XCTAssertEqual(testDatePicker.backgroundColor, .black)
        XCTAssertFalse(testDatePicker.clipsToBounds)
    }
    
    func testStyleDatePicker() {
        let testStyle = ShadowAttributes(
            shadowColor: UIColor.black.cgColor,
            shadowOffset: .init(width: 1, height: 2),
            shadowOpacity: 3,
            shadowRadius: 4
        )
        
        let testDatePicker = DatePickerFactory.makeDatePicker(shadowAttributes: testStyle)
        
        XCTAssertEqual(testDatePicker.layer.shadowColor, UIColor.black.cgColor)
        XCTAssertEqual(testDatePicker.layer.shadowOffset, .init(width: 1, height: 2))
        XCTAssertEqual(testDatePicker.layer.shadowOpacity, 3)
        XCTAssertEqual(testDatePicker.layer.shadowRadius, 4)
    }
    
    func testDefaultValue() {
        let testDatePicker = DatePickerFactory.makeDatePicker()
        
        XCTAssertEqual(testDatePicker.datePickerMode, .dateAndTime)
        XCTAssertEqual(testDatePicker.preferredDatePickerStyle, .wheels)
        XCTAssertEqual(testDatePicker.backgroundColor, .black)
    }
    
    func testCombinedValues() {
        let testAppearence = DatePickerAppearanceAttributes(
            datePickerMode: .dateAndTime,
            preferredDatePickerStyle: .wheels,
            cornerRadius: 15,
            masksToBounds: true,
            backgroundColor: .black,
            clipsToBounds: false
        )
        
        let testStyle = ShadowAttributes(
            shadowColor: UIColor.black.cgColor,
            shadowOffset: .init(width: 1, height: 2),
            shadowOpacity: 3,
            shadowRadius: 4
        )
        
        let testDatePicker = DatePickerFactory.makeDatePicker(
            appearanceAttributes: testAppearence,
            shadowAttributes: testStyle
        )
        
        XCTAssertEqual(testDatePicker.datePickerMode, .dateAndTime)
        XCTAssertEqual(testDatePicker.preferredDatePickerStyle, .wheels)
        XCTAssertEqual(testDatePicker.layer.cornerRadius, 15)
        XCTAssertTrue(testDatePicker.layer.masksToBounds)
        XCTAssertEqual(testDatePicker.backgroundColor, .black)
        XCTAssertFalse(testDatePicker.clipsToBounds)
        
        XCTAssertEqual(testDatePicker.layer.shadowColor, UIColor.black.cgColor)
        XCTAssertEqual(testDatePicker.layer.shadowOffset, .init(width: 1, height: 2))
        XCTAssertEqual(testDatePicker.layer.shadowOpacity, 3)
        XCTAssertEqual(testDatePicker.layer.shadowRadius, 4)
    }
}

