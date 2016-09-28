import XCTest

@testable import osusume

class LoginViewControllerTests: XCTestCase {
    
    var loginViewController: LoginViewController!
    
    override func setUp() {
        super.setUp()
        
        self.loginViewController = LoginViewController()
        self.loginViewController.view.setNeedsLayout()
    }
    
    func test_addSubviews() {
        XCTAssertTrue(self.loginViewController.view.subviews.contains(self.loginViewController.nameTextField))
        XCTAssertTrue(self.loginViewController.view.subviews.contains(self.loginViewController.passwordTextField))
        XCTAssertTrue(self.loginViewController.view.subviews.contains(self.loginViewController.loginButton))
    }
}
