//
//  Post.swift
//  SwiftUITestApp
//
//  Created by Aleksey on 20.05.2023.
//

import SwiftUI

struct Post: Identifiable {
     let id: UUID = UUID()
     let title: String
     let image: Image
     let description: String
 }
