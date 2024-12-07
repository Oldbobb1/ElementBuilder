import UIKit

// Utility to format the date and display the current day of the week and day of the month.
public struct DateAndWeekDayFormatter {
    // Initializer for `DateAndWeekDayFormatter`.
    public init(){}
    // Formats the date and adds a label with the day of the week and the number of the month to the `UIStackView`.
       /// - Parameters:
       /// - stackView: The `UIStackView` instance to which the label will be added.
       //// - day: The date to be displayed.
       ///
       /// - Formatting:
       /// - The day of the week is displayed in abbreviated format (e.g., “Mon”).
       /// - The number of the month is displayed below the day of the week.
       /// - Text is split into two lines.
    public func dateCurrent(
        to stackView: UIStackView,
        withDay day: Date
    ) {
        // Create a formatter to get the day of the week.
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EE" // Abbreviated name of the day of the week.
        // Get the current calendar.
        let calendar = Calendar.current
        // Determine the day of the week and number of the month.
        let dayOfWeek = dateFormatter.string(from: day)
        let dayOfMonth = calendar.component(.day, from: day)
        // Create a label to display the information.
        let dayOfWeekLabel = UILabel()
        dayOfWeekLabel.text = "\(dayOfWeek)\n  \(dayOfMonth)" // Text with hyphenation to a new line.
        dayOfWeekLabel.numberOfLines = 0 // Allows multiple strings to be used.
        dayOfWeekLabel.font = UIFont.systemFont(ofSize: 13) // Set the font size.
        // Add the label to the stack.
        stackView.addArrangedSubview(dayOfWeekLabel)
    }
}




