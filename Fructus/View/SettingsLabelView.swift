//
//  SettingsLabelView.swift
//  SettingsLabelView
//
//  Created by Ezequiel Rasgido on 11/09/2021.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - PROPERTIES Section

    var labelText: String
    var labelImage: String

    //MARK: - BODY Section
    var body: some View {
        HStack {
            Text(
                labelText.uppercased()
            ).fontWeight(
                .bold
            )
            Spacer()
            Image(
                systemName: labelImage
            )
        }
    }
}

//MARK: - PREVIEW Section
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(
            labelText: "Fructus",
            labelImage: "info.circle"
        )
            .previewLayout(
                .sizeThatFits
            )
            .padding()
    }
}
