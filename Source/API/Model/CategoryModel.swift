//
//  CategoryModel.swift
//  MeusGastos
//
//  Created by Hugo Silva on 26/11/22.
//

import Foundation

typealias CategoriesModel = [CategoryModel]

struct CategoryModel: Codable {
   let id: Int?
   let name: String?
   let about: String?
   let uid: String?
   
   init () {
      self.id = 0
      self.name = String.empty
      self.about = String.empty
      self.uid = String.empty
   }
   init (id: Int, name: String, about: String, uid: String) {
      self.id = id
      self.name = name
      self.about = about
      self.uid = uid
   }
}
