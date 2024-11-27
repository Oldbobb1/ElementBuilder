import XCTest
@testable import ElementBuilder

final class ElementBuilder_Tests: XCTestCase {
    func testExample() throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
    }
}



//final class ElementBuilder_Tests: XCTestCase {
//
//    // Тестирование функции makeButton
//    func testMakeButton() {
//        // Указываем атрибуты для кнопки
//        let appearance = ButtonAppearanceAttributes(
//            setTitle: "Test Button",
//            setTitleColor: .blue,
//            cornerRadius: 10,
//            contentHorizontalAlignment: .center,
//            clipsToBounds: true,
//            font: UIFont.systemFont(ofSize: 16),
//            backgroundColor: .lightGray,
//            tag: 1
//        )
//        
//        let shadow = ButtonShadowAttributes(
//            shadowColor: UIColor.black.cgColor,
//            shadowOffset: CGSize(width: 2, height: 2),
//            shadowOpacity: 0.7,
//            shadowRadius: 5
//        )
//        
//        let button = ButtonFactory.makeButton(
//            appearanceAttributes: appearance,
//            shadowAttributes: shadow,
//            imageAttributes: nil
//        )
//
//        // Проверяем заголовок кнопки
//        XCTAssertEqual(button.title(for: .normal), "Test Button", "Title should be 'Test Button'")
//        
//        // Проверяем цвет заголовка
//        XCTAssertEqual(button.titleColor(for: .normal), .blue, "Title color should be blue")
//        
//        // Проверяем радиус углов
//        XCTAssertEqual(button.layer.cornerRadius, 10, "Corner radius should be 10")
//        
//        // Проверяем цвет фона
//        XCTAssertEqual(button.backgroundColor, .lightGray, "Background color should be light gray")
//        
//        // Проверяем, что кнопка имеет тень
//        XCTAssertEqual(button.layer.shadowOpacity, 0.7, "Shadow opacity should be 0.7")
//    }
//    
//    // Тестирование функции makeSwitchButton
//    func testMakeSwitchButton() {
//        // Создаем переключатель с включенным состоянием и определенным цветом активного состояния
//        let switchButton = ButtonFactory.makeSwitchButton(isOn: true, onTintColor: .green)
//
//        // Проверяем, что переключатель включен
//        XCTAssertTrue(switchButton.isOn, "Switch should be in the 'on' state")
//
//        // Проверяем цвет активного состояния
//        XCTAssertEqual(switchButton.onTintColor, .green, "On tint color should be green")
//    }
//    
//    // Тестирование функции makeSwitchButton с выключенным состоянием
//    func testMakeSwitchButtonOff() {
//        // Создаем переключатель с выключенным состоянием
//        let switchButton = ButtonFactory.makeSwitchButton(isOn: false, onTintColor: nil)
//
//        // Проверяем, что переключатель выключен
//        XCTAssertFalse(switchButton.isOn, "Switch should be in the 'off' state")
//        
//        // Проверяем, что цвет активного состояния по умолчанию (если не задан)
//        XCTAssertNil(switchButton.onTintColor, "On tint color should be nil by default")
//    }
//}
