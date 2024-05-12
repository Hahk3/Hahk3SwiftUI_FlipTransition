//
//  ButtonStyle_scaleBrightness.swift
//  Hahk3SwiftUI_FlipTransition
//
//  Created by Hakjin Kim on 5/12/24.
//

import SwiftUI

struct ButtonStyle_scale: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
            .shadow(color: .gray.opacity(configuration.isPressed ? 0 : 0.3), radius: 10, x: 0, y: 2)
            .animation(.smooth(duration:0.3), value: configuration.isPressed)
            .sensoryFeedback(configuration.isPressed ? .selection : .start, trigger: configuration.isPressed)
            .animation(nil, value: configuration.isPressed)
    }
}
