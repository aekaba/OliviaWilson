//
//  LocaleKeys.swift
//  Olivia Wilson
//
//  Created by Ata emir on 21.10.2022.
//

import SwiftUI

struct LocaleKeys {
    enum Auth: String{
        case signIn = "signIn"
        case createAc = "createAccount"
    }
    
    enum onBoard: String{
        case getStart="getStarted"
    }
}

extension String {
    /// It localize any string from Localizable.string
    /// - Returns: LocalValue
    func locale() -> LocalizedStringKey {
        return LocalizedStringKey(self)
    }
}
