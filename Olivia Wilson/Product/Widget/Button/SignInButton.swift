//
//  SignInButton.swift
//  Olivia Wilson
//
//  Created by Ata emir on 16.10.2022.
//

import SwiftUI

struct SignInButton: View {
    var onTap: () -> Void
    var body: some View {
        Button{
            onTap()
        } label: {
            HStack {
                Spacer()
                Text(LocaleKeys.Auth.signIn.rawValue.locale())
                Spacer()
            }.tint(Color.surfaceColor)
        }.buttonStyle(.borderedProminent).buttonBorderShape(.roundedRectangle).controlSize(.large).accentColor(.primaryColor).opacity(0.9)
    }
}
