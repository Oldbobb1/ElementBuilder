<div id="header" align="center" style="background: linear-gradient(to right, #4facfe, #00f2fe); padding: 20px; border-radius: 12px; color: white;">
  <h1 style="margin: 0; padding: 15px; font-size: 3.5rem;">
    ElementBuilder
  </h1>
  <h3 style="margin: 10px 0 0; font-size: 1.2rem; color: #000000;">
    🛠️ Simplify UIKit Development
  </h3>
</div>

## 🚀 About

**ElementBuilder** is a Swift framework designed to simplify the creation and management of user interface elements in UIKit-based iOS applications. It offers factory structs to create reusable, customizable UI elements with minimal code. Additionally, it includes a struct for handling swipe gestures.

---

## ✨ Features

- 🧩 **Modular UI Factories**: buttons, containerView, datePicker, label, stackView, textField, image. 
- 🌈 **Gradient Layers**: Easily add gradient backgrounds to your views.
- 🎛️ **Swipe Gesture Manager**: Simplify swipe gesture handling in your view controllers.
- 📆 **Date Utilities**: Format and display dates in your UI seamlessly.

---

## Сontent 
* [ButtonFactory](#ButtonFactory)
* [ContainerViewFactory](#ContainerViewFactory)
* [DatePickerFactory](#DatePickerFactory)
* [LabelFactory](#LabelFactory)
* [StackViewFactory](#StackViewFactory) 
* [TextFieldFactory](#TextFieldFactory)
* [DateAndWeekDayFormatter](#DateAndWeekDayFormatter)
**[GradientFactory](#GradientFactory)
* [ImageViewFactory](#ImageView Factory)
* [SwipeGestureManager](#SwipeGestureManager) 

## Requirements

* iOS 17+ 
* Xcode 15+
* Swift 5.5+ 


## 📦 Installation 
To add the ElementBuilder library to your Xcode project, follow these steps:

### Using Swift Package Manager

1.  Описать путь перехода к spm 

2. **Add Package Dependency**:
<img width="331" alt="Снимок экрана 2024-08-06 в 7 00 57 PM" src="https://github.com/user-attachments/assets/f76bae97-a4d4-4efa-af96-27262eaf6718">  ??добавить скриншот?? 

3. **Import the Library**:
   In the files where you want to use ElementBuilder, import it by adding:
   ```swift
   import ElementBuilder
   ```

## 🛠️ Usage

### ButtonFactory
```
let button = ButtonFactory.makeButton(
    appearanceAttributes: 
)
```
###ContainerViewFactory
```
let containers = ContainerFactory.
```

###DatePickerFactory
```
let datePicker = DatePickerFactory.

```

### LabelFactory 
```
let label = LabelFactory.makeLabel(
    textAttributes:
)
```

###StackViewFactory

```
let stack = StackViewFactory. 
```

###TextFieldFactory

```
let textField = TextFieldFactory. 
```

###DateAndWeekDayFormatter
```
import UIKit
import ElementBuilder

class MyViewController: UIViewController {
    
    let stackView = UIStackView()

        let dateFormatter = DateAndWeekDayFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.addSubview(stackView)
 
        let calendar = Calendar.current
        for i in 0..<3 {
            let date = calendar.date(byAdding: .day, value: i, to: Date())!
            dateFormatter.dateCurrent(to: stackView, withDay: date)
        }
    }
}
```

### GradientFactory
```
let gradient = GradientFactory. 
```

###ImageViewFactory

``` 

```

###SwipeGestureManager

``` 
import UIKit
import ElementBuilder

class MyViewController: UIViewController {
    
            let swipeHandler = SwipeGestureManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       swipe() 
    }

func swipe() { 
       let swipeHandler = SwipeGestureManager(
            viewController: self,
            leftAction: { },
            rightAction: {[weak self] in
            guard let self = self else {return}
            self.dismiss(animated: true, completion: nil)
            })
} 
}
```

## Conclusion
**ElementBuilder** a framework offers developers powerful and convenient tools for creating and managing UI elements in UIKit-based applications. It reduces the amount of code needed for UI development and makes the process of building interfaces more intuitive and flexible.






