//
//  NormalButton.swift
//  Olivia Wilson
//
//  Created by Ata emir on 21.10.2022.
//

import SwiftUI

/// It'a normal button for project
/// [onTap] will return user interaction
/// [title] it showes button name
struct NormalButton: View {
    var onTap: () -> Void
    var title: String
    var body: some View {
        Button{
            onTap()
        } label: {
            HStack {
                Spacer()
                Text(title.locale()).font(.title2).fontWeight(.semibold).multilineTextAlignment(.center)
                    .frame(alignment: .center)
                Spacer()
            }.tint(Color.surfaceColor)
        }.buttonStyle(.borderedProminent).buttonBorderShape(.roundedRectangle).controlSize(.large).accentColor(.primaryColor)
    }
}

struct NormalButton_Previews: PreviewProvider {
    static var previews: some View {
        NormalButton(onTap: {},title: "sadsasda")
    }
}
