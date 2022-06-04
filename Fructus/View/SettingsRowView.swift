//
//  SettingsRowView.swift
//  SettingsRowView
//
//  Created by Ezequiel Rasgido on 11/09/2021.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - PROPERTIES Section

    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil

    //MARK: - BODY Section
    var body: some View {
        VStack {
            Divider().padding(
                .vertical,
                4
            )
            HStack {
                Text(
                    self.name
                ).foregroundColor(
                    Color.gray
                )
                Spacer()
                if let value = self.content {
                    Text(
                        value
                    )
                } else if
                        let labelValue = self.linkLabel,
                        let urlValue = self.linkDestination
                {
                    Link(
                        labelValue,
                        destination: URL(
                            string: "https://\(urlValue)"
                        )!
                    )
                    Image(
                        systemName: "arrow.up.right.square"
                    ).foregroundColor(
                        .pink
                    )
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        } //: HSTACK
    } //: VSTACK
}

//MARK: - PREVIEW Section
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(
            name: "Developer",
            content: "Ezequiel 'Chester' Rasgido",
            linkLabel: "",
            linkDestination: ""
        )
            .previewLayout(
                .fixed(
                    width: 375,
                    height: 60
                )
            )
            .padding()
    }
}
