//
//  NikolaevAA_3_3App.swift
//  NikolaevAA_3.3
//
//  Created by Anton Nikolaev on 28.01.2022.
//

import SwiftUI

@main
struct NikolaevAA_3_3App: App {
    @StateObject private var userManager = UserManager()
   
    var body: some Scene {
        
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
