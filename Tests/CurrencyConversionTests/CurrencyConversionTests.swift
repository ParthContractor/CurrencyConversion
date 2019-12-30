import XCTest
@testable import CurrencyConversion

final class CurrencyConversionTests: XCTestCase {    
    func testBuyRate() {
        let exp = expectation(description: "\(#function)\(#line)")
        CurrencyConverterHandler.sharedInstance.getBuyRateFor(currencyCode: "NZD", completionHandler: { buyRate,error  in
            XCTAssertNotNil(buyRate?.buyRate)
           exp.fulfill()
        })
        waitForExpectations(timeout: 15, handler: nil)
    }
    
    func testSellRate() {
        let exp = expectation(description: "\(#function)\(#line)")
        CurrencyConverterHandler.sharedInstance.getSellRateFor(currencyCode: "INR", completionHandler: { sellRate,error  in
            XCTAssertNotNil(sellRate?.sellRate)
           exp.fulfill()
        })
        waitForExpectations(timeout: 15, handler: nil)
    }

    func testCurrencyCount() {
        let exp = expectation(description: "\(#function)\(#line)")
        CurrencyConverterHandler.sharedInstance.getAvailableCurrencies(completionHandler: { currenyList  in
            XCTAssertNotEqual(currenyList.count, 0)
            exp.fulfill()
        })
        waitForExpectations(timeout: 15, handler: nil)
    }
    
    func testBuyRateUnAvailableError() {
           let exp = expectation(description: "\(#function)\(#line)")
           CurrencyConverterHandler.sharedInstance.getBuyRateFor(currencyCode: "INR", completionHandler: { buyRate,error  in
            XCTAssertEqual(error,CurrencyConversionError.buyRateUnavailable)
              exp.fulfill()
           })
           waitForExpectations(timeout: 15, handler: nil)
       }
}
