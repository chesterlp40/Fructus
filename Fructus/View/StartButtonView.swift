//
//  StartButtonView.swift
//  StartButtonView
//
//  Created by Ezequiel Rasgido on 10/09/2021.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES Section

    @AppStorage("isOnboarding") var isOnboarding: Bool?

    //MARK: - BODY Section
    var body: some View {
        Button(action: {
            self.isOnboarding = false
        }) {
            HStack(
                spacing: 8
            ) {
                Text(
                    "Start"
                )
                Image(
                    systemName: "arrow.right.circle"
                )
                    .imageScale(
                        .large
                    )
            } //: HSTACK
            .padding(
                .horizontal,
                16
            )
            .padding(
                .vertical,
                10
            )
            .background(
                Capsule().strokeBorder(
                    Color.white,
                    lineWidth: 1.25
                )
            )
        } //: BUTTON
        .accentColor(Color.white)

    }
}

//MARK: - PREVIEW Section
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
