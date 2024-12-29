import UIKit

//A framework that allows you to configure settings for keyboard and text field behavior in iOS apps.
public struct TextFieldKeyboardAppearence {
    
    var clearButtonMode: UITextField.ViewMode?  //Determines when the clear button will be displayed in the text box.
    var returnKeyType: UIReturnKeyType?   // Sets the style of the return button on the keyboard.
    var autocapitalizationType:  UITextAutocapitalizationType?   // Specifies the mode of auto-capitalization of text in the text field.
    var keyboardType:  UIKeyboardType?   // Defines the type of keyboard to be displayed to the user.
    var spellCheckingType: UITextSpellCheckingType?   // Specifies whether spellchecking will be used in the text field.
    var enablesReturnKeyAutomatically: Bool?   // Specifies whether the “Return” button should become active only when text is present.
    var textContentType: UITextContentType?   // Sets the content type for automatic filling of the text field.
    
    //Structure initializer.
    /// - Parameters:
    /// - clearButtonMode: The display mode of the clear button.
    /// - returnKeyType: The style of the “Return” button on the keyboard.
    /// - autocapitalizationType: Text autocapitalization mode.
    /// - keyboardType: Keyboard type.
    /// - spellCheckingType: Enable/disable spell checking.
    /// - enablesReturnKeyAutomatically: Activates the “Return” button when text is present.
    /// - textContentType: Content type for autocomplete.
    public init(
        clearButtonMode: UITextField.ViewMode? = nil,
        returnKeyType: UIReturnKeyType? = nil,
        autocapitalizationType: UITextAutocapitalizationType? = nil,
        keyboardType: UIKeyboardType? = nil,
        spellCheckingType: UITextSpellCheckingType? = nil,
        enablesReturnKeyAutomatically: Bool? = nil,
        textContentType: UITextContentType? = nil
    ) {
        self.clearButtonMode = clearButtonMode
        self.returnKeyType = returnKeyType
        self.autocapitalizationType = autocapitalizationType
        self.keyboardType = keyboardType
        self.spellCheckingType = spellCheckingType
        self.enablesReturnKeyAutomatically = enablesReturnKeyAutomatically
        self.textContentType = textContentType
    }
}






