//
//  SettingsView.swift
//  SettingsView
//
//  Created by Ezequiel Rasgido on 11/09/2021.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES Section

    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding = false

    //MARK: - BODY Section
    var body: some View {
        NavigationView {
            ScrollView(
                .vertical,
                showsIndicators: true
            ) {
                VStack(
                    spacing: 20
                ) {
                    //MARK: - SECTION 1 Section
                    GroupBox(
                        label: SettingsLabelView(
                            labelText: "Fructus",
                            labelImage: "info.circle"
                        )
                    ) {
                        Divider().padding(
                            .vertical,
                            4
                        )
                        HStack(
                            alignment: .center,
                            spacing: 10
                        ) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(
                                    width: 80,
                                    height: 80
                                )
                                .cornerRadius(9)
                            Text(
                                "Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more."
                            )
                                .font(
                                    .footnote
                                )
                        }
                    } //: BOX

                    //MARK: - SECTION 2 Section
                    GroupBox(
                        label: SettingsLabelView(
                            labelText: "Customization",
                            labelImage: "paintbrush"
                        )
                    ) {
                        Divider().padding(
                            .vertical,
                            4
                        )

                        Text(
                            "If you wish, yo can restart the application by toggle the switch in this box. That way starts the onboarding process and you will see the welcome screen again."
                        )
                            .padding(
                                .vertical,
                                8
                            )
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(
                                .footnote
                            )
                            .multilineTextAlignment(
                                .leading
                            )

                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text(
                                    "Restarted".uppercased()
                                )
                                    .fontWeight(
                                        .bold
                                    )
                                    .foregroundColor(
                                        Color.green
                                    )
                            } else {
                                Text(
                                    "Restart".uppercased()
                                )
                                    .fontWeight(
                                        .bold
                                    )
                                    .foregroundColor(
                                        Color.secondary
                                    )
                            }
                        }
                        .padding()
                        .background(
                            Color(
                                UIColor.tertiarySystemBackground
                            ).clipShape(
                                RoundedRectangle(
                                    cornerRadius: 8,
                                    style: .continuous
                                )
                            )
                        )
                    }

                    //MARK: - SECTION 3 Section
                    GroupBox(
                        label: SettingsLabelView(
                            labelText: "Application",
                            labelImage: "apps.iphone"
                        )
                    ) {
                        SettingsRowView(
                            name: "Developer",
                            content: "32e Inc."
                        )
                        SettingsRowView(
                            name: "Designer",
                            content: "Ezequiel 'Chester' Rasgido"
                        )
                        SettingsRowView(
                            name: "Compatibility",
                            content: "iOS 15"
                        )
                        SettingsRowView(
                            name: "LinkedIn",
                            linkLabel: "Ezequiel Rasgido",
                            linkDestination: "linkedin.com/in/ezequiel-rasgido-444b55b1"
                        )
                        SettingsRowView(
                            name: "Twitter",
                            linkLabel: "@grayshaddix",
                            linkDestination: "twitter.com/grayshaddix"
                        )
                        SettingsRowView(
                            name: "Instagram",
                            linkLabel: "Ezequiel Rasgido",
                            linkDestination: "instagram.com/ezequiel.rasgido"
                        )
                        SettingsRowView(
                            name: "SwiftUI",
                            content: "2.0"
                        )
                        SettingsRowView(
                            name: "Version",
                            content: "1.0.0"
                        )
                    } //: BOX

                } //: VSTACK
                .navigationTitle(
                    Text(
                        "Settings"
                    )
                )
                .toolbar {
                    ToolbarItem(
                        placement: .navigationBarTrailing
                    ) {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(
                                systemName: "xmark"
                            )
                        }
                    }
                }
                .padding()
            } //: SCROLL
        } //: NAVIGATION

    }
}

//MARK: - PREVIEW Section
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(
                .dark
            )
    }
}
