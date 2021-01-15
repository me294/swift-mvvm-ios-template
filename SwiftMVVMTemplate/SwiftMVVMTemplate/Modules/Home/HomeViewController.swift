//
//  HomeViewController.swift
//  SwiftMVVMTemplate
//
//  Created by m2 on 1/15/21.
//

import Foundation

class HomeViewController: ViewController {
    
    static let identifier: String = String(describing: HomeViewController.self)
    
    override func makeUI() {
        super.makeUI()
    }
    
    override func bindViewModel() {
        super.bindViewModel()
        guard let _ = viewModel as? HomeViewModel else { return }
    }
}
