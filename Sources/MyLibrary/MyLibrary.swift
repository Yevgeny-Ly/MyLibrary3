// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit
public class AutorizationTextField: UITextField {
    public struct Model {
          public var placeholder: String?
          public init(placeholder: String?) {
              self.placeholder = placeholder
          }
      }

      public override init(frame: CGRect) {
          super.init(frame: frame)
          setupField()
      }
      
      required init?(coder: NSCoder) {
          super.init(coder: coder)
          setupField()
      }
      
      private func setupField() {
          self.backgroundColor = .white
          self.layer.borderWidth = 1
          self.layer.cornerRadius = 12
          self.leftViewMode = .always
      }
      
      public func models(model: Model) {
          placeholder = model.placeholder
      }

}
