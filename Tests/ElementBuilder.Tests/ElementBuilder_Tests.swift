import XCTest

@testable import ElementBuilder

final class ElementBuilder_Tests: XCTestCase {
    //  Test ButtonBuilder
    func testButtonBuilderCreatesSystemButton() {
        let button = ButtonBuilder.buttonSystemAndButtonImage(
            ButtonAppearanceAttributes(
                setTitle: "Test",
                setTitleColor: .red,
                font: UIFont.systemFont(ofSize: 14),
                backgroundColor: .blue,
                cornerRadius: 10
            )
        )
        XCTAssertEqual(button.title(for: .normal), "Test")
        XCTAssertEqual(button.titleColor(for: .normal), .red)
        XCTAssertEqual(button.backgroundColor, .blue)
        XCTAssertEqual(button.layer.cornerRadius, 10)
    }
    //  Test SwitchButton
    func testMakeSwitchButton() {
        let switchButton = ButtonBuilder.makeSwitchButton(
            isOn: true, onTintColor: .green)

        XCTAssertTrue(switchButton.isOn)
        XCTAssertEqual(switchButton.onTintColor, .green)
    }
    //  Test DateAndWeekDayFormatter
    func testDateAndWeekDayFormatter() {
        let stackView = UIStackView()
        let formatter = DateAndWeekDayFormatter()
        let date = Date()

        formatter.dateCurrent(to: stackView, withDay: date)

        XCTAssertEqual(stackView.arrangedSubviews.count, 1)
        XCTAssertTrue(stackView.arrangedSubviews.first is UILabel)
    }
    //  Test DatePickerBuilder
    func testDatePickerBuilderCreatesDatePicker() {
        let datePicker = DatePickerBuilder.datePicker(
            DatePickerSetting(
                datePickerMode: .date,
                preferredDatePickerStyle: .wheels,
                backgroundColor: .white,
                cornerRadius: 8
            )
        )
        XCTAssertEqual(datePicker.datePickerMode, .date)
        XCTAssertEqual(datePicker.preferredDatePickerStyle, .wheels)
        XCTAssertEqual(datePicker.backgroundColor, .white)
        XCTAssertEqual(datePicker.layer.cornerRadius, 8)
    }
    //  Test GradientBuilder
    func testGradientBuilderCreatesGradient() {
        let gradient = GradientBuilder.gradient(.red, .blue, 0.5)

        XCTAssertEqual(gradient.colors?.count, 2)
        XCTAssertEqual(gradient.startPoint, CGPoint(x: 0, y: 1))
        XCTAssertEqual(gradient.endPoint, CGPoint(x: 1, y: 0))
    }
    //  Test ImageViewBuilder
    func testImageViewBuilderCreatesImageViewWithSystemImage() {
        let imageView = ImageViewBuilder.imageAndSystemImage(
            ImageViewSetting(systemName: "star.fill", tintColor: .yellow))
        XCTAssertNotNil(imageView.image)
        XCTAssertEqual(imageView.tintColor, .yellow)
    }
    //  Test LabelBuilder
    func testLabelBuilderCreatesLabelWithText() {
        let label = LabelBuilder.label(
            TextInputSetting(
                text: "Test Label",
                textColor: .black,
                fontSize: 14,
                weight: .bold
            )
        )
        XCTAssertEqual(label.text, "Test Label")
        XCTAssertEqual(label.textColor, .black)
        XCTAssertEqual(label.font, UIFont.systemFont(ofSize: 14, weight: .bold))
    }
    //  Test StackViewBuilder
    func testStackViewBuilderCreatesStackView() {
        let stackView = StackViewBuilder.stackView(
            StackViewSetting(axis: .vertical, spacing: 10, cornerRadius: 5)
        )
        XCTAssertEqual(stackView.axis, .vertical)
        XCTAssertEqual(stackView.spacing, 10)
        XCTAssertEqual(stackView.layer.cornerRadius, 5)
    }
    //  Test SwipeGestureManager
    func testSwipeGestureManager() {
        var viewController: UIViewController!
        var swipeGestureManager: SwipeGestureManager!
        var leftSwipeActionCalled = false
        var rightSwipeActionCalled = false
        // Setting
        viewController = UIViewController()
        leftSwipeActionCalled = false
        rightSwipeActionCalled = false
        swipeGestureManager = SwipeGestureManager(
            viewController: viewController,
            leftAction: { leftSwipeActionCalled = true },
            rightAction: { rightSwipeActionCalled = true }
        )
        //    Test swipe left
        let swipeLeft = UISwipeGestureRecognizer(
            target: swipeGestureManager,
            action: #selector(swipeGestureManager.handleSwipeLeft))
        swipeLeft.direction = .left
        viewController.view.addGestureRecognizer(swipeLeft)

        swipeLeft.state = .ended
        swipeGestureManager.handleSwipeLeft()
        XCTAssertTrue(
            leftSwipeActionCalled, "Left swipe action should be called")

        //    Test swipe right
        let swipeRight = UISwipeGestureRecognizer(
            target: swipeGestureManager,
            action: #selector(swipeGestureManager.handleSwipeRight))
        swipeRight.direction = .right
        viewController.view.addGestureRecognizer(swipeRight)

        swipeRight.state = .ended
        swipeGestureManager.handleSwipeRight()
        XCTAssertTrue(
            rightSwipeActionCalled, "Right swipe action should be called")
    }
    //  Test TextFieldBuilder
    func testTextFieldBuilder() {
        let textField = TextFieldBuilder.textField(
            TextInputConfiguration(
                placeholder: "enter Text",
                textContentType: .name,
                keyboardType: .default,
                returnKeyType: .default
            ),
            TextFieldAppearance(
                backgroundColor: .systemGray6
            )
        )
        XCTAssertEqual(textField.placeholder, "enter Text")
        XCTAssertEqual(textField.textContentType, .name)
        XCTAssertEqual(textField.keyboardType, .default)
        XCTAssertEqual(textField.returnKeyType, .default)
        XCTAssertEqual(textField.backgroundColor, .systemGray6)

    }
    //  Test UIViewBuilder
    func testUIViewBuilder() {
        let uiView = UIViewBuilder.uiView(
            ViewSetting(
                backgroundColor: .red,
                cornerRadius: 15
            )
        )
        XCTAssertEqual(uiView.backgroundColor, .red)
        XCTAssertEqual(uiView.layer.cornerRadius, 15)
    }
}
