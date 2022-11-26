//
//  RegisterView.swift
//  MeusGastos
//
//  Created by Hugo Silva on 25/11/22.
//

import UIKit

class RegisterView: UIView {
   var onLoginTap: (() -> Void)?
   // MARK: LabelsDefault
   let titleLabel = LabelDefault(text: "Cadastro de usuário", font: .systemFont(ofSize: 25, weight: .semibold))
   let emailLabel = LabelDefault(text: "Email")
   let passwordLabel = LabelDefault(text: "Senha")
   
   // MARK: TextfieldsDefault
   let emailTextfield = TextfieldDefault(placeholder: "Informe seu email", keyboardType: .emailAddress)
   let passwordTextfield = TextfieldDefault(placeholder: "Informe sua senha", isSecureTextEntry: true)
   
   // MARK: ButtonDefault
   let buttonLogin = ButtonDefault(title: "Entrar")
   let buttonRegister = ButtonDefault(title: "Registrar")
   
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
      setButtonRegister()
      setButtonLogin()
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
   private func setButtonRegister() {
      self.addSubview(self.buttonRegister)
      NSLayoutConstraint.activate([
         buttonRegister.topAnchor.constraint(equalTo: self.passwordTextfield.bottomAnchor, constant: 30),
         buttonRegister.leftAnchor.constraint(equalTo: self.titleLabel.leftAnchor),
         buttonRegister.rightAnchor.constraint(equalTo: self.titleLabel.rightAnchor),
         buttonRegister.heightAnchor.constraint(equalToConstant: 40)
      ])
   }
   private func setButtonLogin() {
      self.addSubview(self.buttonLogin)
      self.buttonLogin.addTarget(self, action: #selector(buttonLoginTap), for: .touchUpInside)
      NSLayoutConstraint.activate([
         buttonLogin.topAnchor.constraint(equalTo: self.buttonRegister.bottomAnchor, constant: 30),
         buttonLogin.leftAnchor.constraint(equalTo: self.titleLabel.leftAnchor),
         buttonLogin.rightAnchor.constraint(equalTo: self.titleLabel.rightAnchor),
         buttonLogin.heightAnchor.constraint(equalToConstant: 40)
      ])
   }
   @objc func buttonLoginTap(){
      self.onLoginTap?()
   }
}
