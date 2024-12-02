import XCTest

class CalculatorPage {
    private let app: XCUIApplication
    
    // Calculator UI Elements
    private lazy var zeroButton: XCUIElement = app.buttons["0"]
    private lazy var oneButton: XCUIElement = app.buttons["1"]
    private lazy var twoButton: XCUIElement = app.buttons["2"]
    private lazy var threeButton: XCUIElement = app.buttons["3"]
    private lazy var fourButton: XCUIElement = app.buttons["4"]
    private lazy var fiveButton: XCUIElement = app.buttons["5"]
    private lazy var sixButton: XCUIElement = app.buttons["6"]
    private lazy var sevenButton: XCUIElement = app.buttons["7"]
    private lazy var eightButton: XCUIElement = app.buttons["8"]
    private lazy var nineButton: XCUIElement = app.buttons["9"]
    
    private lazy var plusButton: XCUIElement = app.buttons["+"]
    private lazy var minusButton: XCUIElement = app.buttons["-"]
    private lazy var multiplyButton: XCUIElement = app.buttons["x"]
    private lazy var divideButton: XCUIElement = app.buttons["÷"]
    private lazy var equalButton: XCUIElement = app.buttons["="]
    private lazy var clearButton: XCUIElement = app.buttons["AC"]
    
    private lazy var resultLabel: XCUIElement = app.staticTexts["resultLabel"]
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    // Tap number methods
    func tapZero() -> Self { zeroButton.tap(); return self }
    func tapOne() -> Self { oneButton.tap(); return self }
    func tapTwo() -> Self { twoButton.tap(); return self }
    func tapThree() -> Self { threeButton.tap(); return self }
    func tapFour() -> Self { fourButton.tap(); return self }
    func tapFive() -> Self { fiveButton.tap(); return self }
    func tapSix() -> Self { sixButton.tap(); return self }
    func tapSeven() -> Self { sevenButton.tap(); return self }
    func tapEight() -> Self { eightButton.tap(); return self }
    func tapNine() -> Self { nineButton.tap(); return self }
    
    // Operation methods
    func tapPlus() -> Self { plusButton.tap(); return self }
    func tapMinus() -> Self { minusButton.tap(); return self }
    func tapMultiply() -> Self { multiplyButton.tap(); return self }
    func tapDivide() -> Self { divideButton.tap(); return self }
    func tapEqual() -> Self { equalButton.tap(); return self }
    func tapClear() -> Self { clearButton.tap(); return self }
    
    // Get result
    func getResult() -> String {
        return resultLabel.label
    }
}