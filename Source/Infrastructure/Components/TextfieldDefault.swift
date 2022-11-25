//
//  TextfieldDefault.swift
//  MeusGastos
//
//  Created by Hugo Silva on 25/11/22.
//

import UIKit

class TextfieldDefault: UITextField {
   
   init (placeholder: String) {
      super.init(frame: .zero)
      initDefault(placeholder: placeholder)
   }
   required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   
   private func initDefault (placeholder: String) {
      self.translatesAutoresizingMaskIntoConstraints = false
      self.layer.borderColor = UIColor.black.cgColor
      self.layer.borderWidth = 1
      self.backgroundColor = .lightGray
      self.placeholder = placeholder
   }
}
