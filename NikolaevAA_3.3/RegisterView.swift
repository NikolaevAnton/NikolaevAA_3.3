//
//  RegisterView.swift
//  NikolaevAA_3.3
//
//  Created by Anton Nikolaev on 28.01.2022.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: userManager.$name)
                    .multilineTextAlignment(.center)
                  
                Text("\(userManager.name.count)")
                    .foregroundColor(userManager.name.count < 3 ? Color.red : Color.blue)
                    .padding(.trailing, 50)
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }.disabled(userManager.name.count < 3)
        }
    }
    
    private func registerUser() {
        if userManager.name.count < 3 {
            userManager.isRegister = false
        } else {
            userManager.isRegister = true
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
