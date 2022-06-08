//
//  StartViewController.swift
//  NavigationControllerWithSwiftUI
//
//  Created by Aksilont on 07.06.2022.
//

import SwiftUI

class StartViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    lazy var mainStackView: UIStackView = {
        let buttonSUI = UIButton()
        buttonSUI.setTitle("Go to main use SwiftUI", for: .normal)
        buttonSUI.setTitleColor(.label, for: .normal)
        buttonSUI.addTarget(self, action: #selector(goToMainTabSwiftUI), for: .touchUpInside)
        
        let buttonSUIPresent = UIButton()
        buttonSUIPresent.setTitle("Go to main use SwiftUI (present)", for: .normal)
        buttonSUIPresent.setTitleColor(.label, for: .normal)
        buttonSUIPresent.addTarget(self, action: #selector(goToMainTabSwiftUIPresentStyle), for: .touchUpInside)
        
        let buttonUIKit = UIButton()
        buttonUIKit.setTitle("Go to main use UIKit", for: .normal)
        buttonUIKit.setTitleColor(.label, for: .normal)
        buttonUIKit.addTarget(self, action: #selector(goToMainTabUIKit), for: .touchUpInside)
        
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20.0
        stackView.distribution = .fill
        stackView.addArrangedSubview(buttonSUI)
        stackView.addArrangedSubview(buttonSUIPresent)
        stackView.addArrangedSubview(buttonUIKit)
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(mainStackView)
    }
    
    override func viewDidLayoutSubviews() {
        mainStackView.center = view.center
    }
    
    @objc private func goToMainTabSwiftUI() {
        let mainVC = UIHostingControllerCustom(rootView: MainTabView())
        navigationController?.pushViewController(mainVC, animated: true)
    }
    
    @objc private func goToMainTabSwiftUIPresentStyle() {
        let mainVC = UIHostingControllerCustom(rootView: MainTabView())
        mainVC.modalPresentationStyle = .fullScreen
        present(mainVC, animated: true)
    }
    
    @objc private func goToMainTabUIKit() {
        navigationController?.pushViewController(MainTabController(), animated: true)
    }
    
}
