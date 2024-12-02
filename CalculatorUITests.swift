import XCTest

class CalculatorUITests: XCTestCase {
    var app: XCUIApplication!
    var calculatorPage: CalculatorPage!
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        
        app = XCUIApplication()
        calculatorPage = CalculatorPage(app: app)
        
        app.launch()
    }
    
    override func tearDownWithError() throws {
        app = nil
        calculatorPage = nil
    }
    
    func testBasicNumberButtons() throws {
        // Test that number buttons work correctly
        calculatorPage
            .tapOne()
            .tapTwo()
            .tapThree()
            .tapFour()
            .tapFive()
            .tapSix()
            .tapSeven()
            .tapEight()
            .tapNine()
            .tapZero()
        
        XCTAssertEqual(calculatorPage.getResult(), "1234567890", "Number buttons should work sequentially")
    }
    
    func testBasicArithmeticOperations() throws {
        // Test basic addition
        calculatorPage
            .tapTwo()
            .tapPlus()
            .tapThree()
            .tapEqual()
        
        XCTAssertEqual(calculatorPage.getResult(), "5", "Addition should work correctly")
        
        // Test basic subtraction
        calculatorPage
            .tapClear()
            .tapFive()
            .tapMinus()
            .tapTwo()
            .tapEqual()
        
        XCTAssertEqual(calculatorPage.getResult(), "3", "Subtraction should work correctly")
    }
}