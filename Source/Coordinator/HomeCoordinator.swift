//
//  HomeCoordinator.swift
//  MeusGastos
//
//  Created by Hugo Silva on 25/11/22.
//

import UIKit

class HomeCoordinator: Coordinator {
   let navigationController: UINavigationController
   
   init (navigationController: UINavigationController) {
      self.navigationController = navigationController
   }
   
   func start() {
      let viewController = HomeViewController()
      self.navigationController.pushViewController(viewController, animated: true)
   }
   
}
