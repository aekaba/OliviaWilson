//
//  SingUpButton.swift
//  Olivia Wilson
//
//  Created by Ata emir on 16.10.2022.
//

import SwiftUI

struct SingUpButton: View {
    var onTap: () -> Void
    var body: some View {
        Button{ } label: {
            HStack {
                Spacer()
                Text(LocaleKeys.Auth.createAc.rawValue.locale())
                Spacer()
            }
        }.buttonStyle(.bordered).buttonBorderShape(.roundedRectangle).controlSize(.large).accentColor(.primaryColor)
    }
}
