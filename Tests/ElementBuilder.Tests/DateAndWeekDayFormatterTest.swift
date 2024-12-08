import XCTest

@testable import ElementBuilder

final class DateAndWeekDayFormatterTest: XCTestCase {
    
    let stackView = StackViewFactory.makeStackView(
        configuration: StackViewConfiguration(
            axis: .horizontal
        )
    )
    
    let dateFormatter = DateAndWeekDayFormatter()

    func testDateFormatter() {
        let testDate = Calendar.current.date(from: DateComponents(year: 2024, month: 12, day: 7))!
        
        dateFormatter.dateCurrent(to: stackView, withDay: testDate)
        
        XCTAssertEqual(stackView.arrangedSubviews.count, 1)
        
        if let testLabel = stackView.arrangedSubviews.first as? UILabel {
            XCTAssertEqual(testLabel.text, "San\n 7")
        } else {
            XCTFail("Not found UILabel")
        }
    }
}
