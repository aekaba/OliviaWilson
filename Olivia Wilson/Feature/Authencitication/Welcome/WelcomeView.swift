//
//  WelcomeView.swift
//  Olivia Wilson
//
//  Created by Ata emir on 16.10.2022.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image(Images.coat_rack.rawValue).resizable()
            Color.black.opacity(0.5)
            BodyView()
            
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView().ignoresSafeArea(.all)
    }
}




private struct BodyView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                Image(Icons.appLogo.rawValue).resizable().padding(EdgeInsets.paddingAllMedium).frame(width: geometry.dw(widht: 0.9), height: geometry.dh(height: 0.5))
                Spacer()
                Divider().background(Color.primaryColor).padding(EdgeInsets.paddingAllMedium)
                SignInButton(onTap: {})
                SingUpButton(onTap: {})
                Spacer().frame(height: geometry.dh(height: 0.025))
            }.padding(.paddingAllMedium)

        }
            }
}

