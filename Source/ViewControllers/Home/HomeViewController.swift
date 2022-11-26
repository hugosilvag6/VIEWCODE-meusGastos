//
//  HomeViewController.swift
//  MeusGastos
//
//  Created by Hugo Silva on 25/11/22.
//

import UIKit

class HomeViewController: ViewControllerDefault {
   
   lazy var homeView: HomeView = {
      let view = HomeView()
      view.backgroundColor = .white
      return view
   }()
   
   override func loadView() {
      self.view = homeView
   }
   
   override func viewDidAppear(_ animated: Bool) {
      super.viewDidAppear(animated)
      self.title = "Teste"
   }
   
}
