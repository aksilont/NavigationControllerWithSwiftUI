//
//  UIHostingControllerCustom.swift
//  NavigationControllerWithSwiftUI
//
//  Created by Aksilont on 07.06.2022.
//

import SwiftUI

class UIHostingControllerCustom<Content>: UIHostingController<Content> where Content: View {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}
