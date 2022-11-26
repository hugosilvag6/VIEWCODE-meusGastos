//
//  TransactionViewModel.swift
//  MeusGastos
//
//  Created by Hugo Silva on 26/11/22.
//

import Foundation

typealias TransactionsViewModel = [TransactionViewModel]

struct TransactionViewModel {
   let model: TransactionModel
   
   init(withModel model: TransactionModel) {
      self.model = model
   }
   
   var id: Int {
      model.id ?? 0
   }
   var name: String {
      model.name ?? String.empty
   }
   var category: CategoryModel {
      model.category ?? CategoryModel()
   }
   var date: Date {
      model.date ?? Date()
   }
   var amount: Double {
      model.amount ?? 0
   }
   var uid: String {
      model.uid ?? String.empty
   }
   var type: TypeEntry {
      model.type == 0 ? TypeEntry.input : TypeEntry.output
   }
   
   func mock () -> TransactionsViewModel {
      var mocks = TransactionsViewModel()
      mocks.append(TransactionViewModel(withModel: TransactionModel(id: 1, name: "Salario de maio", category: CategoryModel(id: 2, name: "Salário do mês", about: "", uid: "CodandoComMoa"), date: Date(), amount: 5000, uid: "CodandoComMoa", type: 0)))
      mocks.append(TransactionViewModel(withModel: TransactionModel(id: 1, name: "Água de maio", category: CategoryModel(id: 2, name: "Despesas fixas", about: "", uid: "CodandoComMoa"), date: Date(), amount: 120, uid: "CodandoComMoa", type: 1)))
      return mocks
   }
}
