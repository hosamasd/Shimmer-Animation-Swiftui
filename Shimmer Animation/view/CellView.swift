//
//  CellView.swift
//  Shimmer Animation
//
//  Created by Hossam on 11/24/20.
//

import SwiftUI

struct CellView : View {
    
    var pic : String
    
    var body : some View{
        
        Image(pic)
        .resizable()
        .frame(height: 200)
        .cornerRadius(15)
        .padding(.horizontal)
        .padding(.top)
    }
}
