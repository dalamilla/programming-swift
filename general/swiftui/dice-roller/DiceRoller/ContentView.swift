//
//  ContentView.swift
//  DiceRoller
//
//  Created by Daniel Alamilla on 30/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var currentDiceImage: String = "dice_1"
    var body: some View {
        VStack(spacing: 20) {
            Image(currentDiceImage)
                .resizable()
                . frame(width: 200, height: 200)
            Button("Roll"){
                let rolling: Int = Int.random(in: 1...6)
                currentDiceImage = "dice_\(rolling)"
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.extraLarge)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
