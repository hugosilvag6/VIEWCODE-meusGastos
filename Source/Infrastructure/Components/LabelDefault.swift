//
//  LabelDefault.swift
//  MeusGastos
//
//  Created by Hugo Silva on 25/11/22.
//

import UIKit

class LabelDefault: UILabel {
   
   init(text: String) {
      super.init(frame: .zero) // zero pq quem vai definir o tamanho é as constraints
      initDefault(text: text, font: .systemFont(ofSize: 17))
   }
   init(text: String, font: UIFont) {
      super.init(frame: .zero)
      initDefault(text: text, font: font)
   }
   required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   
   private func initDefault (text: String, font: UIFont) {
      self.translatesAutoresizingMaskIntoConstraints = false
      self.text = text
      self.font = font
   }
}
