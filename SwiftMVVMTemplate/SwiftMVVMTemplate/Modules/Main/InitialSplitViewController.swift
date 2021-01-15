//
//  InitialSplitViewController.swift
//  SwiftMVVMTemplate
//
//  Created by m2 on 1/15/21.
//

import UIKit

class InitialSplitViewController: UIViewController {
    
    override func viewDidLoad() {
        DispatchQueue.main.async { [weak self] in
            Navigator.default.show(segue: .home(viewModel: HomeViewModel()), sender: self, transition: .navigation(type: .none))
        }
    }
}
