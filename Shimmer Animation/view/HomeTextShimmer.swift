//
//  HomeTextShimmer.swift
//  Shimmer Animation
//
//  Created by Hossam on 11/24/20.
//

import SwiftUI

struct HomeTextShimmer:View {
    
    
    @State var show:Bool = false
    
    var body: some View {
        ZStack {
            
            Color.black.edgesIgnoringSafeArea(.all)
            
            ZStack {
                
                Text("Hosam ")
                    .foregroundColor(Color.white.opacity(0.4))
                    .font(.system(size: 40))
                   
                
                Text("Hosam ")
                    .foregroundColor(Color.white)
                    .font(.system(size: 40))
                    .mask(
                    
                        Capsule()
                            .fill(LinearGradient(gradient: .init(colors: [.clear,.white,.clear]), startPoint: .top, endPoint: .bottom))
                            .rotationEffect(.init(degrees: 30))
                            .offset(x: show ? 180 : -130)
                    
                    )
            }
            
        }
        .onAppear{
            
            withAnimation(Animation.default.speed(0.15).delay(0).repeatForever(autoreverses: false)) {
                
                self.show.toggle()
            }
            
        }
        
        
    }
}
