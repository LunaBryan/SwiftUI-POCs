//
//  ContentView.swift
//  Angular Gradient
//
//  Created by Jose Luna on 2/13/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var degress: CGFloat = 0.0
    
    var body: some View {
        ZStack {
            
            AngularGradient(gradient: Gradient(colors: [.blue, .black]),
                            center: .center,
                            angle: .degrees(degress))
                .onAppear {
                    withAnimation(.linear(duration: 3).repeatForever(autoreverses: false)) {
                        degress = 360
                    }
                }
            
            VStack {
                Group {
                    Text("Morning")
                    
                    Spacer()
                    
                    Text("Night")
                }
                .font(.title)
                .foregroundStyle(.white)
                .padding(.vertical, 100)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    HomeView()
}
