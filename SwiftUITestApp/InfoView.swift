//
//  InfoView.swift
//  SwiftUITestApp
//
//  Created by Aleksey on 20.05.2023.
//

import SwiftUI

struct InfoView: View {
     var body: some View {
         NavigationView {
             List(data) { post in
                 NavigationLink {
                     InfoDetails(post: post)
                 } label: {
                     InfoRow(post: post)
                 }
             }
                 .navigationTitle("Soccer players")
                 .listStyle(.plain)
         }

     }
 }

 struct InfoView_Previews: PreviewProvider {
     static var previews: some View {
         InfoView()
     }
 }
