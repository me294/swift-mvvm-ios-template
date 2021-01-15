//
//  Application.swift
//  SwiftMVVMTemplate
//
//  Created by m2 on 1/15/21.
//

import UIKit

final class Application: NSObject {
    static let shared = Application()

    var window: UIWindow?
    var provider: Any?
    
    let navigator: Navigator

    private override init() {
        navigator = Navigator.default
        super.init()
        updateProvider()
    }

    private func updateProvider() {
      
    }

    func presentInitialScreen(in window: UIWindow?) {
        updateProvider()
        guard let window = window, let _ = provider else { return }
        self.window = window

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { [weak self] in
            let viewModel = HomeViewModel()
            self?.navigator.show(segue: .home(viewModel: viewModel), sender: nil)
        }
    }

}
