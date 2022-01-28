//
//  UserManager.swift
//  NikolaevAA_3.3
//
//  Created by Anton Nikolaev on 28.01.2022.
//

import Foundation
import SwiftUI

class UserManager: ObservableObject {
    @AppStorage("isRegister", store: .standard) var isRegister = false
    @AppStorage("name", store: .standard) var name = ""
    
    func isRegistred() {
        isRegister = name.count > 2
    }
    
    init() {
        isRegistred()
    }
    
    deinit {
        isRegistred()
    }
}
