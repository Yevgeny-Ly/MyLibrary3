// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

public class AutorizationTextField: UITextField {
    private func makeTextFields(textField: UITextField, placeholder: String, leftIcon: UIImage) -> UITextField {
        textField.placeholder = placeholder
        textField.backgroundColor = .white
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 12
        textField.layer.borderColor = UIColor.gray.cgColor
        let leftView = UIView()
        let imageView = UIImageView()
        leftView.addSubview(imageView)
        leftView.frame.size = CGSize(width: 30, height: 30)
        imageView.frame.size = CGSize(width: 18, height: 18)
        imageView.center = leftView.center
        imageView.image = leftIcon
        textField.leftView = leftView
        textField.leftViewMode = .always
        return self
    }
}
