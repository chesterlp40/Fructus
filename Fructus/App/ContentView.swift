//
//  ContentView.swift
//  Fructus
//
//  Created by Ezequiel Rasgido on 09/09/2021.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES Section

    @State private var isShowingSettings = false

    var fruits: [Fruit] = fruitsData

    //MARK: - BODY Section
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item)
                    ) {
                        FruitsRowView(
                            fruit: item
                        )
                            .padding(
                                .vertical,
                                4
                            )
                    }
                }
            }
            .navigationTitle(
                "Fruits"
            )
            .toolbar {
                ToolbarItem(
                    placement: .navigationBarTrailing
                ) {
                    Button(action: {
                        self.isShowingSettings = true
                    }) {
                        Image(
                            systemName: "slider.horizontal.3"
                        )
                    } //: BUTTON
                    .sheet(
                        isPresented: $isShowingSettings
                    ) {
                        SettingsView()
                    }
                }
            }
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: - PREVIEW Section
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(
            fruits: fruitsData
        )
    }
}
