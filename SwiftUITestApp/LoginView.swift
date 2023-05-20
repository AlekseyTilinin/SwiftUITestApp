//
//  LoginView.swift
//  SwiftUITestApp
//
//  Created by Aleksey on 20.05.2023.
//

import SwiftUI

struct LoginView: View {
    @Binding var logged: Bool
    
    @State var login: String = ""
    @State var password: String = ""
    
    var body: some View {
            
            VStack() {
                Image("logo")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .shadow(radius: 10)
                    .padding(.top, 20)
                
                VStack(spacing: -0.5) {
                    TextField("Email or phone", text: $login)
                        .modifier(TextFielder())
                    
                    SecureField("Password", text: $password)
                        .modifier(TextFielder())
                }
                .cornerRadius(12)
                .padding(.top, 60)
                .padding(16)
                
                Button(action: {
                    self.logged = true
                }) {
                    Text("Log In")
                        .frame(height: 50)
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity, maxHeight: 50)
                .background(Color(.systemBlue))
                .cornerRadius(12)
                .padding(16)
                
                Spacer()
            }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(logged: .constant(false))
    }
}
