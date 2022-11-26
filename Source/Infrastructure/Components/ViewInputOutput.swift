//
//  ViewInputOutput.swift
//  MeusGastos
//
//  Created by Hugo Silva on 26/11/22.
//

import UIKit

enum TypeEntry {
   case input, output
}

class ViewInputOutput: UIView {
   var typeEntry: TypeEntry
   // MARK: - Closures
   
   // MARK: - Visual Elements
   lazy var icon: UIImageView = {
      let img = UIImageView()
      img.translatesAutoresizingMaskIntoConstraints = false
      img.tintColor = .black
      return img
   }()
   lazy var valueLabel = LabelDefault(text: "", font: .systemFont(ofSize: 25, weight: .bold))
   lazy var subtitleLabel = LabelDefault(text: "", font: .systemFont(ofSize: 14, weight: .light))
   
   // MARK: - Inits
   init(typeEntry: TypeEntry) {
      self.typeEntry = typeEntry
      super.init(frame: .zero)
      setElementsVisual()
   }
   required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   func setValue(value: Double) {
      valueLabel.text = String(value)
   }
   private func setElementsVisual() {
      setTypeEntry()
      setIcon()
      setValueLabel()
      setSubtitle()
   }
   private func setTypeEntry () {
      switch self.typeEntry {
      case .input:
         icon.image = UIImage(systemName: "arrow.up.circle.fill")?.withRenderingMode(.alwaysTemplate)
         subtitleLabel.text = "Entradas do mês"
         self.backgroundColor = .inputsColor
      case .output:
         icon.image = UIImage(systemName: "arrow.down.circle.fill")?.withRenderingMode(.alwaysTemplate)
         subtitleLabel.text = "Saídas do mês"
         self.backgroundColor = .outputsColor
      }
   }
   private func setIcon(){
      self.addSubview(self.icon)
      NSLayoutConstraint.activate([
         self.icon.topAnchor.constraint(equalTo: self.topAnchor, constant: 12),
         self.icon.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
         self.icon.heightAnchor.constraint(equalToConstant: 24),
         self.icon.widthAnchor.constraint(equalToConstant: 24)
      ])
   }
   private func setValueLabel(){
      self.addSubview(self.valueLabel)
      self.valueLabel.textAlignment = .center
      self.valueLabel.text = "R$ 150000000,00"
      self.valueLabel.adjustsFontSizeToFitWidth = true
      self.valueLabel.minimumScaleFactor = 0.5
      NSLayoutConstraint.activate([
         self.valueLabel.topAnchor.constraint(equalTo: self.icon.bottomAnchor, constant: 20),
         self.valueLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
         self.valueLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12)
      ])
   }
   private func setSubtitle(){
      self.addSubview(self.subtitleLabel)
      self.subtitleLabel.textAlignment = .center
      self.subtitleLabel.adjustsFontSizeToFitWidth = true
      self.subtitleLabel.minimumScaleFactor = 0.5
      NSLayoutConstraint.activate([
         self.subtitleLabel.topAnchor.constraint(equalTo: self.valueLabel.bottomAnchor, constant: 4),
         self.subtitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
         self.subtitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12)
      ])
   }
}
