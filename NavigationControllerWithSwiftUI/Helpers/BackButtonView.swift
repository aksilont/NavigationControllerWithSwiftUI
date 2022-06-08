//
//  BackButtonView.swift
//  NavigationControllerWithSwiftUI
//
//  Created by Aksilont on 08.06.2022.
//

import SwiftUI

struct BackButtonView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        Button {
            dismiss()
        } label: {
            Text("Go to back").foregroundColor(.black)
        }
    }
}
