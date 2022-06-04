//
//  FruitsRowView.swift
//  FruitsRowView
//
//  Created by Ezequiel Rasgido on 10/09/2021.
//

import SwiftUI

struct FruitsRowView: View {
    //MARK: - PROPERTIES Section

    var fruit: Fruit

    //MARK: - BODY Section
    var body: some View {
        HStack {
            Image(
                fruit.image
            )
                .renderingMode(
                    .original
                )
                .resizable()
                .scaledToFit()
                .frame(
                    width: 80,
                    height: 80,
                    alignment: .center
                )
                .shadow(
                    color: Color(
                        red: 0,
                        green: 0,
                        blue: 0,
                        opacity: 0.3
                    ),
                    radius: 3,
                    x: 2,
                    y: 2
                )
                .background(
                    LinearGradient(
                        gradient: Gradient(
                            colors: fruit.gradientColors
                        ),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .cornerRadius(8)

            VStack(
                alignment: .leading,
                spacing: 5
            ) {
                Text(
                    fruit.title
                )
                    .font(
                        .title2
                    )
                    .fontWeight(
                        .bold
                    )
                Text(
                    fruit.headline
                )
                    .font(
                        .caption
                    )
                    .foregroundColor(
                        Color.secondary
                    )
            } //: VSTACK
        } //: HSTACK
    }
}

//MARK: - PREVIEW Section
struct FruitsRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsRowView(fruit: fruitsData[1])
            .previewLayout(
                .sizeThatFits
            )
            .padding()
    }
}
