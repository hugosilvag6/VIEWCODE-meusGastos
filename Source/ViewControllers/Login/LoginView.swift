//
//  LoginView.swift
//  MeusGastos
//
//  Created by Hugo Silva on 24/11/22.
//

import UIKit

class LoginView: UIView {
   // MARK: Elements Visual
   
   // MARK: LabelsDefault
   let titleLabel = LabelDefault(text: "Login", font: .systemFont(ofSize: 25, weight: .semibold))
   let emailLabel = LabelDefault(text: "Email")
   let passwordLabel = LabelDefault(text: "Senha")
   
   // MARK: TextfieldsDefault
   let emailTextfield = TextfieldDefault(placeholder: "Informe seu email")
   let passwordTextfield = TextfieldDefault(placeholder: "Informe sua senha")

   // MARK: ButtonDefault
   let buttonLogin: UIButton = {
      let bt = UIButton()
      bt.translatesAutoresizingMaskIntoConstraints = false
      bt.setTitle("Entrar", for: .normal)
      bt.backgroundColor = .blue
      bt.layer.cornerRadius = 15
      return bt
   }()
   let buttonRegister: UIButton = {
      let bt = UIButton()
      bt.translatesAutoresizingMaskIntoConstraints = false
      bt.setTitle("Registrar", for: .normal)
      bt.backgroundColor = .blue
      bt.layer.cornerRadius = 15
      return bt
   }()
   
   // MARK: Inits
   override init(frame: CGRect) {
      super.init(frame: frame)
      setElementsVisual()
   }
   required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   private func setElementsVisual() {
      setTitle()
      setEmail()
      setPassword()
      setButtonLogin()
      setButtonRegister()
   }
   private func setTitle() {
      self.addSubview(self.titleLabel)
      NSLayoutConstraint.activate([
         titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 50),
         titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
         titleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
      ])
   }
   private func setEmail() {
      self.addSubview(self.emailLabel)
      self.addSubview(self.emailTextfield)
      NSLayoutConstraint.activate([
         emailLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 30),
         emailLabel.leftAnchor.constraint(equalTo: self.titleLabel.leftAnchor),
         emailLabel.rightAnchor.constraint(equalTo: self.titleLabel.rightAnchor),
         
         emailTextfield.topAnchor.constraint(equalTo: self.emailLabel.bottomAnchor, constant: 12),
         emailTextfield.leftAnchor.constraint(equalTo: self.titleLabel.leftAnchor),
         emailTextfield.rightAnchor.constraint(equalTo: self.titleLabel.rightAnchor),
         emailTextfield.heightAnchor.constraint(equalToConstant: 40)
      ])
   }
   private func setPassword() {
      self.addSubview(self.passwordLabel)
      self.addSubview(self.passwordTextfield)
      NSLayoutConstraint.activate([
         passwordLabel.topAnchor.constraint(equalTo: self.emailTextfield.bottomAnchor, constant: 30),
         passwordLabel.leftAnchor.constraint(equalTo: self.titleLabel.leftAnchor),
         passwordLabel.rightAnchor.constraint(equalTo: self.titleLabel.rightAnchor),
         
         passwordTextfield.topAnchor.constraint(equalTo: self.passwordLabel.bottomAnchor, constant: 12),
         passwordTextfield.leftAnchor.constraint(equalTo: self.titleLabel.leftAnchor),
         passwordTextfield.rightAnchor.constraint(equalTo: self.titleLabel.rightAnchor),
         passwordTextfield.heightAnchor.constraint(equalToConstant: 40)
      ])
   }
   private func setButtonLogin() {
      self.addSubview(self.buttonLogin)
      NSLayoutConstraint.activate([
         buttonLogin.topAnchor.constraint(equalTo: passwordTextfield.bottomAnchor, constant: 30),
         buttonLogin.leftAnchor.constraint(equalTo: self.titleLabel.leftAnchor),
         buttonLogin.rightAnchor.constraint(equalTo: self.titleLabel.rightAnchor),
         buttonLogin.heightAnchor.constraint(equalToConstant: 40)
      ])
   }
   private func setButtonRegister() {
      self.addSubview(self.buttonRegister)
      NSLayoutConstraint.activate([
         buttonRegister.topAnchor.constraint(equalTo: buttonLogin.bottomAnchor, constant: 30),
         buttonRegister.leftAnchor.constraint(equalTo: self.titleLabel.leftAnchor),
         buttonRegister.rightAnchor.constraint(equalTo: self.titleLabel.rightAnchor),
         buttonRegister.heightAnchor.constraint(equalToConstant: 40)
      ])
   }
}
