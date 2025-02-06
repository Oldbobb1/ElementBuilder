import UIKit

//  MARK: - TextInputConfiguration
//  Structure for configuring text input properties of a text field.

public struct TextInputConfiguration {
    var placeholder: String?  //  The placeholder text displayed in the text field when there is no other text.
    var placeholderTextColor: UIColor?  //  The color of the placeholder text.
    var textContentType: UITextContentType?  //  The type of data expected in the text field.
    var keyboardType: UIKeyboardType?  //  The keyboard type to be displayed.
    var autocapitalizationType: UITextAutocapitalizationType?  //  The autocapitalization behavior of the text field.
    var spellCheckingType: UITextSpellCheckingType?  //  The spell checking behavior of the text field.
    var enablesReturnKeyAutomatically: Bool?  //  A Boolean value indicating whether the Return key is automatically enabled.
    var clearButtonMode: UITextField.ViewMode?  //  The mode used to display the clear button.
    var returnKeyType: UIReturnKeyType?  //  The type of return key to display.

    //  Initializes a new instance of `TextInputConfiguration`.
    //  Parameters:
    //  - placeholder: The placeholder text displayed in the text field when there is no other text. Default value is `nil`.
    //  - placeholderTextColor: The color of the placeholder text. Default value is `nil`.
    //  - textContentType: The type of data expected in the text field. Default value is `nil`.
    //  - keyboardType: The keyboard type to be displayed. Default value is `nil`.
    //  - autocapitalizationType: The autocapitalization behavior of the text field. Default value is `nil`.
    //  - spellCheckingType: The spell checking behavior of the text field. Default value is `nil`.
    //  - enablesReturnKeyAutomatically: A Boolean value indicating whether the Return key is automatically enabled. Default value is `nil`.
    //  - clearButtonMode: The mode used to display the clear button. Default value is `nil`.
    //  - returnKeyType: The type of return key to display. Default value is `nil`.

    public init(
        placeholder: String? = nil,
        placeholderTextColor: UIColor? = nil,
        textContentType: UITextContentType? = nil,
        keyboardType: UIKeyboardType? = nil,
        autocapitalizationType: UITextAutocapitalizationType? = nil,
        spellCheckingType: UITextSpellCheckingType? = nil,
        enablesReturnKeyAutomatically: Bool? = nil,
        clearButtonMode: UITextField.ViewMode? = nil,
        returnKeyType: UIReturnKeyType? = nil
    ) {
        self.placeholder = placeholder
        self.placeholderTextColor = placeholderTextColor
        self.textContentType = textContentType
        self.keyboardType = keyboardType
        self.autocapitalizationType = autocapitalizationType
        self.spellCheckingType = spellCheckingType
        self.enablesReturnKeyAutomatically = enablesReturnKeyAutomatically
        self.clearButtonMode = clearButtonMode
        self.returnKeyType = returnKeyType
    }
}
