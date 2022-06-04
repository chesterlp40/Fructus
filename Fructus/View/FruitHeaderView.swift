//
//  FruitHeaderView.swift
//  FruitHeaderView
//
//  Created by Ezequiel Rasgido on 11/09/2021.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: - PROPERTIES Section

    var fruit: Fruit

    @State private var isAnimatedImage = false

    //MARK: - BODY Section
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(
                    colors: fruit.gradientColors
                ),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )

            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(
                    color: Color(
                        red: 0,
                        green: 0,
                        blue: 0,
                        opacity: 0.35
                    ),
                    radius: 8,
                    x: 6,
                    y: 8
                )
                .padding(
                    .vertical,
                    20
                )
                .scaleEffect(
                    isAnimatedImage ? 1.0 : 0.6
                )
        } //: ZSTACK
        .frame(
            height: 440
        )
        .onAppear() {
            withAnimation(
                .easeOut(
                    duration: 0.5
                )
            ) {
                self.isAnimatedImage = true
            }
        }
    }
}

//MARK: - PREVIEW Section
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(
            fruit: fruitsData[1]
        )
            .previewLayout(
                .fixed(
                    width: 375,
                    height: 440
                )
            )
    }
}
