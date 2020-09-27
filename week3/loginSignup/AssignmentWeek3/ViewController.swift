//
//  ViewController.swift
//  AssignmentWeek3
//
//  Created by Max Kai on 2020/9/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var accountLabel: UILabel!
    @IBOutlet weak var accountText: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var checkLabel: UILabel!
    @IBOutlet weak var checkText: UITextField!
    @IBOutlet weak var segmenLabel: UISegmentedControl!
    

    func getStart() {
        accountText.backgroundColor = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
        passwordText.backgroundColor = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
        checkText.backgroundColor = UIColor(red: 145/255.0, green: 145/255.0, blue: 145/255.0, alpha: 1.0)
        checkLabel.textColor = UIColor(red: 145/255.0, green: 145/255.0, blue: 145/255.0, alpha: 1.0)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        getStart()
        checkText.isUserInteractionEnabled = false  // 開啟就先鎖定 checkText
        // 設定 segmenLabel被選取時文字黑色未選取時文字白色
        segmenLabel.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.white], for: .normal)
        segmenLabel.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.black], for: .selected)
    }
    
    func clear() {
            accountText.text = ""
            passwordText.text = ""
            checkText.text = ""
        }
    
    
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            getStart()
            checkText.isUserInteractionEnabled = false
            } else {
                checkLabel.textColor = UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0)
                checkText.backgroundColor = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
                checkText.isUserInteractionEnabled = true
                }
    }
    
    func showAlert(title: String, message: String, preferredStyle: UIAlertController.Style = .alert) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        let okAction = UIAlertAction(title: "OK", style: .default) {
            (_) in self.clear()  // 點擊ＯＫ後清空文字
        }
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    func logIn() throws {
            if accountText.text == "appworks_school@gmail.com", passwordText.text == "1234" {
                showAlert(title: "Log In", message: "Success", preferredStyle: .alert)
            } else {
                throw LogInError.failLogIn
            }
        }

    func signUp() throws {
        if accountText.text?.isEmpty == true {
            throw SignUpError.emptyAccount
        } else if passwordText.text?.isEmpty == true {
            throw SignUpError.emptyPassword
        } else if checkText.text?.isEmpty == true {
            throw SignUpError.emptyCheckPassword
        } else if passwordText.text != checkText.text {
            throw SignUpError.failSignUp
        } else if passwordText.text == checkText.text {
            showAlert(title: "Sign up", message: "Success", preferredStyle: .alert)
        } else {
            throw SignUpError.failSignUp
        }
    }
    
    
        enum LogInError: Error {
            case failLogIn
        }
        
        enum SignUpError: Error {
            case emptyAccount
            case emptyPassword
            case emptyCheckPassword
            case failSignUp
        }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        if segmenLabel.selectedSegmentIndex == 0 {
            do {
                try logIn()
                } catch LogInError.failLogIn {
                    showAlert(title: "Error", message: "Login fail")
                    }
                  catch {}
            } else {
                do {
                    try signUp()
                } catch SignUpError.emptyAccount {
                    showAlert(title: "Error", message: "Account should not be empty.")
                } catch SignUpError.emptyPassword {
                    showAlert(title: "Error", message: "Password should not be empty.")
                } catch SignUpError.emptyCheckPassword {
                    showAlert(title: "Error", message: "Check password should not be empty.")
                } catch SignUpError.failSignUp {
                    showAlert(title: "Error", message: "Signup fail")
                } catch {}
            }
    }
    
}
