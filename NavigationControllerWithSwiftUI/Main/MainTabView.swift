//
//  MainTabView.swift
//  NavigationControllerWithSwiftUI
//
//  Created by Aksilont on 07.06.2022.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            GreenView()
                .tabItem {
                    Image(systemName: "house")
                }
            RedView()
                .tabItem {
                    Image(systemName: "waveform")
                }
            BlueView()
                .tabItem {
                    Image(systemName: "ellipsis")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
