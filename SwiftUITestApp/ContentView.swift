//
//  ContentView.swift
//  SwiftUITestApp
//
//  Created by Aleksey on 20.05.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isLogin = false
    
    var body: some View {
        TabView() {
            if isLogin {
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.fill")
                    }
            } else {
                LoginView(logged: $isLogin)
                    .tabItem {
                        Label("Login", systemImage: "person")
                    }
            }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "menucard")
                }
            InfoView()
                .tabItem {
                    Label("Anthropology", systemImage: "globe")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
