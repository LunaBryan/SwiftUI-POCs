//
//  ContentView.swift
//  stretchy-effect-swiftui
//
//  Created by Bryan Luna on 9/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            Image(.appleCompany)
                .resizable()
                .scaledToFit()
                .stretchy()
            
            ForEach(0 ..< 15) { index in
                Button { }
                label: {
                    Text("Cell sample \(index)")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.secondary)
                        .clipShape(.capsule)
                }
                .buttonStyle(.plain)
            }
            .padding(.horizontal)
        }
        .scrollTargetLayout(isEnabled: false)
        .ignoresSafeArea()
    }
}

// MARK: - Preview

#Preview {
    ContentView()
}
