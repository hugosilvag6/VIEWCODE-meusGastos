//
//  TransactionModel.swift
//  MeusGastos
//
//  Created by Hugo Silva on 26/11/22.
//

import Foundation

struct TransactionModel: Codable {
   let id: Int?
   let name: String?
   let category: CategoryModel?
   let date: Date?
   let amount: Double?
   let uid: String?
   let type: Int?
}
