//
//  RedView.swift
//  NavigationControllerWithSwiftUI
//
//  Created by Aksilont on 07.06.2022.
//

import SwiftUI

struct RedView: View {
    var body: some View {
        ZStack {
            Color.red.opacity(0.5)
            BackButtonView()
        }
    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView()
    }
}
