//
//  ContentView.swift
//  Redacted View Modifier
//
//  Created by Bryan Luna on 10/1/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showSkeleton: Bool = true
    
    var body: some View {
        VStack {
            List(0 ..< 10) { index in
                Text("Row \(index)")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.gray.opacity(0.1))
            }
            .redacted(
                reason: showSkeleton
                ? .placeholder
                : .invalidated
            )
            
            Button("Show / Hide Skeleton", action: updateSkeletonState)
                .buttonStyle(.bordered)
                .padding()
        }
    }
    
    private func updateSkeletonState() {
        withAnimation {
            showSkeleton.toggle()
        }
    }
}

#Preview {
    ContentView()
}
