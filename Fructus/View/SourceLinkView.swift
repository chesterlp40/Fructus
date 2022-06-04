//
//  SourceLinkView.swift
//  SourceLinkView
//
//  Created by Ezequiel Rasgido on 11/09/2021.
//

import SwiftUI

struct SourceLinkView: View {
    //MARK: - PROPERTIES Section

    //MARK: - BODY Section
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link(
                    "Wikipedia",
                    destination: URL(
                        string: "https://wikipedia.com"
                    )!
                )
                Image(
                    systemName: "arrow.up.right.square"
                )
            } //: HSTACK
            .font(
                .footnote
            )
        }
    }
}

//MARK: - PREVIEW Section
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(
                .sizeThatFits
            )
            .padding()
    }
}
