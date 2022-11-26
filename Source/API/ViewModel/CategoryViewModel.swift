//
//  CategoryViewModel.swift
//  MeusGastos
//
//  Created by Hugo Silva on 26/11/22.
//

import Foundation

typealias CategoriesViewModel = [CategoryViewModel]

class CategoryViewModel {
   let model: CategoryModel
   
   init (withModel model: CategoryModel) {
      self.model = model
   }
   
   var id: Int {
      model.id ?? 0
   }
   var name: String {
      model.name ?? String.empty
   }
   var about: String {
      model.about ?? String.empty
   }
   var uid: String {
      model.uid ?? String.empty
   }
   
   func mock () -> CategoriesViewModel {
      var mocks = CategoriesViewModel()
      let model = CategoryModel(id: 1, name: "Contas fixas", about: "Contas que se paga todo mês", uid: "CodandoComMoa")
      let viewModel = CategoryViewModel(withModel: model)
      mocks.append(viewModel)
      mocks.append(CategoryViewModel(withModel: CategoryModel(id: 2, name: "Salário", about: "Salário do mês", uid: "CodandoComMoa")))
      mocks.append(CategoryViewModel(withModel: CategoryModel(id: 3, name: "Sem categoria", about: "Lançamentos que ainda não possuem categoria", uid: "CodandoComMoa")))
      return mocks
   }
}
