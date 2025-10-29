//
//  View+Stretchy.swift
//  stretchy-effect-swiftui
//
//  Created by Jose Luna on 9/6/25.
//

import SwiftUI

// MARK: - Extension

extension View {
    func stretchy() -> some View {
        modifier(StretchyModifier())
    }
}

// MARK: - View Modifier

struct StretchyModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .visualEffect { effect, proxy in
                let height = proxy.size.height
                let minY = proxy.frame(in: .scrollView).minY
                let maxOffset = max(.zero, minY)
                let scaleFactor = (height + maxOffset) / height
                
                return effect
                    .scaleEffect(
                        x: scaleFactor,
                        y: scaleFactor,
                        anchor: .bottom
                    )
            }
    }
}
