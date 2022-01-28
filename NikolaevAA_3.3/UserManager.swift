//
//  UserManager.swift
//  NikolaevAA_3.3
//
//  Created by Anton Nikolaev on 28.01.2022.
//

import Foundation
import SwiftUI

class UserManager: ObservableObject {
    @Published var isRegister = false
    @AppStorage("name", store: .standard) var name = ""
}
