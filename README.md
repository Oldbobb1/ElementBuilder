# Описание фреймворка ElementBuilder

## Введение
Фреймворк **ElementBuilder** предназначен для упрощения создания и управления элементами пользовательского интерфейса в приложениях на основе UIKit, написанных на языке Swift. Он предоставляет удобные методы для создания и настройки различных UI-компонентов, таких как кнопки, текстовые поля, метки, таблицы, контейнеры и изображения. Кроме того, фреймворк включает класс для обработки жестов свайпа.

## Цель
Целью ElementBuilder является предоставление простого и интуитивно понятного интерфейса для разработки UI-компонентов, что позволяет сократить количество кода и упростить процесс создания пользовательских интерфейсов.

## Основные возможности
1. **Создание UI-элементов**: Методы для создания различных элементов пользовательского интерфейса, таких как кнопки, текстовые поля, метки, таблицы, контейнеры и изображения.
2. **Настройка стилей**: Возможность настраивать стили для каждого элемента через словари стилей.
3. **Обработка жестов свайпа**: Класс для управления жестами свайпа, с поддержкой обработки свайпов влево и вправо.

## Преимущества
- **Удобство**: Простой интерфейс для создания и настройки элементов UI.
- **Сокращение кода**: Уменьшение объема кода, необходимого для создания и настройки элементов UI.
- **Гибкость**: Возможность легко настраивать стили и свойства элементов через словари стилей.
- **Расширяемость**: Возможность добавления новых методов и расширения функциональности фреймворка.

## Основные методы и классы
Фреймворк включает следующие основные методы и классы:

- `ButtonsWithAction`: Метод для создания кнопок.
- `Textfield`: Метод для создания текстовых полей.
- `Label`: Метод для создания меток.
- `Tableview`: Метод для создания таблиц.
- `StackView`: Метод для создания контейнеров.
- `Image`: Метод для создания изображений.
- `SwipeClass`: Класс для обработки жестов свайпа.
- 'DateAndWeekDayFormatter': класс для настройки даты. 

## Пример использования
Пример использования ElementBuilder для создания простого пользовательского интерфейса:

```swift
import UIKit
import ElementBuilder


class ViewController: UIViewController {
    
let myButton = ButtonsWithAction.button(text: "Click Me", action: {
print("Button clicked!")
}, style: ["color": UIColor.blue, "fontSize": 14])

let myTextField = ElementBuilder.textfield(placeholder: "Enter your name", text: "", style: ["borderColor": UIColor.black, "padding": 5])

let myLabel = ElementBuilder.label(text: "Username:", style: ["fontWeight": UIFont.Weight.bold, "fontSize": 12])

        
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
```

## Заключение
Фреймворк ElementBuilder предоставляет разработчикам мощные и удобные инструменты для создания и управления элементами пользовательского интерфейса в приложениях на основе UIKit. Он позволяет сократить количество кода, необходимого для разработки UI, и делает процесс создания интерфейсов более интуитивно понятным и гибким.


Конечно! Вот подробная документация для вашего фреймворка `ElementBuilder`, который включает методы для создания различных элементов пользовательского интерфейса в UIKit на языке Swift.


# Документация ElementBuilder

## Оглавление
1. [Button](#button)
2. [TextField](#textfield)
3. [Label](#label)
4. [TableView](#tableview)
5. [StackView](#stackview)
6. [ImageView](#imageview)
7. [SwipeClass](#swipeclass)

<a name="button"></a>
## Button
### Описание
Метод `button` используется для создания интерактивной кнопки в пользовательском интерфейсе.

### Сигнатура
```swift
func button(text: String, action: @escaping () -> Void, style: [String: Any]? = nil) -> UIButton
```

### Аргументы
- `text` (String): Текст, отображаемый на кнопке.
- `action` (@escaping () -> Void): Замыкание, вызываемое при нажатии на кнопку.
- `style` ([String: Any]?): Словарь со стилями для кнопки (например, цвет, шрифт, размер).

### Пример использования
```swift
let myButton = ElementBuilder.button(text: "Click Me", action: {
    print("Button clicked!")
}, style: ["color": UIColor.blue, "fontSize": 14])
```

<a name="textfield"></a>
## TextField
### Описание
Метод `textfield` используется для создания поля ввода текста.

### Сигнатура
```swift
func textfield(placeholder: String, text: String = "", style: [String: Any]? = nil) -> UITextField
```

### Аргументы
- `placeholder` (String): Текст-заполнитель, отображаемый в пустом поле ввода.
- `text` (String): Начальный текст в поле ввода.
- `style` ([String: Any]?): Словарь со стилями для текстового поля.

### Пример использования
```swift
let myTextField = ElementBuilder.textfield(placeholder: "Enter your name", text: "", style: ["borderColor": UIColor.black, "padding": 5])
```

<a name="label"></a>
## Label
### Описание
Метод `label` используется для создания текстовой метки.

### Сигнатура
```swift
func label(text: String, style: [String: Any]? = nil) -> UILabel
```

### Аргументы
- `text` (String): Текст, отображаемый на метке.
- `style` ([String: Any]?): Словарь со стилями для метки.

### Пример использования
```swift
let myLabel = ElementBuilder.label(text: "Username:", style: ["fontWeight": UIFont.Weight.bold, "fontSize": 12])
```

<a name="tableview"></a>
## TableView
### Описание
Метод `tableview` используется для создания таблицы с данными.

### Сигнатура
```swift
func tableview(data: [[Any]], headers: [String], style: [String: Any]? = nil) -> UITableView
```

### Аргументы
- `data` ([[Any]]): Двумерный массив данных для отображения в таблице.
- `headers` ([String]): Массив заголовков колонок.
- `style` ([String: Any]?): Словарь со стилями для таблицы.

### Пример использования
```swift
let data = [
    ["John", "Doe", 28],
    ["Jane", "Smith", 34]
]
let headers = ["First Name", "Last Name", "Age"]

let myTableView = ElementBuilder.tableview(data: data, headers: headers, style: ["borderColor": UIColor.black, "padding": 10])
```

<a name="stackview"></a>
## StackView
### Описание
Метод `stackview` используется для создания контейнера, который упорядочивает дочерние элементы вертикально или горизонтально.

### Сигнатура
```swift
func stackview(orientation: NSLayoutConstraint.Axis, children: [UIView], style: [String: Any]? = nil) -> UIStackView
```

### Аргументы
- `orientation` (NSLayoutConstraint.Axis): Ориентация контейнера (`.vertical` или `.horizontal`).
- `children` ([UIView]): Массив дочерних элементов.
- `style` ([String: Any]?): Словарь со стилями для контейнера.

### Пример использования
```swift
let myStackView = ElementBuilder.stackview(orientation: .vertical, children: [myLabel, myTextField, myButton], style: ["spacing": 10])
```

<a name="imageview"></a>
## ImageView
### Описание
Метод `imageview` используется для отображения изображения.

### Сигнатура
```swift
func imageview(source: String, altText: String = "", style: [String: Any]? = nil) -> UIImageView
```

### Аргументы
- `source` (String): URL или путь к изображению.
- `altText` (String): Альтернативный текст для изображения.
- `style` ([String: Any]?): Словарь со стилями для изображения.

### Пример использования
```swift
let myImageView = ElementBuilder.imageview(source: "path/to/image.jpg", altText: "Sample Image", style: ["width": 100, "height": 100])
```

<a name="swipeclass"></a>
## SwipeClass
### Описание
Класс `SwipeClass` используется для обработки жестов свайпа.

### Сигнатура
```swift
class SwipeClass {
    var onSwipeLeft: () -> Void
    var onSwipeRight: () -> Void

    init(onSwipeLeft: @escaping () -> Void, onSwipeRight: @escaping () -> Void)
    func detectSwipe(touchEvent: UITouch)
}
```

### Аргументы
- `onSwipeLeft` (@escaping () -> Void): Замыкание, вызываемое при свайпе влево.
- `onSwipeRight` (@escaping () -> Void): Замыкание, вызываемое при свайпе вправо.

### Методы
#### `detectSwipe`
Метод `detectSwipe` используется для обработки события касания и определения жеста свайпа.

### Пример использования
```swift
let swipeHandler = SwipeClass(onSwipeLeft: {
    print("Swiped left!")
}, onSwipeRight: {
    print("Swiped right!")
})

// Вызов метода для обработки события касания
swipeHandler.detectSwipe(touchEvent: touchEvent)
```

Эта документация охватывает основные методы и классы вашего фреймворка ElementBuilder. Вы можете дополнить её более подробными описаниями, примерами использования и информацией о возможных исключениях и ошибках.
