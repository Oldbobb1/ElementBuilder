import XCTest

@testable import ElementBuilder

final class DatePickerBuilderTest: XCTestCase {
    func testAppearenceDatePicker() {
        let testAppearence = DatePickerSetting(
            datePickerMode: .dateAndTime,
            preferredDatePickerStyle: .wheels,
            backgroundColor: .black,
            cornerRadius: 15,
            clipsToBounds: false,
            masksToBounds: true
        )
        let testDatePicker = DatePickerBuilder.datePicker(testAppearence)
        XCTAssertEqual(testDatePicker.datePickerMode, .dateAndTime)
        XCTAssertEqual(testDatePicker.preferredDatePickerStyle, .wheels)
        XCTAssertEqual(testDatePicker.backgroundColor, .black)
        XCTAssertEqual(testDatePicker.layer.cornerRadius, 15)
        XCTAssertFalse(testDatePicker.clipsToBounds)
        XCTAssertTrue(testDatePicker.layer.masksToBounds)
    }
    func testStyleDatePicker() {
        let testStyle = ShadowSetting(
            shadowColor: UIColor.black.cgColor,
            shadowOffset: .init(
                width: 1,
                height: 2
            ),
            shadowOpacity: 3,
            shadowRadius: 4
        )
        let testDatePicker = DatePickerBuilder.datePicker(nil, testStyle)
        XCTAssertEqual(testDatePicker.layer.shadowColor, UIColor.black.cgColor)
        XCTAssertEqual(testDatePicker.layer.shadowOffset, .init(width: 1, height: 2))
        XCTAssertEqual(testDatePicker.layer.shadowOpacity, 3)
        XCTAssertEqual(testDatePicker.layer.shadowRadius, 4)
    }
    func testDefaultValue() {
        let testDatePicker = DatePickerBuilder.datePicker()
        XCTAssertEqual(testDatePicker.datePickerMode, .dateAndTime)
        XCTAssertEqual(testDatePicker.preferredDatePickerStyle, .wheels)
        XCTAssertEqual(testDatePicker.backgroundColor, .black)
    }
    func testCombinedValues() {
        let testAppearence = DatePickerSetting(
            datePickerMode: .dateAndTime,
            preferredDatePickerStyle: .wheels,
            backgroundColor: .black,
            cornerRadius: 15,
            clipsToBounds: false,
            masksToBounds: true
        )
        let testStyle = ShadowSetting(
            shadowColor: UIColor.black.cgColor,
            shadowOffset: .init(
                width: 1,
                height: 2
            ),
            shadowOpacity: 3,
            shadowRadius: 4
        )
        let testDatePicker = DatePickerBuilder.datePicker(testAppearence, testStyle)
        XCTAssertEqual(testDatePicker.datePickerMode, .dateAndTime)
        XCTAssertEqual(testDatePicker.preferredDatePickerStyle, .wheels)
        XCTAssertEqual(testDatePicker.backgroundColor, .black)
        XCTAssertEqual(testDatePicker.layer.cornerRadius, 15)
        XCTAssertFalse(testDatePicker.clipsToBounds)
        XCTAssertTrue(testDatePicker.layer.masksToBounds)
        XCTAssertEqual(testDatePicker.layer.shadowColor, UIColor.black.cgColor)
        XCTAssertEqual(testDatePicker.layer.shadowOffset, .init(width: 1, height: 2))
        XCTAssertEqual(testDatePicker.layer.shadowOpacity, 3)
        XCTAssertEqual(testDatePicker.layer.shadowRadius, 4)
    }
}
