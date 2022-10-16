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
            VStack {
                Image(Icons.appLogo.rawValue).resizable().padding(16.0).frame(width: 300, height: 300)
                SignInButton(onTap: {})
                SingUpButton(onTap: {})
            }.padding(.paddingAllMedium)
            
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView().statusBar(hidden: true)
    }
}



