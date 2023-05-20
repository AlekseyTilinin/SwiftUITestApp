//
//  SettingsView.swift
//  SwiftUITestApp
//
//  Created by Aleksey on 20.05.2023.
//

import SwiftUI

struct SettingsView: View {
    @State var pushOn = false
    @State var darkTheme = false

    @State var sliderValue = 50.0
    @State private var isChanging = false

    var body: some View {

        Form {
            Section {
                Toggle("Push Notifications", isOn: $pushOn)
                Toggle("Dark Theme", isOn: $darkTheme)
            }

            Section {
                Slider(value: $sliderValue, in: 0 ... 100) { changed in
                    isChanging = changed
                }
                Text("Slider Value: \(Int(sliderValue))")
            }

            Section{
                VStack(alignment: .leading, spacing: 10) {
                    Text(isChanging ? "true" : "false")
                        .bold()
                        .foregroundColor(isChanging ? .red : .green)
                    Text("Font")
                        .font(.callout)
                        .italic()
                }
            }
        }

    }
}
struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
