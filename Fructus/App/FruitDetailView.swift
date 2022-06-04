//
//  FruitDetailView.swift
//  FruitDetailView
//
//  Created by Ezequiel Rasgido on 11/09/2021.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - PROPERTIES Section

    var fruit: Fruit

    //MARK: - BODY Section
    var body: some View {
        NavigationView {
            ScrollView(
                .vertical,
                showsIndicators: true
            ) {
                VStack (
                    alignment: .center,
                    spacing: 20
                ) {
                    // HEADER
                    FruitHeaderView(
                        fruit: fruit
                    )

                    VStack(
                        alignment: .leading,
                        spacing: 20
                    ) {
                        //Title
                        Text(
                            fruit.title
                        )
                            .font(
                                .largeTitle
                            )
                            .fontWeight(
                                .heavy
                            )
                            .foregroundColor(
                                fruit.gradientColors[1]
                            )

                        // HEADLINE
                        Text(
                            fruit.headline
                        )
                            .font(
                                .headline
                            )
                            .multilineTextAlignment(
                                .leading
                            )

                        // NUTRIENTS
                        FruitNutrientsView(
                            fruit: fruit
                        )

                        // SUBHEADLINE
                        Text(
                            "Learn more about \(fruit.title)".uppercased()
                        )
                            .fontWeight(
                                .bold
                            )
                            .foregroundColor(fruit.gradientColors[1])

                        // DESCRIPTION
                        Text(
                            fruit.description
                        )
                            .multilineTextAlignment(.leading)

                        //LINK
                        SourceLinkView()
                            .padding(
                                .top,
                                10
                            )
                            .padding(
                                .bottom,
                                40
                            )

                    }//: VSTACK
                    .padding(
                        .horizontal,
                        20
                    )
                    .frame(
                        maxWidth: 640,
                        alignment: .center
                    )
                }//: VSTACK
                .navigationTitle(
                    fruit.title
                )
                .navigationBarHidden(
                    true
                )
            }//: SCROLL
            .edgesIgnoringSafeArea(
                .top
            )
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: - PREVIEW Section
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(
            fruit: fruitsData[3]
        )
    }
}
