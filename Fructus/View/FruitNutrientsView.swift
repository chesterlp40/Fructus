//
//  FruitNutrientsView.swift
//  FruitNutrientsView
//
//  Created by Ezequiel Rasgido on 11/09/2021.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: - PROPERTIES Section

    var fruit: Fruit
    let nutrients: [String] = [
        "Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"
    ]

    //MARK: - BODY Section
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(
                        .vertical,
                        2
                    )

                    HStack {
                        Group {
                            Image(
                                systemName: "info.circle"
                            )
                            Text(
                                nutrients[item]
                            )
                        }
                        .foregroundColor(
                            fruit.gradientColors[1]
                        )
                        .font(
                            Font.system(
                                .body
                            ).bold()
                        )

                        Spacer(
                            minLength: 25
                        )
                        Text(
                            fruit.nutrition[item]
                        )
                            .multilineTextAlignment(
                                .trailing
                            )
                    } //: HSTACK
                }
            }
        } //: BOX
    }
}

//MARK: - PREVIEW Section
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(
            fruit: fruitsData[1]
        )
            .preferredColorScheme(
                .dark
            )
            .previewLayout(
                .fixed(
                    width: 375,
                    height: 480
                )
            )
            .padding()
    }
}
