//
//  HomeView.swift
//  MeusGastos
//
//  Created by Hugo Silva on 25/11/22.
//

import UIKit

class HomeView: UIView {
   
   // MARK: - Constants
   let inputOutputDistance: CGFloat = 12
   var inputOutputWidth: CGFloat {
      let width = UIScreen.main.bounds.width - (3*self.inputOutputDistance)
      return width/2
   }
   
   // MARK: - Closures
   
   // MARK: - Visual Elements
   lazy var segmentedControl: UISegmentedControl = {
      let segment = UISegmentedControl(items: ["Essa semana", "Esse mês", "Todos"])
      segment.translatesAutoresizingMaskIntoConstraints = false
      segment.selectedSegmentIndex = 1
      segment.backgroundColor = .lightGray
      return segment
   }()
   lazy var viewInputs: ViewInputOutput = {
      let view = ViewInputOutput(typeEntry: .input)
      view.translatesAutoresizingMaskIntoConstraints = false
      view.layer.cornerRadius = 10
      return view
   }()
   lazy var viewOutputs: ViewInputOutput = {
      let view = ViewInputOutput(typeEntry: .output)
      view.translatesAutoresizingMaskIntoConstraints = false
      view.layer.cornerRadius = 10
      return view
   }()
   
   // MARK: - Inits
   override init(frame: CGRect) {
      super.init(frame: frame)
      setElementsVisual()
   }
   required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   private func setElementsVisual() {
      setSegmented()
      setViewInputs()
      setViewOutputs()
      setValue()
   }
   private func setValue() {
      self.viewInputs.setValue(value: 2450)
      self.viewOutputs.setValue(value: 7689)
   }
   private func setSegmented () {
      self.addSubview(self.segmentedControl)
      NSLayoutConstraint.activate([
         segmentedControl.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
         segmentedControl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
         segmentedControl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12)
      ])
   }
   private func setViewInputs(){
      self.addSubview(self.viewInputs)
      NSLayoutConstraint.activate([
         viewInputs.topAnchor.constraint(equalTo: self.segmentedControl.bottomAnchor, constant: 16),
         viewInputs.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: inputOutputDistance),
         viewInputs.widthAnchor.constraint(equalToConstant: inputOutputWidth),
         viewInputs.heightAnchor.constraint(equalToConstant: 150)
      ])
   }
   private func setViewOutputs(){
      self.addSubview(self.viewOutputs)
      NSLayoutConstraint.activate([
         viewOutputs.topAnchor.constraint(equalTo: self.segmentedControl.bottomAnchor, constant: 16),
         viewOutputs.leadingAnchor.constraint(equalTo: self.viewInputs.trailingAnchor, constant: inputOutputDistance),
         viewOutputs.widthAnchor.constraint(equalToConstant: inputOutputWidth),
         viewOutputs.heightAnchor.constraint(equalToConstant: 150)
      ])
   }
}
