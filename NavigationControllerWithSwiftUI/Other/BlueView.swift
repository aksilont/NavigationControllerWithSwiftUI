//
//  BlueView.swift
//  NavigationControllerWithSwiftUI
//
//  Created by Aksilont on 07.06.2022.
//

import SwiftUI

struct BlueView: View {
    var body: some View {
        ZStack {
            Color.blue.opacity(0.5)
            BackButtonView()
        }
    }
}

struct BlueView_Previews: PreviewProvider {
    static var previews: some View {
        BlueView()
    }
}
