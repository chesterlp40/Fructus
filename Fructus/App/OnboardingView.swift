//
//  OnboardingView.swift
//  OnboardingView
//
//  Created by Ezequiel Rasgido on 10/09/2021.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTIES Section

    var fruits: [Fruit] = fruitsData

    //MARK: - BODY Section
    var body: some View {
        TabView {
            ForEach(
                fruits[0...5]
            ) { item in
                FruitCardView(
                    fruit: item
                )
            }//: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(
            .vertical,
            20
        )
    }
}

//MARK: - PREVIEW Section
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(
            fruits: fruitsData
        )
    }
}
