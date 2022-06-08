//
//  GreenView.swift
//  NavigationControllerWithSwiftUI
//
//  Created by Aksilont on 07.06.2022.
//

import SwiftUI

struct GreenView: View {
    var body: some View {
        ZStack {
            Color.green.opacity(0.5)
            BackButtonView()
        }
    }
}

struct GreenView_Previews: PreviewProvider {
    static var previews: some View {
        GreenView()
    }
}
