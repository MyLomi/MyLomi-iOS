//
//  MyLomiTextField.swift
//  MyLomi
//
//  Created by Yohannes on 6/2/24.
//
import UIKit

@IBDesignable


class MyLomiTextField: UITextField {
    
    @IBInspectable var upperLabel: UILabel? {
        didSet{
            updateUpperView()
        }
    }
    
    @IBInspectable var upperPadding : CGFloat = 0 {
        didSet{
            updateUpperView()
        }
    }
    
    @IBInspectable var leftImage : UIImage? {
        didSet {
            updateLeftView()
        }
    }
    
    @IBInspectable var leftPadding : CGFloat = 0 {
        didSet {
            updateLeftView()
        }
    }
    
    @IBInspectable var rightImage : UIImage? {
        didSet {
            updateRightView()
        }
    }
    
    @IBInspectable var rightPadding : CGFloat = 0 {
        didSet {
            updateRightView()
        }
    }
    
    @IBInspectable var cornerRadiusOfField : CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadiusOfField
        }
    }
    
    
    
    func updateUpperView(){
        if upperLabel != nil {
            let label = UILabel(frame: CGRect(x: 46, y: 5, width: 120, height: 17))
            label.font = .systemFont(ofSize: 12, weight: .regular)
            label.textColor = UIColor(named: "LameTextColor")
            label.text = placeholder
            
            self.addSubview(label)
        }
    }
    
    func updateLeftView() {
        self.delegate = self
        if let image = leftImage {
            leftViewMode = .always
            
            // assigning image
            let imageView = UIImageView(frame: CGRect(x: leftPadding, y: 0, width: 20, height: 20))
            imageView.image = image
            
            var width = leftPadding + 20
            
            if borderStyle == UITextField.BorderStyle.none || borderStyle == UITextField.BorderStyle.line {
                width += 5
            }
            
            let view = UIView(frame: CGRect(x: 0, y: 0, width: width, height: 20)) // has 5 point higher in width in imageView
            view.addSubview(imageView)
            
            
            leftView = view
            
        } else {
            // image is nill
            leftViewMode = .never
        }
    }
    
    func updateRightView() {
        if let image = rightImage {
            rightViewMode = .always
            
            // assigning image
            let imageView = UIImageView(frame: CGRect(x: rightPadding, y: 0, width: 20, height: 20))
            imageView.image = image
            
            var width = rightPadding + 20
            
            if borderStyle == UITextField.BorderStyle.none || borderStyle == UITextField.BorderStyle.line {
                width -= 5
            }
            
            let view = UIView(frame: CGRect(x: 0, y: 0, width: width, height: 20)) // has 5 point higher in width in imageView
            view.addSubview(imageView)
            
            
            rightView = view
            
        } else {
            // image is nill
            rightViewMode = .never
        }
    }
    
}


extension MyLomiTextField: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if let myLomiTextField = textField as? MyLomiTextField {
            myLomiTextField.upperLabel = UILabel()
            myLomiTextField.placeholder = ""
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
